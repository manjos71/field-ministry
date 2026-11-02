import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/database_service.dart';

// Service session state
class ServiceSession {
  final DateTime? startTime;
  final DateTime? endTime;

  ServiceSession({
    this.startTime,
    this.endTime,
  });

  ServiceSession copyWith({
    DateTime? startTime,
    DateTime? endTime,
  }) {
    return ServiceSession(
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
    );
  }

  Duration get duration {
    if (startTime != null && endTime != null) {
      if (endTime!.isBefore(startTime!)) {
        // If end time is before start time, assume session crossed midnight.
        final adjustedEnd = endTime!.add(const Duration(days: 1));
        return adjustedEnd.difference(startTime!);
      }
      return endTime!.difference(startTime!);
    }
    return Duration.zero;
  }
}

// Monthly accumulated time state
class MonthlyServiceTime {
  final int year;
  final int month;
  final int totalMinutes;
  final int revisitCount;
  final int bibleStudyCount;
  final Set<String> bibleStudyPersonIds;

  MonthlyServiceTime({
    required this.year,
    required this.month,
    this.totalMinutes = 0,
    this.revisitCount = 0,
    this.bibleStudyCount = 0,
    this.bibleStudyPersonIds = const {},
  });

  MonthlyServiceTime copyWith({
    int? year,
    int? month,
    int? totalMinutes,
    int? revisitCount,
    int? bibleStudyCount,
    Set<String>? bibleStudyPersonIds,
  }) {
    return MonthlyServiceTime(
      year: year ?? this.year,
      month: month ?? this.month,
      totalMinutes: totalMinutes ?? this.totalMinutes,
      revisitCount: revisitCount ?? this.revisitCount,
      bibleStudyCount: bibleStudyCount ?? this.bibleStudyCount,
      bibleStudyPersonIds: bibleStudyPersonIds ?? this.bibleStudyPersonIds,
    );
  }

  Duration get duration => Duration(minutes: totalMinutes);

  String get formattedTime {
    final hours = totalMinutes ~/ 60;
    final minutes = totalMinutes % 60;
    return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}';
  }
}

// Monthly Service Time Notifier
class MonthlyServiceTimeNotifier extends StateNotifier<MonthlyServiceTime> {
  late final Future<void> _loadFuture;

  MonthlyServiceTimeNotifier()
      : super(MonthlyServiceTime(
          year: DateTime.now().year,
          month: DateTime.now().month,
        )) {
    _loadFuture = _loadMonthlyTime();
  }

  String _getStorageKey(int year, int month) {
    return 'monthly_service_time_${year}_$month';
  }

  String _getRevisitKey(int year, int month) {
    return 'monthly_revisit_count_${year}_$month';
  }

  String _getBibleStudyKey(int year, int month) {
    return 'monthly_bible_study_count_${year}_$month';
  }

  String _getBibleStudyPersonsKey(int year, int month) {
    return 'monthly_bible_study_persons_${year}_$month';
  }

  Future<void> _loadMonthlyTime([int? year, int? month]) async {
    try {
      final now = DateTime.now();
      final targetYear = year ?? state.year;
      final targetMonth = month ?? state.month;
      
      final db = await DatabaseService.getInstance();
      final stats = await _getStatsForMonth(db, targetYear, targetMonth);

      state = stats;
    } catch (_) {
      // Keep current
    }
  }

  Future<MonthlyServiceTime> getStatsForSpecificMonth(int year, int month) async {
    final db = await DatabaseService.getInstance();
    return _getStatsForMonth(db, year, month);
  }

  Future<MonthlyServiceTime> _getStatsForMonth(DatabaseService db, int year, int month) async {
    final key = _getStorageKey(year, month);
    final savedMinutes = db.getSetting<int>(key) ?? 0;
    final revisitKey = _getRevisitKey(year, month);
    final savedRevisits = db.getSetting<int>(revisitKey) ?? 0;
    final bibleStudyKey = _getBibleStudyKey(year, month);
    final savedBibleStudies = db.getSetting<int>(bibleStudyKey) ?? 0;

    final bibleStudyPersonsKey = _getBibleStudyPersonsKey(year, month);
    final savedPersons = db.getSetting<List<dynamic>>(bibleStudyPersonsKey) ?? [];
    final bibleStudyPersonIds = savedPersons.map((e) => e.toString()).toSet();

    return MonthlyServiceTime(
      year: year,
      month: month,
      totalMinutes: savedMinutes,
      revisitCount: savedRevisits,
      bibleStudyCount: savedBibleStudies,
      bibleStudyPersonIds: bibleStudyPersonIds,
    );
  }

  Future<void> loadMonth(int year, int month) async {
    await _loadFuture;
    await _loadMonthlyTime(year, month);
  }

  Future<void> setMonth(int year, int month) async {
    state = state.copyWith(year: year, month: month);
    await _loadMonthlyTime(year, month);
  }

  Future<void> updateManualStats({
    int? minutes,
    int? revisits,
    int? bibleStudies,
    int territoryRevisits = 0,
  }) async {
    await _loadFuture;
    
    // For revisits, we store the MANUAL OVERRIDE (Total - Territory)
    int? newRevisitOverride;
    if (revisits != null) {
      newRevisitOverride = (revisits - territoryRevisits).clamp(0, 999);
    }

    state = state.copyWith(
      totalMinutes: minutes ?? state.totalMinutes,
      revisitCount: newRevisitOverride ?? state.revisitCount,
      bibleStudyCount: bibleStudies ?? state.bibleStudyCount,
    );

    try {
      final db = await DatabaseService.getInstance();
      if (minutes != null) {
        await db.saveSetting(_getStorageKey(state.year, state.month), state.totalMinutes);
      }
      if (newRevisitOverride != null) {
        await db.saveSetting(_getRevisitKey(state.year, state.month), state.revisitCount);
      }
      if (bibleStudies != null) {
        await db.saveSetting(_getBibleStudyKey(state.year, state.month), state.bibleStudyCount);
      }
    } catch (_) {}
  }

  Future<void> addTime(Duration duration) async {
    await _loadFuture;
    final now = DateTime.now();
    final addedMinutes = duration.inMinutes;
    if (addedMinutes <= 0) return;

    final db = await DatabaseService.getInstance();
    final currentStats = await _getStatsForMonth(db, now.year, now.month);
    final updatedMinutes = currentStats.totalMinutes + addedMinutes;
    
    await db.saveSetting(_getStorageKey(now.year, now.month), updatedMinutes);

    // Se estivermos visualizando o mês atual, atualiza o estado
    if (state.year == now.year && state.month == now.month) {
      state = state.copyWith(totalMinutes: updatedMinutes);
    }
  }

  Future<void> setTime(int minutes) async {
    await _loadFuture;
    final now = DateTime.now();
    final db = await DatabaseService.getInstance();
    
    await db.saveSetting(_getStorageKey(now.year, now.month), minutes);

    if (state.year == now.year && state.month == now.month) {
      state = state.copyWith(totalMinutes: minutes);
    }
  }

  Future<void> incrementRevisitCount() async {
    await _loadFuture;
    final now = DateTime.now();
    final db = await DatabaseService.getInstance();
    final currentStats = await _getStatsForMonth(db, now.year, now.month);
    final newCount = currentStats.revisitCount + 1;

    await db.saveSetting(_getRevisitKey(now.year, now.month), newCount);

    if (state.year == now.year && state.month == now.month) {
      state = state.copyWith(revisitCount: newCount);
    }
  }

  Future<void> recordBibleStudyVisit(String personId) async {
    await _loadFuture;
    final now = DateTime.now();
    final db = await DatabaseService.getInstance();
    final currentStats = await _getStatsForMonth(db, now.year, now.month);

    int newRevisitCount = currentStats.revisitCount + 1;
    int newStudyCount = currentStats.bibleStudyCount;
    final newPersons = Set<String>.from(currentStats.bibleStudyPersonIds);
    
    if (!newPersons.contains(personId)) {
      newPersons.add(personId);
      newStudyCount++;
    }

    await db.saveSetting(_getRevisitKey(now.year, now.month), newRevisitCount);
    await db.saveSetting(_getBibleStudyKey(now.year, now.month), newStudyCount);
    await db.saveSetting(_getBibleStudyPersonsKey(now.year, now.month), newPersons.toList());

    if (state.year == now.year && state.month == now.month) {
      state = state.copyWith(
        revisitCount: newRevisitCount,
        bibleStudyCount: newStudyCount,
        bibleStudyPersonIds: newPersons,
      );
    }
  }

  Future<void> _saveMonthlyTime() async {
    try {
      final db = await DatabaseService.getInstance();
      final key = _getStorageKey(state.year, state.month);
      await db.saveSetting(key, state.totalMinutes);
    } catch (_) {
      // Ignore save errors
    }
  }

  Future<void> checkAndResetForNewMonth() async {
    await _loadFuture;
    final now = DateTime.now();
    if (state.year != now.year || state.month != now.month) {
      await _loadMonthlyTime();
    }
  }

  /// Obtém dados históricos dos últimos N meses
  Future<List<MonthlyServiceTime>> getHistoricalData(int months) async {
    final List<MonthlyServiceTime> history = [];
    final now = DateTime.now();

    try {
      final db = await DatabaseService.getInstance();

      for (int i = 0; i < months; i++) {
        final date = DateTime(now.year, now.month - i, 1);
        
        final key = _getStorageKey(date.year, date.month);
        final savedMinutes = db.getSetting<int>(key) ?? 0;
        
        final revisitKey = _getRevisitKey(date.year, date.month);
        final savedRevisits = db.getSetting<int>(revisitKey) ?? 0;
        
        final bibleStudyKey = _getBibleStudyKey(date.year, date.month);
        final savedBibleStudies = db.getSetting<int>(bibleStudyKey) ?? 0;

        history.add(MonthlyServiceTime(
          year: date.year,
          month: date.month,
          totalMinutes: savedMinutes,
          revisitCount: savedRevisits,
          bibleStudyCount: savedBibleStudies,
        ));
      }
    } catch (_) {
      // Return empty list on error
    }

    return history.reversed.toList(); // Ordem cronológica
  }
}

// Service Timer Notifier
class ServiceTimerNotifier extends StateNotifier<ServiceSession> {
  ServiceTimerNotifier() : super(ServiceSession()) {
    _loadSession();
  }

  Future<void> _loadSession() async {
    try {
      final db = await DatabaseService.getInstance();
      final startTimeStr = db.getSetting<String>('service_start_time');
      final endTimeStr = db.getSetting<String>('service_end_time');

      state = ServiceSession(
        startTime: startTimeStr != null ? DateTime.parse(startTimeStr) : null,
        endTime: endTimeStr != null ? DateTime.parse(endTimeStr) : null,
      );
    } catch (_) {
      // Keep default
    }
  }

  Future<void> setStartTime(DateTime time) async {
    state = state.copyWith(startTime: time);
    await _saveSession();
  }

  Future<void> setEndTime(DateTime time) async {
    state = state.copyWith(endTime: time);
    await _saveSession();
  }

  Future<void> reset() async {
    state = ServiceSession();
    await _clearSession();
  }

  Future<void> _saveSession() async {
    try {
      final db = await DatabaseService.getInstance();
      await db.saveSetting(
          'service_start_time', state.startTime?.toIso8601String());
      await db.saveSetting(
          'service_end_time', state.endTime?.toIso8601String());
    } catch (_) {
      // Ignore save errors
    }
  }

  Future<void> _clearSession() async {
    try {
      final db = await DatabaseService.getInstance();
      await db.saveSetting('service_start_time', null);
      await db.saveSetting('service_end_time', null);
    } catch (_) {
      // Ignore
    }
  }
}

// Providers
final serviceTimerProvider =
    StateNotifierProvider<ServiceTimerNotifier, ServiceSession>((ref) {
  return ServiceTimerNotifier();
});

final monthlyServiceTimeProvider =
    StateNotifierProvider<MonthlyServiceTimeNotifier, MonthlyServiceTime>(
        (ref) {
  return MonthlyServiceTimeNotifier();
});

/// Mês selecionado no calendário da Home.
/// Fonte única de verdade compartilhada entre o calendário e o bloco "Tempo do Mês".
final selectedCalendarMonthProvider = StateProvider<DateTime>((ref) {
  final now = DateTime.now();
  return DateTime(now.year, now.month);
});
