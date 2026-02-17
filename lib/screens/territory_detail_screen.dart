import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import '../providers/territory_provider.dart';
import '../models/models.dart';
import 'street_detail_screen.dart';
import '../config/app_localizations.dart';

class TerritoryDetailScreen extends ConsumerWidget {
  final String territoryId;

  const TerritoryDetailScreen({super.key, required this.territoryId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final territory = ref.watch(territoryProvider(territoryId));

    if (territory == null) {
      return Scaffold(
        appBar: AppBar(title: Text(l10n.territory)),
        body: Center(child: Text(l10n.territoryNotFound)),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(territory.name),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () => _showEditDialog(context, ref, territory),
            tooltip: 'Editar',
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          // Mapa do território no topo
          SliverToBoxAdapter(
            child: _TerritoryMapHeader(territory: territory),
          ),
          // Lista de ruas
          if (territory.streets.isEmpty)
            SliverFillRemaining(
              child: _buildEmptyState(context, ref, territory),
            )
          else
            SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => _StreetCard(
                    territory: territory,
                    street: territory.streets[index],
                  ),
                  childCount: territory.streets.length,
                ),
              ),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _showAddStreetDialog(context, ref, territory),
        icon: const Icon(Icons.add),
        label: Text(l10n.street),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context, WidgetRef ref, Territory territory) {
    final l10n = AppLocalizations.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add_road,
              size: 80,
              color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
            ),
            const SizedBox(height: 24),
            Text(
              l10n.noStreets,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              l10n.addStreetsToTerritory,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 32),
            ElevatedButton.icon(
              onPressed: () => _showAddStreetDialog(context, ref, territory),
              icon: const Icon(Icons.add),
              label: Text(l10n.addStreet),
            ),
          ],
        ),
      ),
    );
  }

  void _showAddStreetDialog(BuildContext context, WidgetRef ref, Territory territory) {
    final l10n = AppLocalizations.of(context);
    final nameController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.newStreet),
        content: TextField(
          controller: nameController,
          autofocus: true,
          decoration: InputDecoration(
            labelText: l10n.streetName,
            hintText: 'Ex: Main Street',
          ),
          textCapitalization: TextCapitalization.words,
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
                  SnackBar(content: Text(l10n.enterStreetName)),
                );
                return;
              }

              Navigator.pop(context);

              await ref.read(territoriesProvider.notifier).addStreet(
                territoryId: territory.id,
                name: nameController.text.trim(),
              );

              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(l10n.streetAdded)),
                );
              }
            },
            child: Text(l10n.add),
          ),
        ],
      ),
    );
  }

  void _showEditDialog(BuildContext context, WidgetRef ref, Territory territory) {
    final l10n = AppLocalizations.of(context);
    final nameController = TextEditingController(text: territory.name);
    final neighborhoodController =
        TextEditingController(text: territory.neighborhood);
    final notesController = TextEditingController(text: territory.notes);
    
    final isDark = Theme.of(context).brightness == Brightness.dark;

    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(l10n.editTerritory),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: l10n.name,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                    filled: true,
                    fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: neighborhoodController,
                decoration: InputDecoration(
                  labelText: l10n.neighborhood,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                    filled: true,
                    fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: notesController,
                decoration: InputDecoration(
                  labelText: l10n.notes,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                    filled: true,
                    fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                ),
                maxLines: 3,
              ),
            ],
          ),
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
                notes: notesController.text.trim().isEmpty
                    ? null
                    : notesController.text.trim(),
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
}

class _StreetCard extends ConsumerWidget {
  final Territory territory;
  final Street street;

  const _StreetCard({required this.territory, required this.street});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final progress = street.progress;

    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StreetDetailScreen(
                territoryId: territory.id,
                streetId: street.id,
              ),
            ),
          );
        },
        onLongPress: () => _showOptions(context, ref),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.add_road, size: 20),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      street.name,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      '${street.addressCount}',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              if (street.addressCount > 0) ...[
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: LinearProgressIndicator(
                          value: progress,
                          minHeight: 6,
                          backgroundColor: Colors.grey.shade200,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      '${street.visitedCount}/${street.addressCount}',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ],
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
              leading: const Icon(Icons.drive_file_move),
              title: Text(l10n.moveToAnotherTerritory),
              onTap: () {
                Navigator.pop(context);
                _showMoveDialog(context, ref);
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
    final nameController = TextEditingController(text: street.name);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.editStreet),
        content: TextField(
          controller: nameController,
          autofocus: true,
          decoration: InputDecoration(labelText: l10n.name),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () {
              final updatedStreet = street.copyWith(name: nameController.text.trim());
              final updatedTerritory = territory.copyWith(
                streets: territory.streets
                    .map((s) => s.id == street.id ? updatedStreet : s)
                    .toList(),
              );
              ref.read(territoriesProvider.notifier).updateTerritory(updatedTerritory);
              Navigator.pop(context);
            },
            child: Text(l10n.save),
          ),
        ],
      ),
    );
  }

  void _showMoveDialog(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final territories = ref.read(territoriesProvider).value ?? [];
    final otherTerritories = territories
        .where((t) => t.id != territory.id && !t.isArchived)
        .toList();

    if (otherTerritories.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(l10n.noOtherTerritories)),
      );
      return;
    }

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.moveStreet),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l10n.moveToDestination(street.name)),
            const SizedBox(height: 16),
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 300),
              child: SingleChildScrollView(
                child: Column(
                  children: otherTerritories.map((t) => ListTile(
                    leading: const Icon(Icons.map),
                    title: Text(t.name),
                    subtitle: t.neighborhood != null ? Text(t.neighborhood!) : null,
                    onTap: () async {
                      Navigator.pop(context);
                      try {
                        await ref.read(territoriesProvider.notifier).moveStreet(
                          fromTerritoryId: territory.id,
                          toTerritoryId: t.id,
                          streetId: street.id,
                        );
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(l10n.streetMovedTo(t.name))),
                          );
                        }
                      } catch (e) {
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(l10n.errorMoving(e.toString()))),
                          );
                        }
                      }
                    },
                  )).toList(),
                ),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
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
        title: Text(l10n.deleteStreet),
        content: Text(
          l10n.streetAndAddressesWillBeDeleted(street.name),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            style: FilledButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {
              ref.read(territoriesProvider.notifier).removeStreet(
                territoryId: territory.id,
                streetId: street.id,
              );
              Navigator.pop(context);
            },
            child: Text(l10n.delete),
          ),
        ],
      ),
    );
  }
}

/// Widget para exibir o mapa do território no topo
class _TerritoryMapHeader extends ConsumerWidget {
  final Territory territory;

  const _TerritoryMapHeader({required this.territory});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => _showImageOptions(context, ref),
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade300),
        ),
        clipBehavior: Clip.antiAlias,
        child: territory.imagePath != null
            ? AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.file(
                  File(territory.imagePath!),
                  fit: BoxFit.contain,
                  errorBuilder: (_, __, ___) => _buildPlaceholder(context),
                ),
              )
            : _buildPlaceholder(context),
      ),
    );
  }

  Widget _buildPlaceholder(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Container(
      height: 150,
      color: Colors.grey.shade100,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add_a_photo, size: 40, color: Colors.grey.shade400),
            const SizedBox(height: 8),
            Text(
              l10n.tapToAddMap,
              style: TextStyle(color: Colors.grey.shade600),
            ),
          ],
        ),
      ),
    );
  }

  void _showImageOptions(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    showModalBottomSheet(
      context: context,
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: Text(l10n.chooseFromGallery),
              onTap: () async {
                Navigator.pop(context);
                await _pickImage(ref, ImageSource.gallery);
              },
            ),
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: Text(l10n.takePhoto),
              onTap: () async {
                Navigator.pop(context);
                await _pickImage(ref, ImageSource.camera);
              },
            ),
            if (territory.imagePath != null)
              ListTile(
                leading: const Icon(Icons.delete, color: Colors.red),
                title: Text(l10n.removeMap, style: const TextStyle(color: Colors.red)),
                onTap: () {
                  Navigator.pop(context);
                  _removeImage(ref);
                },
              ),
            ListTile(
              leading: const Icon(Icons.fullscreen),
              title: Text(l10n.viewFullscreen),
              enabled: territory.imagePath != null,
              onTap: () {
                Navigator.pop(context);
                if (territory.imagePath != null) {
                  _showFullScreenImage(context);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _pickImage(WidgetRef ref, ImageSource source) async {
    final picker = ImagePicker();
    final image = await picker.pickImage(source: source);
    if (image != null) {
      final updated = territory.copyWith(imagePath: image.path);
      ref.read(territoriesProvider.notifier).updateTerritory(updated);
    }
  }

  void _removeImage(WidgetRef ref) {
    final updated = Territory(
      id: territory.id,
      name: territory.name,
      neighborhood: territory.neighborhood,
      createdAt: territory.createdAt,
      updatedAt: DateTime.now(),
      isArchived: territory.isArchived,
      streets: territory.streets,
      notes: territory.notes,
      imagePath: null,
    );
    ref.read(territoriesProvider.notifier).updateTerritory(updated);
  }

  void _showFullScreenImage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            iconTheme: const IconThemeData(color: Colors.white),
          ),
          body: Center(
            child: InteractiveViewer(
              child: Image.file(File(territory.imagePath!)),
            ),
          ),
        ),
      ),
    );
  }
}
