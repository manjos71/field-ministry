import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../config/app_localizations.dart';
import '../providers/territory_provider.dart';
import '../models/models.dart';
import '../widgets/stats_grid.dart';
import 'package:url_launcher/url_launcher.dart';

class CardTab extends ConsumerStatefulWidget {
  const CardTab({super.key});

  @override
  ConsumerState<CardTab> createState() => _CardTabState();
}

class _CardTabState extends ConsumerState<CardTab> {
  int? _expandedIndex;

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
                if (interestedItems.isEmpty)
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
              ],
            ),
          );
        },
      ),
    );
  }

  List<Widget> _buildInterestedCards(List<_InterestedItem> items) {
    return items.map((item) {
      final index = items.indexOf(item);
      final isExpanded = index == _expandedIndex;
      
      return Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: _InterestedStackCard(
          item: item,
          isExpanded: isExpanded,
          onTap: () {
            setState(() {
              _expandedIndex = isExpanded ? null : index;
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
}

class _InterestedStackCard extends StatelessWidget {
  final _InterestedItem item;
  final bool isExpanded;
  final VoidCallback onTap;

  const _InterestedStackCard({
    required this.item,
    required this.isExpanded,
    required this.onTap,
  });

  Color _getUrgencyColor(int days) {
    if (days > 14) return Colors.red;
    if (days > 7) return Colors.orange;
    return Colors.green;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final days = DateTime.now().difference(item.lastVisit.date).inDays;
    final catIconPath = item.lastVisit.personCategory?.getIconPath(item.lastVisit.gender);

    // The header height is what's visible when collapsed.
    // The total height includes the body.
    
    return GestureDetector(
      onTap: onTap,
      child: Card(
        // Use higher elevation for expanded to "pop" visually
        elevation: isExpanded ? 8 : 4,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: isExpanded ? BorderSide(color: theme.primaryColor.withOpacity(0.5), width: 1.5) : BorderSide.none,
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            // HEADING (Always Visible - The "Tab")
            Container(
              height: 120,
              color: isExpanded ? theme.primaryColor.withOpacity(0.05) : theme.cardColor,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                         BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 4, offset: const Offset(0, 2)),
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
                        // Status/Days indicator (Visible at bottom of header)
                        Row(
                          children: [
                             Icon(Icons.access_time, size: 14, color: _getUrgencyColor(days)),
                             const SizedBox(width: 4),
                             Text(
                               '$days dias',
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
            
            // BODY (Visible only when expanded — collapsed cards show header only)
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
                        style: theme.textTheme.labelSmall?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 4),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.secondaryContainer,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: theme.colorScheme.secondaryContainer.withOpacity(0.7)),
                        ),
                        child: Text(
                          item.lastVisit.notes!,
                          style: TextStyle(color: theme.colorScheme.onSecondaryContainer),
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
                              'https://www.google.com/maps/search/?api=1&query=${Uri.encodeComponent("${item.street.name}, ${item.address.number}")}',
                            ));
                          },
                          icon: const Icon(Icons.map_outlined),
                          tooltip: 'Abrir mapa',
                        ),
                        const SizedBox(width: 8),
                        IconButton(
                          onPressed: () {
                            final query = Uri.encodeComponent('${item.street.name}, ${item.address.number}');
                            launchUrl(Uri.parse('https://www.google.com/maps/dir/?api=1&destination=$query'));
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
