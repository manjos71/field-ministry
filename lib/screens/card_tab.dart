import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../config/app_localizations.dart';
import '../providers/territory_provider.dart';
import '../models/models.dart';
import '../widgets/stats_grid.dart';
import 'street_detail_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class CardTab extends ConsumerStatefulWidget {
  const CardTab({super.key});

  @override
  ConsumerState<CardTab> createState() => _CardTabState();
}

class _CardTabState extends ConsumerState<CardTab> {
  String? _expandedAddressId;

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
                else
                  ..._buildInterestedCards(interestedItems),

                if (bibleStudyItems.isNotEmpty) ...[
                  const SizedBox(height: 24),
                  // Título da seção de Estudos Bíblicos
                  Text(
                    l10n.bibleStudiesTitle,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  ..._buildBibleStudyCards(bibleStudyItems),
                ],
              ],
            ),
          );
        },
      ),
    );
  }

  List<Widget> _buildInterestedCards(List<_InterestedItem> items) {
    return items.map((item) {
      final isExpanded = item.address.id == _expandedAddressId;
      return Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: _InterestedStackCard(
          item: item,
          isExpanded: isExpanded,
          isBibleStudy: false,
          onToggleExpand: () {
            setState(() {
              _expandedAddressId = isExpanded ? null : item.address.id;
            });
          },
          onTap: () {
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
          },
        ),
      );
    }).toList();
  }

  List<Widget> _buildBibleStudyCards(List<_InterestedItem> items) {
    return items.map((item) {
      final isExpanded = item.address.id == _expandedAddressId;
      return Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: _InterestedStackCard(
          item: item,
          isExpanded: isExpanded,
          isBibleStudy: true,
          onToggleExpand: () {
            setState(() {
              _expandedAddressId = isExpanded ? null : item.address.id;
            });
          },
          onTap: () {
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
          },
        ),
      );
    }).toList();
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
  final VoidCallback onTap;
  final VoidCallback onToggleExpand;

  const _InterestedStackCard({
    required this.item,
    required this.isExpanded,
    required this.isBibleStudy,
    required this.onTap,
    required this.onToggleExpand,
  });

  Color _getUrgencyColor(int days) {
    if (days > 14) return Colors.red;
    if (days > 7) return Colors.orange;
    return Colors.green;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final days = DateTime.now().difference(item.lastVisit.date).inDays;
    
    // Herdar metadados (categoria e gênero) do pai ou de outros registros no endereço
    final personCategory = item.lastVisit.personCategory ?? () {
      if (item.lastVisit.parentId != null) {
        try {
          return item.address.visits.firstWhere((v) => v.id == item.lastVisit.parentId).personCategory;
        } catch (_) {}
      }
      try {
        return item.address.visits.firstWhere((v) => v.personCategory != null).personCategory;
      } catch (_) {}
      return null;
    }();

    final gender = item.lastVisit.gender ?? () {
      if (item.lastVisit.parentId != null) {
        try {
          return item.address.visits.firstWhere((v) => v.id == item.lastVisit.parentId).gender;
        } catch (_) {}
      }
      try {
        return item.address.visits.firstWhere((v) => v.gender != null).gender;
      } catch (_) {}
      return null;
    }();

    final catIconPath = personCategory?.getIconPath(gender);

    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: isExpanded ? 8 : 4,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: isExpanded
              ? BorderSide(
                  color: isBibleStudy
                      ? const Color(0xFF673AB7).withOpacity(0.5)
                      : theme.primaryColor.withOpacity(0.5),
                  width: 1.5,
                )
              : BorderSide.none,
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            // HEADING
            Container(
              height: 120,
              color: isExpanded
                  ? (isBibleStudy
                      ? const Color(0xFF673AB7).withOpacity(0.05)
                      : theme.primaryColor.withOpacity(0.05))
                  : theme.cardColor,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: theme.cardColor,
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: Theme.of(context).dividerColor),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: catIconPath != null
                            ? ClipOval(
                                child: Image.asset(
                                  catIconPath,
                                  width: 36,
                                  height: 36,
                                  fit: BoxFit.cover,
                                  errorBuilder: (_, __, ___) =>
                                      const Icon(Icons.person),
                                ),
                              )
                            : const Icon(Icons.person),
                      ),
                      if (isBibleStudy)
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            width: 18,
                            height: 18,
                            decoration: const BoxDecoration(
                              color: Color(0xFF673AB7),
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Text('📖', style: TextStyle(fontSize: 10)),
                            ),
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          () {
                            if (item.lastVisit.personName?.isNotEmpty == true) {
                              return item.lastVisit.personName!;
                            }
                            // Se for um child, buscar nome do pai
                            if (item.lastVisit.parentId != null) {
                              try {
                                final parent = item.address.visits.firstWhere(
                                    (v) => v.id == item.lastVisit.parentId);
                                if (parent.personName?.isNotEmpty == true) {
                                  return parent.personName!;
                                }
                              } catch (_) {}
                            }
                            // Se não achou por ID, pegar o primeiro que tiver nome no endereço
                            try {
                              return item.address.visits
                                  .firstWhere((v) =>
                                      v.personName?.isNotEmpty == true)
                                  .personName!;
                            } catch (_) {}

                            return l10n.noName;
                          }(),
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '${item.street.name}, ${item.address.number}',
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: Colors.grey[600],
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Icon(Icons.access_time,
                                size: 14, color: _getUrgencyColor(days)),
                            const SizedBox(width: 4),
                            Text(
                              l10n.daysCount(days),
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: _getUrgencyColor(days),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 2),
                              decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(0.12),
                                borderRadius: BorderRadius.circular(999),
                                border: Border.all(
                                    color: Colors.blue.withOpacity(0.3)),
                              ),
                              child: Text(
                                item.revisitStage,
                                style: const TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: onToggleExpand,
                    icon: Icon(
                      isExpanded ? Icons.expand_less : Icons.expand_more,
                    ),
                    tooltip:
                        isExpanded ? l10n.collapseDetails : l10n.expandDetails,
                  ),
                ],
              ),
            ),

            // BODY (expanded)
            if (isExpanded)
              Container(
                color: theme.cardColor,
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(),
                    if (item.lastVisit.notes?.isNotEmpty == true) ...[
                      const SizedBox(height: 8),
                      Text(
                        l10n.notesLabel,
                        style: theme.textTheme.labelSmall
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 4),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.secondaryContainer,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: theme.colorScheme.secondaryContainer
                                .withOpacity(0.7),
                          ),
                        ),
                        child: Text(
                          item.lastVisit.notes!,
                          style: TextStyle(
                            color: theme.colorScheme.onSecondaryContainer,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                    ],

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
                        ),
                        const SizedBox(width: 8),
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
                        ),
                      ],
                    ),
                  ],
                ),
              ),
          ],
        ),
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
