import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/territory_provider.dart';
import '../models/models.dart';
import 'territory_detail_screen.dart';
import '../config/app_localizations.dart';

class TerritoryListScreen extends ConsumerWidget {
  const TerritoryListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final territoriesAsync = ref.watch(territoriesProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.territories),
        actions: [
          IconButton(
            icon: const Icon(Icons.archive_outlined),
            onPressed: () => _showArchivedTerritories(context, ref),
            tooltip: l10n.archived,
          ),
        ],
      ),
      body: territoriesAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 48, color: Colors.red),
              const SizedBox(height: 16),
              Text(l10n.errorLoading(error.toString())),
              ElevatedButton(
                onPressed: () => ref.read(territoriesProvider.notifier).refresh(),
                child: Text(l10n.tryAgain),
              ),
            ],
          ),
        ),
        data: (territories) {
          final active = territories.where((t) => !t.isArchived).toList();
          
          if (active.isEmpty) {
            return _buildEmptyState(context, ref);
          }

          return RefreshIndicator(
            onRefresh: () => ref.read(territoriesProvider.notifier).refresh(),
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 8),
              itemCount: active.length,
              itemBuilder: (context, index) {
                return _TerritoryCard(territory: active[index]);
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _showAddTerritoryDialog(context, ref),
        icon: const Icon(Icons.add),
        label: Text(l10n.territory),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.map_outlined,
              size: 80,
              color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
            ),
            const SizedBox(height: 24),
            Text(
              l10n.noTerritory,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              l10n.tapToCreateTerritory,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 32),
            ElevatedButton.icon(
              onPressed: () => _showAddTerritoryDialog(context, ref),
              icon: const Icon(Icons.add),
              label: Text(l10n.createTerritory),
            ),
          ],
        ),
      ),
    );
  }

  void _showAddTerritoryDialog(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final nameController = TextEditingController();
    final neighborhoodController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.newTerritory),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
              autofocus: true,
              decoration: InputDecoration(
                labelText: l10n.territoryName,
                hintText: 'Ex: Territory 01',
              ),
              textCapitalization: TextCapitalization.words,
            ),
            const SizedBox(height: 16),
            TextField(
              controller: neighborhoodController,
              decoration: InputDecoration(
                labelText: l10n.neighborhoodOptional,
                hintText: 'Ex: Downtown',
              ),
              textCapitalization: TextCapitalization.words,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () async {
              if (nameController.text.trim().isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(l10n.enterTerritoryName)),
                );
                return;
              }

              Navigator.pop(context);
              
              await ref.read(territoriesProvider.notifier).addTerritory(
                name: nameController.text.trim(),
                neighborhood: neighborhoodController.text.trim().isEmpty
                    ? null
                    : neighborhoodController.text.trim(),
              );

              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(l10n.territoryCreated)),
                );
              }
            },
            child: Text(l10n.create),
          ),
        ],
      ),
    );
  }

  void _showArchivedTerritories(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final archived = ref.read(archivedTerritoriesProvider);
    
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.5,
        minChildSize: 0.3,
        maxChildSize: 0.9,
        expand: false,
        builder: (context, scrollController) => Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  const Icon(Icons.archive),
                  const SizedBox(width: 8),
                  Text(
                    l10n.archivedTerritories,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
            ),
            const Divider(height: 1),
            Expanded(
              child: archived.isEmpty
                  ? Center(child: Text(l10n.noArchivedTerritories))
                  : ListView.builder(
                      controller: scrollController,
                      itemCount: archived.length,
                      itemBuilder: (context, index) {
                        final territory = archived[index];
                        return ListTile(
                          title: Text(territory.name),
                          subtitle: territory.neighborhood != null
                              ? Text(territory.neighborhood!)
                              : null,
                          trailing: IconButton(
                            icon: const Icon(Icons.unarchive),
                            onPressed: () {
                              ref
                                  .read(territoriesProvider.notifier)
                                  .toggleArchive(territory.id);
                              Navigator.pop(context);
                            },
                            tooltip: l10n.unarchive,
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }


}

class _TerritoryCard extends ConsumerWidget {
  final Territory territory;

  const _TerritoryCard({required this.territory});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final progress = territory.progress;
    
    // Calculate statistics
    int totalAddresses = territory.totalAddresses;
    int visitedAddresses = territory.totalVisited;
    int remainingAddresses = totalAddresses - visitedAddresses;
    int interestedCount = 0;
    
    for (var street in territory.streets) {
      for (var address in street.addresses) {
        if (address.currentStatus == VisitStatus.interested) {
          interestedCount++;
        }
      }
    }

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TerritoryDetailScreen(territoryId: territory.id),
            ),
          );
        },
        onLongPress: () => _showOptions(context, ref),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header - Territory name and streets count
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          territory.name,
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        if (territory.neighborhood != null)
                          Text(
                            territory.neighborhood!,
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.grey.shade600,
                            ),
                          ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 16,
                          color: Theme.of(context).colorScheme.onSecondaryContainer,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '${territory.streetCount} ${territory.streetCount == 1 ? 'rua' : 'ruas'}',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onSecondaryContainer,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              
              // Statistics Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _StatItem(
                    label: 'Total',
                    value: totalAddresses.toString(),
                    icon: Icons.home,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 1,
                    height: 30,
                    color: Colors.grey.shade300,
                  ),
                  _StatItem(
                    label: 'Restante',
                    value: remainingAddresses.toString(),
                    icon: Icons.pending_outlined,
                    color: Colors.orange,
                  ),
                  Container(
                    width: 1,
                    height: 30,
                    color: Colors.grey.shade300,
                  ),
                  _StatItem(
                    label: 'Interessados',
                    value: interestedCount.toString(),
                    icon: Icons.star,
                    color: Colors.green,
                  ),
                ],
              ),
              
              const SizedBox(height: 16),
              
              // Progress bar with percentage
              Row(
                children: [
                  const Text(
                    'Progresso',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '${(progress * 100).toStringAsFixed(0)}%',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: LinearProgressIndicator(
                  value: progress,
                  minHeight: 8,
                  backgroundColor: Colors.grey.shade200,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showOptions(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    showModalBottomSheet(
      context: context,
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.edit),
              title: Text(l10n.edit),
              onTap: () {
                Navigator.pop(context);
                _showEditDialog(context, ref);
              },
            ),
            ListTile(
              leading: const Icon(Icons.archive),
              title: Text(l10n.archive),
              onTap: () {
                Navigator.pop(context);
                ref.read(territoriesProvider.notifier).toggleArchive(territory.id);
              },
            ),
            ListTile(
              leading: const Icon(Icons.delete, color: Colors.red),
              title: Text(l10n.delete, style: const TextStyle(color: Colors.red)),
              onTap: () {
                Navigator.pop(context);
                _confirmDelete(context, ref);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showEditDialog(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final nameController = TextEditingController(text: territory.name);
    final neighborhoodController =
        TextEditingController(text: territory.neighborhood);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.editTerritory),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
              autofocus: true,
              decoration: InputDecoration(labelText: l10n.name),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: neighborhoodController,
              decoration: InputDecoration(labelText: l10n.neighborhood),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () {
              final updated = territory.copyWith(
                name: nameController.text.trim(),
                neighborhood: neighborhoodController.text.trim().isEmpty
                    ? null
                    : neighborhoodController.text.trim(),
              );
              ref.read(territoriesProvider.notifier).updateTerritory(updated);
              Navigator.pop(context);
            },
            child: Text(l10n.save),
          ),
        ],
      ),
    );
  }

  void _confirmDelete(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.deleteTerritory),
        content: Text(
          l10n.deleteConfirmation(territory.name),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            onPressed: () {
              ref.read(territoriesProvider.notifier).deleteTerritory(territory.id);
              Navigator.pop(context);
            },
            child: Text(l10n.delete),
          ),
        ],
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  final Color color;

  const _StatItem({
    required this.label,
    required this.value,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 18, color: color),
            const SizedBox(width: 4),
            Text(
              value,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ],
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: Colors.grey.shade600,
          ),
        ),
      ],
    );
  }
}
