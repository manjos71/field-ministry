import 'dart:convert';
import 'package:hive_flutter/hive_flutter.dart';
import '../models/models.dart';

/// Serviço para gerenciar o banco de dados Hive
class DatabaseService {
  static const String _territoriesBox = 'territories';
  static const String _settingsBox = 'settings';
  
  static DatabaseService? _instance;
  late Box<String> _territoriesBoxInstance;
  late Box<dynamic> _settingsBoxInstance;
  
  DatabaseService._();
  
  static Future<DatabaseService>? _initFuture;

  static Future<DatabaseService> getInstance() {
    _initFuture ??= _initAndGetInstance();
    return _initFuture!;
  }

  static Future<DatabaseService> _initAndGetInstance() async {
    if (_instance != null) return _instance!;
    _instance = DatabaseService._();
    await _instance!._init();
    return _instance!;
  }
  
  Future<void> _init() async {
    await Hive.initFlutter();
    _territoriesBoxInstance = await Hive.openBox<String>(_territoriesBox);
    _settingsBoxInstance = await Hive.openBox<dynamic>(_settingsBox);
  }
  
  // ==================== TERRITORIES ====================
  
  /// Salva um território
  Future<void> saveTerritory(Territory territory) async {
    final json = jsonEncode(territory.toJson());
    await _territoriesBoxInstance.put(territory.id, json);
  }
  
  /// Obtém um território pelo ID
  Territory? getTerritory(String id) {
    final json = _territoriesBoxInstance.get(id);
    if (json == null) return null;
    return Territory.fromJson(jsonDecode(json) as Map<String, dynamic>);
  }
  
  /// Obtém todos os territórios
  List<Territory> getAllTerritories() {
    return _territoriesBoxInstance.values
        .map((json) => Territory.fromJson(jsonDecode(json) as Map<String, dynamic>))
        .toList();
  }
  
  /// Obtém territórios ativos (não arquivados)
  List<Territory> getActiveTerritories() {
    return getAllTerritories().where((t) => !t.isArchived).toList();
  }
  
  /// Obtém territórios arquivados
  List<Territory> getArchivedTerritories() {
    return getAllTerritories().where((t) => t.isArchived).toList();
  }
  
  /// Deleta um território
  Future<void> deleteTerritory(String id) async {
    await _territoriesBoxInstance.delete(id);
  }
  
  /// Deleta todos os territórios
  Future<void> deleteAllTerritories() async {
    await _territoriesBoxInstance.clear();
  }
  
  // ==================== SETTINGS ====================
  
  /// Salva uma configuração
  Future<void> saveSetting(String key, dynamic value) async {
    await _settingsBoxInstance.put(key, value);
  }
  
  /// Obtém uma configuração
  T? getSetting<T>(String key, {T? defaultValue}) {
    return _settingsBoxInstance.get(key, defaultValue: defaultValue) as T?;
  }
  
  // ==================== BACKUP/RESTORE ====================
  
  /// Exporta todos os dados como JSON
  Map<String, dynamic> exportAllData() {
    final territories = getAllTerritories();
    final settings = _settingsBoxInstance.toMap();
    
    return {
      'version': 1,
      'exportDate': DateTime.now().toIso8601String(),
      'territories': territories.map((t) => t.toJson()).toList(),
      'settings': settings,
    };
  }
  
  /// Importa dados de um JSON
  Future<void> importAllData(Map<String, dynamic> data) async {
    // Limpa dados existentes
    await deleteAllTerritories();
    await _settingsBoxInstance.clear();
    
    // Importa territórios
    final territories = (data['territories'] as List<dynamic>?)
        ?.map((t) => Territory.fromJson(t as Map<String, dynamic>))
        .toList() ?? [];
    
    for (final territory in territories) {
      await saveTerritory(territory);
    }
    
    // Importa configurações
    final settings = data['settings'] as Map<String, dynamic>?;
    if (settings != null) {
      for (final entry in settings.entries) {
        await saveSetting(entry.key, entry.value);
      }
    }
  }
  
  /// Fecha o banco de dados
  Future<void> close() async {
    await Hive.close();
  }
}
