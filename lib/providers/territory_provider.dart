import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';
import '../models/models.dart';
import '../services/database_service.dart';

const _uuid = Uuid();

/// Provider para o serviço de database
final databaseServiceProvider = FutureProvider<DatabaseService>((ref) async {
  return await DatabaseService.getInstance();
});

/// Provider para a lista de territórios
final territoriesProvider =
    StateNotifierProvider<TerritoriesNotifier, AsyncValue<List<Territory>>>((ref) {
  final dbAsync = ref.watch(databaseServiceProvider);
  return TerritoriesNotifier(ref, dbAsync);
});

/// Provider para territórios ativos (não arquivados)
final activeTerritoriesProvider = Provider<List<Territory>>((ref) {
  final territories = ref.watch(territoriesProvider);
  return territories.when(
    data: (list) => list.where((t) => !t.isArchived).toList(),
    loading: () => [],
    error: (_, __) => [],
  );
});

/// Provider para territórios arquivados
final archivedTerritoriesProvider = Provider<List<Territory>>((ref) {
  final territories = ref.watch(territoriesProvider);
  return territories.when(
    data: (list) => list.where((t) => t.isArchived).toList(),
    loading: () => [],
    error: (_, __) => [],
  );
});

/// Provider para um território específico
final territoryProvider = Provider.family<Territory?, String>((ref, id) {
  final territories = ref.watch(territoriesProvider);
  return territories.when(
    data: (list) {
      try {
        return list.firstWhere((t) => t.id == id);
      } catch (_) {
        return null;
      }
    },
    loading: () => null,
    error: (_, __) => null,
  );
});

/// Notifier para gerenciar territórios
class TerritoriesNotifier extends StateNotifier<AsyncValue<List<Territory>>> {
  final Ref _ref;
  final AsyncValue<DatabaseService> _dbAsync;

  TerritoriesNotifier(this._ref, this._dbAsync) : super(const AsyncValue.loading()) {
    _loadTerritories();
  }

  Future<void> _loadTerritories() async {
    if (!mounted) return;
    state = const AsyncValue.loading();
    try {
      final db = await _dbAsync.when(
        data: (db) async => db,
        loading: () async => await DatabaseService.getInstance(),
        error: (e, s) => throw e,
      );
      if (!mounted) return;
      final territories = db.getAllTerritories();
      if (mounted) {
        state = AsyncValue.data(territories);
      }
    } catch (e, s) {
      if (mounted) {
        state = AsyncValue.error(e, s);
      }
    }
  }

  /// Recarrega os territórios
  Future<void> refresh() async {
    await _loadTerritories();
  }

  /// Adiciona um novo território
  Future<Territory> addTerritory({
    required String name,
    String? neighborhood,
    String? notes,
    String? imagePath,
  }) async {
    final territory = Territory(
      id: _uuid.v4(),
      name: name,
      neighborhood: neighborhood,
      createdAt: DateTime.now(),
      notes: notes,
      imagePath: imagePath,
    );

    final db = await _getDb();
    await db.saveTerritory(territory);
    
    state = state.whenData((list) => [...list, territory]);
    return territory;
  }

  /// Atualiza um território existente
  Future<void> updateTerritory(Territory territory) async {
    final updatedTerritory = territory.copyWith(updatedAt: DateTime.now());
    
    final db = await _getDb();
    await db.saveTerritory(updatedTerritory);
    
    state = state.whenData((list) =>
        list.map((t) => t.id == updatedTerritory.id ? updatedTerritory : t).toList());
  }

  /// Deleta um território
  Future<void> deleteTerritory(String id) async {
    final db = await _getDb();
    await db.deleteTerritory(id);
    
    state = state.whenData((list) => list.where((t) => t.id != id).toList());
  }

  /// Arquiva/desarquiva um território
  Future<void> toggleArchive(String id) async {
    final current = state.value?.firstWhere((t) => t.id == id);
    if (current == null) return;

    final updated = current.copyWith(isArchived: !current.isArchived);
    await updateTerritory(updated);
  }

  /// Adiciona uma rua a um território
  Future<Street> addStreet({
    required String territoryId,
    required String name,
  }) async {
    final territory = state.value?.firstWhere((t) => t.id == territoryId);
    if (territory == null) throw Exception('Território não encontrado');

    final street = Street(
      id: _uuid.v4(),
      name: name,
      createdAt: DateTime.now(),
    );

    territory.addStreet(street);
    await updateTerritory(territory);
    return street;
  }

  /// Remove uma rua de um território
  Future<void> removeStreet({
    required String territoryId,
    required String streetId,
  }) async {
    final territory = state.value?.firstWhere((t) => t.id == territoryId);
    if (territory == null) return;

    territory.removeStreet(streetId);
    await updateTerritory(territory);
  }

  /// Move uma rua de um território para outro
  Future<void> moveStreet({
    required String fromTerritoryId,
    required String toTerritoryId,
    required String streetId,
  }) async {
    if (fromTerritoryId == toTerritoryId) return;

    final fromTerritory = state.value?.firstWhere((t) => t.id == fromTerritoryId);
    final toTerritory = state.value?.firstWhere((t) => t.id == toTerritoryId);
    
    if (fromTerritory == null || toTerritory == null) {
      throw Exception('Território não encontrado');
    }

    final street = fromTerritory.findStreet(streetId);
    if (street == null) {
      throw Exception('Rua não encontrada');
    }

    // Remove da origem e adiciona ao destino
    fromTerritory.removeStreet(streetId);
    toTerritory.addStreet(street);

    // Salva ambos os territórios
    await updateTerritory(fromTerritory);
    await updateTerritory(toTerritory);
  }

  /// Adiciona um endereço a uma rua
  Future<Address> addAddress({
    required String territoryId,
    required String streetId,
    required String number,
  }) async {
    final territory = state.value?.firstWhere((t) => t.id == territoryId);
    if (territory == null) throw Exception('Território não encontrado');

    final street = territory.findStreet(streetId);
    if (street == null) throw Exception('Rua não encontrada');

    final address = Address(
      id: _uuid.v4(),
      number: number,
      createdAt: DateTime.now(),
    );

    street.addAddress(address);
    await updateTerritory(territory);
    return address;
  }

  /// Gera endereços automaticamente
  Future<void> generateAddresses({
    required String territoryId,
    required String streetId,
    required int from,
    required int to,
    bool oddOnly = false,
    bool evenOnly = false,
  }) async {
    final territory = state.value?.firstWhere((t) => t.id == territoryId);
    if (territory == null) throw Exception('Território não encontrado');

    final street = territory.findStreet(streetId);
    if (street == null) throw Exception('Rua não encontrada');

    street.generateAddresses(
      from: from,
      to: to,
      oddOnly: oddOnly,
      evenOnly: evenOnly,
    );
    await updateTerritory(territory);
  }

  /// Adiciona uma visita a um endereço
  Future<Visit> addVisit({
    required String territoryId,
    required String streetId,
    required String addressId,
    required VisitStatus status,
    String? notes,
    String? personName,
    String? phoneNumber,
    DateTime? date,
    PersonCategory? personCategory,
    SkinTone? personSkinTone,
    Gender? gender,
  }) async {
    final territory = state.value?.firstWhere((t) => t.id == territoryId);
    if (territory == null) throw Exception('Território não encontrado');

    final street = territory.findStreet(streetId);
    if (street == null) throw Exception('Rua não encontrada');

    final address = street.addresses.firstWhere(
      (a) => a.id == addressId,
      orElse: () => throw Exception('Endereço não encontrado'),
    );

    final visit = Visit(
      id: _uuid.v4(),
      date: date ?? DateTime.now(),
      status: status,
      notes: notes,
      personName: personName,
      phoneNumber: phoneNumber,
      personCategory: personCategory,
      personSkinTone: personSkinTone,
      gender: gender,
    );

    address.addVisit(visit);
    await updateTerritory(territory);
    return visit;
  }

  /// Atualiza uma visita
  Future<void> updateVisit({
    required String territoryId,
    required String streetId,
    required String addressId,
    required Visit visit,
  }) async {
    final territory = state.value?.firstWhere((t) => t.id == territoryId);
    if (territory == null) return;

    final street = territory.findStreet(streetId);
    if (street == null) return;

    final address = street.addresses.firstWhere(
      (a) => a.id == addressId,
      orElse: () => throw Exception('Endereço não encontrado'),
    );

    address.updateVisit(visit);
    await updateTerritory(territory);
  }

  /// Remove uma visita
  Future<void> removeVisit({
    required String territoryId,
    required String streetId,
    required String addressId,
    required String visitId,
  }) async {
    final territory = state.value?.firstWhere((t) => t.id == territoryId);
    if (territory == null) return;

    final street = territory.findStreet(streetId);
    if (street == null) return;

    final address = street.addresses.firstWhere(
      (a) => a.id == addressId,
      orElse: () => throw Exception('Endereço não encontrado'),
    );

    address.removeVisit(visitId);
    await updateTerritory(territory);
  }

  Future<DatabaseService> _getDb() async {
    return _dbAsync.when(
      data: (db) => db,
      loading: () => DatabaseService.getInstance(),
      error: (e, _) => throw e,
    );
  }
}
