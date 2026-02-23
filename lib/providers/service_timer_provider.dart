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
         // Handle case where end is before start (e.g. over midnight? or error)
         // For now assume same day or valid sequence. If negative, return zero.
         return Duration.zero;
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

  MonthlyServiceTime({
    required this.year,
    required this.month,
    this.totalMinutes = 0,
    this.revisitCount = 0,
    this.bibleStudyCount = 0,
  });

  MonthlyServiceTime copyWith({
    int? year,
    int? month,
    int? totalMinutes,
    int? revisitCount,
    int? bibleStudyCount,
  }) {
    return MonthlyServiceTime(
      year: year ?? this.year,
      month: month ?? this.month,
      totalMinutes: totalMinutes ?? this.totalMinutes,
      revisitCount: revisitCount ?? this.revisitCount,
      bibleStudyCount: bibleStudyCount ?? this.bibleStudyCount,
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
  MonthlyServiceTimeNotifier() : super(MonthlyServiceTime(
    year: DateTime.now().year,
    month: DateTime.now().month,
  )) {
    _loadMonthlyTime();
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

  Future<void> _loadMonthlyTime() async {
    try {
      final now = DateTime.now();
      final db = await DatabaseService.getInstance();
      final key = _getStorageKey(now.year, now.month);
      final savedMinutes = db.getSetting<int>(key) ?? 0;
      final revisitKey = _getRevisitKey(now.year, now.month);
      final savedRevisits = db.getSetting<int>(revisitKey) ?? 0;
      final bibleStudyKey = _getBibleStudyKey(now.year, now.month);
      final savedBibleStudies = db.getSetting<int>(bibleStudyKey) ?? 0;

      state = MonthlyServiceTime(
        year: now.year,
        month: now.month,
        totalMinutes: savedMinutes,
        revisitCount: savedRevisits,
        bibleStudyCount: savedBibleStudies,
      );
    } catch (_) {
      // Keep default
    }
  }

  Future<void> addTime(Duration duration) async {
    final now = DateTime.now();
    
    // Check if we need to reset for a new month
    if (state.year != now.year || state.month != now.month) {
      state = MonthlyServiceTime(
        year: now.year,
        month: now.month,
        totalMinutes: duration.inMinutes,
      );
    } else {
      state = state.copyWith(
        totalMinutes: state.totalMinutes + duration.inMinutes,
      );
    }
    
    await _saveMonthlyTime();
  }

  Future<void> setTime(int minutes) async {
    final now = DateTime.now();
    state = MonthlyServiceTime(
      year: now.year,
      month: now.month,
      totalMinutes: minutes,
      revisitCount: state.revisitCount,
    );
    await _saveMonthlyTime();
  }

  Future<void> incrementRevisitCount() async {
    final now = DateTime.now();
    // Reset if new month
    if (state.year != now.year || state.month != now.month) {
      await _loadMonthlyTime();
    }
    state = state.copyWith(revisitCount: state.revisitCount + 1);
    try {
      final db = await DatabaseService.getInstance();
      await db.saveSetting(
        _getRevisitKey(state.year, state.month),
        state.revisitCount,
      );
    } catch (_) {}
  }

  Future<void> incrementBibleStudyCount() async {
    final now = DateTime.now();
    if (state.year != now.year || state.month != now.month) {
      await _loadMonthlyTime();
    }
    state = state.copyWith(bibleStudyCount: state.bibleStudyCount + 1);
    try {
      final db = await DatabaseService.getInstance();
      await db.saveSetting(
        _getBibleStudyKey(state.year, state.month),
        state.bibleStudyCount,
      );
    } catch (_) {}
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
        
        history.add(MonthlyServiceTime(
          year: date.year,
          month: date.month,
          totalMinutes: savedMinutes,
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
      await db.saveSetting('service_start_time', state.startTime?.toIso8601String());
      await db.saveSetting('service_end_time', state.endTime?.toIso8601String());
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
final serviceTimerProvider = StateNotifierProvider<ServiceTimerNotifier, ServiceSession>((ref) {
  return ServiceTimerNotifier();
});

final monthlyServiceTimeProvider = StateNotifierProvider<MonthlyServiceTimeNotifier, MonthlyServiceTime>((ref) {
  return MonthlyServiceTimeNotifier();
});
