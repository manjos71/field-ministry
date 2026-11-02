import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../config/app_localizations.dart';
import '../providers/territory_provider.dart';
import '../models/models.dart';
import '../widgets/stats_grid.dart';
import '../widgets/overlap_stack.dart';
import 'street_detail_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class CardTab extends ConsumerStatefulWidget {
  const CardTab({super.key});

  @override
  ConsumerState<CardTab> createState() => _CardTabState();
}

class _CardTabState extends ConsumerState<CardTab> {
  String? _expandedInterestedAddressId;
  String? _expandedBibleStudyAddressId;

  bool _isRevisitAnchorStatus(VisitStatus status) {
    return status == VisitStatus.interested ||
        status == VisitStatus.returnVisit ||
        status == VisitStatus.bibleStudy;
  }

  bool _isNonInteractionStatus(VisitStatus status) {
    return status == VisitStatus.notHome ||
        status == VisitStatus.notAnswered ||
        status == VisitStatus.emptyHouse;
  }

  bool _isInteractionStatus(VisitStatus status) {
    return status != VisitStatus.unvisited && !_isNonInteractionStatus(status);
  }

  bool _visitHadInteraction(Visit visit) {
    return visit.hadInteraction ?? _isInteractionStatus(visit.status);
  }

  int _completedRevisits(Address address) {
    final visits = [...address.visits]
      ..sort((a, b) => a.date.compareTo(b.date));
    final firstAnchorIndex =
        visits.indexWhere((v) => _isRevisitAnchorStatus(v.status));
    if (firstAnchorIndex == -1) return 0;

    var completed = 0;
    for (int i = firstAnchorIndex + 1; i < visits.length; i++) {
      if (_visitHadInteraction(visits[i])) {
        completed++;
      }
    }
    return completed;
  }

  Visit? _interestAnchorVisit(Address address) {
    if (address.visits.isEmpty) return null;
    final visits = [...address.visits]
      ..sort((a, b) => a.date.compareTo(b.date));
    final anchorIndex =
        visits.indexWhere((v) => _isRevisitAnchorStatus(v.status));
    if (anchorIndex == -1) return null;
    return visits[anchorIndex];
  }

  Visit? _promotedBibleStudyChild(Address address) {
    if (address.visits.isEmpty) return null;

    final visits = [...address.visits]
      ..sort((a, b) => a.date.compareTo(b.date));

    for (int i = visits.length - 1; i >= 0; i--) {
      final child = visits[i];
      if (child.status != VisitStatus.bibleStudy) continue;
      if (child.parentId == null) continue;

      final parentIndex =
          visits.indexWhere((v) => v.id == child.parentId);
      if (parentIndex == -1) continue;
      final parent = visits[parentIndex];
      if (parent.status != VisitStatus.interested &&
          parent.status != VisitStatus.returnVisit) {
        continue;
      }

      return child;
    }

    return null;
  }

  bool _isPromotedToBibleStudy(Address address) {
    return _promotedBibleStudyChild(address) != null;
  }

  Visit? _lastRelevantVisitForInterested(Address address) {
    if (address.visits.isEmpty) return null;
    final visits = [...address.visits]
      ..sort((a, b) => a.date.compareTo(b.date));

    final anchorIndex =
        visits.indexWhere((v) => _isRevisitAnchorStatus(v.status));
    if (anchorIndex == -1) return address.lastVisit;

    for (int i = visits.length - 1; i >= anchorIndex; i--) {
      if (_visitHadInteraction(visits[i])) return visits[i];
    }

    return visits[anchorIndex];
  }

  String _currentRevisitStageLabel(Address address, AppLocalizations l10n) {
    final completed = _completedRevisits(address);
    if (completed <= 0) return l10n.revisitStage1;
    if (completed == 1) return l10n.revisitStage2;
    return l10n.revisitStageCompleted;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final territoriesAsync = ref.watch(territoriesProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.card),
      ),
      body: territoriesAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, s) => Center(child: Text(l10n.errorMessage(e.toString()))),
        data: (territories) {
          // Calcular estatísticas
          int totalVisits = 0;
          int interestedCount = 0;
          int territoriesCount = territories.where((t) => !t.isArchived).length;

          for (var t in territories) {
            if (t.isArchived) continue;
            for (var s in t.streets) {
              for (var a in s.addresses) {
                totalVisits += a.visitCount;
                if (a.currentStatus.index == 4) {
                  interestedCount++;
                }
              }
            }
          }

          final interestedItems = _getInterestedItems(territories, l10n);
          final bibleStudyItems = _getBibleStudyItems(territories, l10n);

          if (_expandedInterestedAddressId == null &&
              interestedItems.isNotEmpty) {
            _expandedInterestedAddressId = interestedItems.first.address.id;
          }

          if (_expandedBibleStudyAddressId == null &&
              bibleStudyItems.isNotEmpty) {
            _expandedBibleStudyAddressId = bibleStudyItems.first.address.id;
          }

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Cards de estatísticas
                StatsGrid(
                  territoriesCount: territoriesCount,
                  interestedCount: interestedCount,
                  visitsCount: totalVisits,
                ),
                const SizedBox(height: 24),

                // Título da seção de interessados
                Text(
                  l10n.interestedPlural,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),

                // Lista de interessados
                if (interestedItems.isEmpty && bibleStudyItems.isEmpty)
                  Container(
                    padding: const EdgeInsets.all(32),
                    child: Column(
                      children: [
                        const Icon(Icons.star_border,
                            size: 48, color: Colors.grey),
                        const SizedBox(height: 12),
                        Text(
                          l10n.noInterested,
                          style:
                              const TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  )
                else ...[
                  if (interestedItems.isNotEmpty)
                    _buildInterestedStack(interestedItems),
                  if (bibleStudyItems.isNotEmpty) ...[
                    const SizedBox(height: 28),
                    // Título da seção de Estudos Bíblicos
                    Text(
                      l10n.bibleStudiesTitle,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    _buildBibleStudyStack(bibleStudyItems),
                  ],
                ],
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildInterestedStack(List<_InterestedItem> items) {
    final activeIndex = items.indexWhere(
      (item) => item.address.id == _expandedInterestedAddressId,
    );

    return OverlapStack(
      overlap: 12.0,
      activeIndex: activeIndex >= 0 ? activeIndex : null,
      children: items.asMap().entries.map((entry) {
        final index = entry.key;
        final item = entry.value;
        final isExpanded = index == activeIndex;
        return _InterestedStackCard(
          key: ValueKey(item.address.id),
          item: item,
          isExpanded: isExpanded,
          isBibleStudy: false,
          onHeaderTap: () {
            setState(() {
              _expandedInterestedAddressId =
                  isExpanded ? null : item.address.id;
            });
          },
          onActionTap: () => _openAddress(item),
        );
      }).toList(),
    );
  }

  Widget _buildBibleStudyStack(List<_InterestedItem> items) {
    final activeIndex = items.indexWhere(
      (item) => item.address.id == _expandedBibleStudyAddressId,
    );

    return OverlapStack(
      overlap: 12.0,
      activeIndex: activeIndex >= 0 ? activeIndex : null,
      children: items.asMap().entries.map((entry) {
        final index = entry.key;
        final item = entry.value;
        final isExpanded = index == activeIndex;
        return _InterestedStackCard(
          key: ValueKey(item.address.id),
          item: item,
          isExpanded: isExpanded,
          isBibleStudy: true,
          onHeaderTap: () {
            setState(() {
              _expandedBibleStudyAddressId =
                  isExpanded ? null : item.address.id;
            });
          },
          onActionTap: () => _openAddress(item),
        );
      }).toList(),
    );
  }

  void _openAddress(_InterestedItem item) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => StreetDetailScreen(
          territoryId: item.territory.id,
          streetId: item.street.id,
          initialAddressId: item.address.id,
        ),
      ),
    );
  }

  List<_InterestedItem> _getInterestedItems(
    List<Territory> territories,
    AppLocalizations l10n,
  ) {
    final items = <_InterestedItem>[];

    for (var t in territories) {
      if (t.isArchived) continue;
      for (var s in t.streets) {
        for (var a in s.addresses) {
          final anchor = _interestAnchorVisit(a);
          if (anchor == null) continue;
          if (anchor.status != VisitStatus.interested &&
              anchor.status != VisitStatus.returnVisit) {
            continue;
          }

          final lastVisit = _lastRelevantVisitForInterested(a) ?? a.lastVisit;
          if (lastVisit == null) continue;

            items.add(_InterestedItem(
              territory: t,
              street: s,
              address: a,
              lastVisit: lastVisit,
              revisitStage: _currentRevisitStageLabel(a, l10n),
            ));
        }
      }
    }

    // Sort by date (most recent first)
    items.sort((a, b) => b.lastVisit.date.compareTo(a.lastVisit.date));
    return items;
  }

  List<_InterestedItem> _getBibleStudyItems(
    List<Territory> territories,
    AppLocalizations l10n,
  ) {
    final items = <_InterestedItem>[];

    for (var t in territories) {
      if (t.isArchived) continue;
      for (var s in t.streets) {
        for (var a in s.addresses) {
          final anchor = _interestAnchorVisit(a);
          if (anchor == null) continue;
          if (anchor.status != VisitStatus.bibleStudy) continue;

          final lastVisit = _lastRelevantVisitForInterested(a) ?? a.lastVisit;
          if (lastVisit == null) continue;

            items.add(_InterestedItem(
              territory: t,
              street: s,
              address: a,
              lastVisit: lastVisit,
              revisitStage: _currentRevisitStageLabel(a, l10n),
            ));
        }
      }
    }

    // Sort by date (most recent first)
    items.sort((a, b) => b.lastVisit.date.compareTo(a.lastVisit.date));
    return items;
  }
}

class _InterestedStackCard extends ConsumerWidget {
  final _InterestedItem item;
  final bool isExpanded;
  final bool isBibleStudy;
  final VoidCallback onHeaderTap;
  final VoidCallback onActionTap;

  const _InterestedStackCard({
    required this.item,
    required this.isExpanded,
    required this.isBibleStudy,
    required this.onHeaderTap,
    required this.onActionTap,
  });

  Color _getUrgencyColor(int days) {
    if (days > 14) return Colors.red;
    if (days > 7) return Colors.orange;
    return Colors.green;
  }

  String _resolvePersonName(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    if (item.lastVisit.personName?.isNotEmpty == true) {
      return item.lastVisit.personName!;
    }
    if (item.lastVisit.parentId != null) {
      try {
        final parent = item.address.visits
            .firstWhere((v) => v.id == item.lastVisit.parentId);
        if (parent.personName?.isNotEmpty == true) {
          return parent.personName!;
        }
      } catch (_) {}
    }
    try {
      return item.address.visits
          .firstWhere((v) => v.personName?.isNotEmpty == true)
          .personName!;
    } catch (_) {}

    return l10n.noName;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final days = DateTime.now().difference(item.lastVisit.date).inDays;
    final personName = _resolvePersonName(context);

    // Herdar metadados (categoria e gênero) do pai ou de outros registros no endereço
    final personCategory = item.lastVisit.personCategory ?? () {
      if (item.lastVisit.parentId != null) {
        try {
          return item.address.visits
              .firstWhere((v) => v.id == item.lastVisit.parentId)
              .personCategory;
        } catch (_) {}
      }
      try {
        return item.address.visits
            .firstWhere((v) => v.personCategory != null)
            .personCategory;
      } catch (_) {}
      return null;
    }();

    final gender = item.lastVisit.gender ?? () {
      if (item.lastVisit.parentId != null) {
        try {
          return item.address.visits
              .firstWhere((v) => v.id == item.lastVisit.parentId)
              .gender;
        } catch (_) {}
      }
      try {
        return item.address.visits
            .firstWhere((v) => v.gender != null)
            .gender;
      } catch (_) {}
      return null;
    }();

    final catIconPath = personCategory?.getIconPath(gender);

    final cardBg = isDark ? const Color(0xFF404040) : Colors.white;
    final cardBorder = isDark ? Colors.white12 : Colors.grey.shade300;
    final accentColor =
        isBibleStudy ? const Color(0xFF7E57C2) : theme.primaryColor;

    return Container(
      decoration: BoxDecoration(
        color: cardBg,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isExpanded ? accentColor.withOpacity(0.7) : cardBorder,
          width: isExpanded ? 1.5 : 1.0,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(isDark ? (isExpanded ? 0.45 : 0.25) : (isExpanded ? 0.14 : 0.06)),
            blurRadius: isExpanded ? 10 : 4,
            offset: Offset(0, isExpanded ? 4 : 2),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          // 1. HEADER (Espaço do nome - onde o clique assume a sobreposição)
          InkWell(
            onTap: onHeaderTap,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      personName,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: isDark
                            ? Colors.white.withOpacity(0.92)
                            : Colors.black87,
                        letterSpacing: 0.2,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  if (!isExpanded) ...[
                    Icon(
                      Icons.access_time,
                      size: 14,
                      color: _getUrgencyColor(days),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      l10n.daysCount(days),
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: _getUrgencyColor(days),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),

          // Linha divisória horizontal logo abaixo do nome (estética idêntica à imagem 1)
          Divider(
            height: 1,
            thickness: 1,
            color: isDark ? Colors.white12 : Colors.grey.shade200,
          ),

          // Espaço de sobreposição quando recolhido para o próximo card iniciar na divisória
          if (!isExpanded) const SizedBox(height: 12),

          // 2. CORPO DO CARD (Aparece apenas quando o card está expandido na sobreposição)
          if (isExpanded)
            GestureDetector(
              onTap: onActionTap,
              behavior: HitTestBehavior.opaque,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Linha Avatar + Dias (Grande destaque, igual Ministry Assistant)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Avatar circular
                        Stack(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                color: isBibleStudy
                                    ? const Color(0xFF673AB7)
                                    : (catIconPath != null
                                        ? (isDark
                                            ? Colors.grey.shade800
                                            : Colors.grey.shade200)
                                        : const Color(0xFFE53935)), // Vermelho da imagem 1
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 4,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              alignment: Alignment.center,
                              child: catIconPath != null
                                  ? ClipOval(
                                      child: Image.asset(
                                        catIconPath,
                                        width: 44,
                                        height: 44,
                                        fit: BoxFit.cover,
                                        errorBuilder: (_, __, ___) =>
                                            const Icon(Icons.person,
                                                size: 36, color: Colors.white),
                                      ),
                                    )
                                  : const Icon(Icons.person,
                                      size: 36, color: Colors.white),
                            ),
                            if (isBibleStudy)
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.amber.shade700,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.white, width: 1.5),
                                  ),
                                  child: const Center(
                                    child: Text('📖',
                                        style: TextStyle(fontSize: 10)),
                                  ),
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(width: 16),

                        // Dias em fonte grande + badge de estágio
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                l10n.daysCount(days),
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400,
                                  color: isDark
                                      ? Colors.white.withOpacity(0.92)
                                      : Colors.black87,
                                  letterSpacing: -0.5,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 3),
                                decoration: BoxDecoration(
                                  color: (isBibleStudy
                                          ? const Color(0xFF673AB7)
                                          : Colors.blue)
                                      .withOpacity(0.15),
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: (isBibleStudy
                                            ? const Color(0xFF673AB7)
                                            : Colors.blue)
                                        .withOpacity(0.4),
                                  ),
                                ),
                                child: Text(
                                  item.revisitStage,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: isBibleStudy
                                        ? const Color(0xFFB39DDB)
                                        : Colors.blue.shade300,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    // Endereço
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 18,
                          color: isDark ? Colors.white70 : Colors.grey.shade700,
                        ),
                        const SizedBox(width: 6),
                        Expanded(
                          child: Text(
                            '${item.street.name}, ${item.address.number}${item.territory.neighborhood.isNotEmpty ? ' - ${item.territory.neighborhood}' : ''}',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: isDark
                                  ? Colors.white.withOpacity(0.85)
                                  : Colors.black87,
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Notas / Observações
                    if (item.lastVisit.notes?.isNotEmpty == true) ...[
                      const SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: isDark ? Colors.black26 : Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color:
                                isDark ? Colors.white12 : Colors.grey.shade300,
                          ),
                        ),
                        child: Text(
                          item.lastVisit.notes!,
                          style: TextStyle(
                            fontSize: 14,
                            color: isDark ? Colors.white70 : Colors.black87,
                            height: 1.3,
                          ),
                        ),
                      ),
                    ],

                    const SizedBox(height: 14),

                    // Ações: Mapas, Navegação GPS e Botão "+" idêntico à imagem 1
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {
                            launchUrl(Uri.parse(
                              'https://www.google.com/maps/search/?api=1&query='
                              '${Uri.encodeComponent('${item.street.name}, ${item.address.number}')}',
                            ));
                          },
                          icon: const Icon(Icons.map_outlined),
                          tooltip: l10n.openMaps,
                          color: isDark ? Colors.white70 : Colors.grey.shade700,
                        ),
                        const SizedBox(width: 4),
                        IconButton(
                          onPressed: () {
                            final query = Uri.encodeComponent(
                              '${item.street.name}, ${item.address.number}',
                            );
                            launchUrl(Uri.parse(
                              'https://www.google.com/maps/dir/?api=1&destination=$query',
                            ));
                          },
                          icon: const Icon(Icons.navigation_outlined),
                          tooltip: l10n.navigate,
                          color: isDark ? Colors.white70 : Colors.grey.shade700,
                        ),
                        const SizedBox(width: 12),
                        // Botão circular "+" (estilo Ministry Assistant da imagem 1)
                        GestureDetector(
                          onTap: onActionTap,
                          child: Container(
                            width: 44,
                            height: 44,
                            decoration: const BoxDecoration(
                              color: Color(0xFF009688), // Teal da imagem 1
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 4,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                            child: const Icon(Icons.add,
                                color: Colors.white, size: 26),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _InterestedItem {
  final Territory territory;
  final Street street;
  final Address address;
  final Visit lastVisit;
  final String revisitStage;

  _InterestedItem({
    required this.territory,
    required this.street,
    required this.address,
    required this.lastVisit,
    required this.revisitStage,
  });
}
