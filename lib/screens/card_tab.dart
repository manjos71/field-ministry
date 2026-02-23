import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../config/app_localizations.dart';
import '../providers/territory_provider.dart';
import '../providers/service_timer_provider.dart';
import '../models/models.dart';
import '../widgets/stats_grid.dart';
import 'package:url_launcher/url_launcher.dart';

class CardTab extends ConsumerStatefulWidget {
  const CardTab({super.key});

  @override
  ConsumerState<CardTab> createState() => _CardTabState();
}

class _CardTabState extends ConsumerState<CardTab> {
  String? _expandedAddressId;

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

          final interestedItems = _getInterestedItems(territories);
          final bibleStudyItems = _getBibleStudyItems(territories);

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
                  l10n.interested,
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
                        const Icon(Icons.star_border, size: 48, color: Colors.grey),
                        const SizedBox(height: 12),
                        Text(
                          l10n.noInterested,
                          style: const TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  )
                else
                  ..._buildInterestedCards(interestedItems),

                if (bibleStudyItems.isNotEmpty) ...[
                  const SizedBox(height: 24),
                  // Título da seção de Estudos Bíblicos
                  const Text(
                    'Estudos Bíblicos 📖',
                    style: TextStyle(
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
          onTap: () {
            setState(() {
              _expandedAddressId = isExpanded ? null : item.address.id;
            });
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
          onTap: () {
            setState(() {
              _expandedAddressId = isExpanded ? null : item.address.id;
            });
          },
        ),
      );
    }).toList();
  }

  List<_InterestedItem> _getInterestedItems(List<Territory> territories) {
    final items = <_InterestedItem>[];

    for (var t in territories) {
      if (t.isArchived) continue;
      for (var s in t.streets) {
        for (var a in s.addresses) {
          final lastVisit = a.lastVisit;
          if (lastVisit != null &&
              (lastVisit.status == VisitStatus.interested ||
                  lastVisit.status == VisitStatus.returnVisit)) {
            items.add(_InterestedItem(
              territory: t,
              street: s,
              address: a,
              lastVisit: lastVisit,
            ));
          }
        }
      }
    }
    
    // Sort by date (most recent first)
    items.sort((a, b) => b.lastVisit.date.compareTo(a.lastVisit.date));
    return items;
  }

  List<_InterestedItem> _getBibleStudyItems(List<Territory> territories) {
    final items = <_InterestedItem>[];

    for (var t in territories) {
      if (t.isArchived) continue;
      for (var s in t.streets) {
        for (var a in s.addresses) {
          final lastVisit = a.lastVisit;
          if (lastVisit != null && lastVisit.status == VisitStatus.bibleStudy) {
            items.add(_InterestedItem(
              territory: t,
              street: s,
              address: a,
              lastVisit: lastVisit,
            ));
          }
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

  const _InterestedStackCard({
    required this.item,
    required this.isExpanded,
    required this.isBibleStudy,
    required this.onTap,
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
    final catIconPath = item.lastVisit.personCategory?.getIconPath(item.lastVisit.gender);

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
                          border: Border.all(color: Theme.of(context).dividerColor),
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
                                  errorBuilder: (_, __, ___) => const Icon(Icons.person),
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
                          item.lastVisit.personName?.isNotEmpty == true
                              ? item.lastVisit.personName!
                              : 'Sem nome',
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
                            Icon(Icons.access_time, size: 14, color: _getUrgencyColor(days)),
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
                        ),
                      ],
                    ),
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
                        'Notas:',
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

                    // ── Checkbox Estudo Bíblico (só para Interessados) ──
                    if (!isBibleStudy) ...[
                      const Divider(),
                      InkWell(
                        onTap: () async {
                          await ref
                              .read(territoriesProvider.notifier)
                              .addVisit(
                                territoryId: item.territory.id,
                                streetId: item.street.id,
                                addressId: item.address.id,
                                status: VisitStatus.bibleStudy,
                                personName: item.lastVisit.personName,
                                date: DateTime.now(),
                                personCategory: item.lastVisit.personCategory,
                                gender: item.lastVisit.gender,
                              );
                          ref
                              .read(monthlyServiceTimeProvider.notifier)
                              .incrementBibleStudyCount();
                          if (context.mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  '📖 Movido para Estudos Bíblicos!',
                                ),
                                duration: Duration(seconds: 2),
                              ),
                            );
                          }
                        },
                        borderRadius: BorderRadius.circular(8),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 4,
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xFF673AB7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Center(
                                  child: Text('📖', style: TextStyle(fontSize: 12)),
                                ),
                              ),
                              const SizedBox(width: 12),
                              const Text(
                                'Promover a Estudo Bíblico',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF673AB7),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
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
                          tooltip: 'Abrir mapa',
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
                          tooltip: 'Ir',
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

  _InterestedItem({
    required this.territory,
    required this.street,
    required this.address,
    required this.lastVisit,
  });
}
