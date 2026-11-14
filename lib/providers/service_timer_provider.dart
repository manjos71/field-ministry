import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/models.dart';
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
    await _bumpDaily(db, 'revisits', now, 1);

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
    await _bumpDaily(db, 'revisits', now, 1);
    if (newStudyCount > currentStats.bibleStudyCount) {
      await _bumpDaily(db, 'studies', now, 1);
    }

    if (state.year == now.year && state.month == now.month) {
      state = state.copyWith(
        revisitCount: newRevisitCount,
        bibleStudyCount: newStudyCount,
        bibleStudyPersonIds: newPersons,
      );
    }
  }


  // ── Histórico diário (revisitas / estudos por dia) ─────────────────────────

  String _dailyKey(String kind, int year, int month) =>
      'monthly_daily_${kind}_${year}_$month';

  Map<int, int> _readDaily(DatabaseService db, String kind, int year, int month) {
    final raw = db.getSetting<String>(_dailyKey(kind, year, month));
    if (raw == null) return {};
    try {
      final data = jsonDecode(raw) as Map<String, dynamic>;
      return data.map((k, v) => MapEntry(int.parse(k), (v as num).toInt()));
    } catch (_) {
      return {};
    }
  }

  Future<void> _writeDaily(DatabaseService db, String kind, int year,
      int month, Map<int, int> map) async {
    await db.saveSetting(
      _dailyKey(kind, year, month),
      jsonEncode(map.map((k, v) => MapEntry(k.toString(), v))),
    );
  }

  Future<void> _bumpDaily(
      DatabaseService db, String kind, DateTime date, int delta) async {
    final map = _readDaily(db, kind, date.year, date.month);
    final value = (map[date.day] ?? 0) + delta;
    if (value > 0) {
      map[date.day] = value;
    } else {
      map.remove(date.day);
    }
    await _writeDaily(db, kind, date.year, date.month, map);
  }


  /// Reconstrói as revisitas por dia a partir das visitas já registradas nos
  /// territórios (feitas antes de existir o registro diário). Roda uma vez por
  /// mês e só preenche dias que ainda não têm valor; não altera os totais.
  Future<void> backfillDailyRevisits(int year, int month) async {
    final db = await DatabaseService.getInstance();
    final flag = 'daily_backfill_${year}_$month';
    if (db.getSetting<bool>(flag) == true) return;

    final computed = <int, int>{};
    for (final t in db.getAllTerritories()) {
      for (final st in t.streets) {
        for (final a in st.addresses) {
          for (final v in a.visits) {
            if (v.parentId == null) continue;
            if (v.status != VisitStatus.returnVisit &&
                v.status != VisitStatus.bibleStudy) continue;
            if (v.date.year != year || v.date.month != month) continue;
            computed[v.date.day] = (computed[v.date.day] ?? 0) + 1;
          }
        }
      }
    }

    final stored = _readDaily(db, 'revisits', year, month);
    var changed = false;
    computed.forEach((day, n) {
      if (!stored.containsKey(day)) {
        stored[day] = n;
        changed = true;
      }
    });
    if (changed) await _writeDaily(db, 'revisits', year, month, stored);
    await db.saveSetting(flag, true);
  }

  /// Revisitas por dia do mês (dia -> quantidade).
  Future<Map<int, int>> getDailyRevisits(int year, int month) async =>
      _readDaily(await DatabaseService.getInstance(), 'revisits', year, month);

  /// Estudos por dia do mês (dia -> quantidade).
  Future<Map<int, int>> getDailyStudies(int year, int month) async =>
      _readDaily(await DatabaseService.getInstance(), 'studies', year, month);

  /// Horas realizadas por dia do mês (dia -> horas). Mesmo armazenamento do calendário.
  Future<Map<int, double>> getDailyHours(int year, int month) async {
    final db = await DatabaseService.getInstance();
    final raw = db.getSetting<String>('monthly_actual_${year}_$month');
    if (raw == null) return {};
    try {
      final data = jsonDecode(raw) as Map<String, dynamic>;
      return data.map((k, v) => MapEntry(int.parse(k), (v as num).toDouble()));
    } catch (_) {
      return {};
    }
  }

  /// Edita um dia do histórico e propaga a diferença para os totais do mês,
  /// funcionando para qualquer mês (não apenas o atual).
  Future<void> editDay({
    required int year,
    required int month,
    required int day,
    required double hours,
    required int revisits,
    required int studies,
  }) async {
    await _loadFuture;
    final db = await DatabaseService.getInstance();

    // Horas (mesma chave usada pelo calendário de planejamento)
    final hoursMap = await getDailyHours(year, month);
    final oldHours = hoursMap[day] ?? 0;
    final newHours = double.parse(hours.toStringAsFixed(2));
    if ((newHours - oldHours).abs() > 0.0001) {
      // Edição manual substitui os intervalos registrados daquele dia
      await db.saveSetting(
          _intervalsKey(DateTime(year, month, day)), null);
    }
    if (newHours > 0) {
      hoursMap[day] = newHours;
    } else {
      hoursMap.remove(day);
    }
    await db.saveSetting(
      'monthly_actual_${year}_$month',
      jsonEncode(hoursMap.map((k, v) => MapEntry(k.toString(), v))),
    );

    final revMap = _readDaily(db, 'revisits', year, month);
    final oldRevisits = revMap[day] ?? 0;
    if (revisits > 0) {
      revMap[day] = revisits;
    } else {
      revMap.remove(day);
    }
    await _writeDaily(db, 'revisits', year, month, revMap);

    final stuMap = _readDaily(db, 'studies', year, month);
    final oldStudies = stuMap[day] ?? 0;
    if (studies > 0) {
      stuMap[day] = studies;
    } else {
      stuMap.remove(day);
    }
    await _writeDaily(db, 'studies', year, month, stuMap);

    // Totais do mês = total atual + diferença
    final current = await _getStatsForMonth(db, year, month);
    final minutes = (current.totalMinutes +
            ((newHours - oldHours) * 60).round())
        .clamp(0, 1 << 30);
    final totalRevisits =
        (current.revisitCount + revisits - oldRevisits).clamp(0, 99999);
    final totalStudies =
        (current.bibleStudyCount + studies - oldStudies).clamp(0, 99999);

    await db.saveSetting(_getStorageKey(year, month), minutes);
    await db.saveSetting(_getRevisitKey(year, month), totalRevisits);
    await db.saveSetting(_getBibleStudyKey(year, month), totalStudies);

    if (state.year == year && state.month == month) {
      state = state.copyWith(
        totalMinutes: minutes,
        revisitCount: totalRevisits,
        bibleStudyCount: totalStudies,
      );
    }
  }


  // ── Intervalos de serviço (sem duplicar horas coincidentes) ────────────────

  String _intervalsKey(DateTime d) =>
      'service_intervals_${d.year}_${d.month}_${d.day}';

  List<List<int>> _readIntervals(DatabaseService db, DateTime d) {
    final raw = db.getSetting<String>(_intervalsKey(d));
    if (raw == null) return [];
    try {
      return (jsonDecode(raw) as List)
          .map((e) => (e as List).map((x) => (x as num).toInt()).toList())
          .toList();
    } catch (_) {
      return [];
    }
  }

  /// União de intervalos sobrepostos/adjacentes (minutos desde 00:00).
  static List<List<int>> _mergeIntervals(List<List<int>> list) {
    final sorted = [...list]..sort((a, b) => a[0].compareTo(b[0]));
    final out = <List<int>>[];
    for (final i in sorted) {
      if (out.isNotEmpty && i[0] <= out.last[1]) {
        if (i[1] > out.last[1]) out.last[1] = i[1];
      } else {
        out.add([i[0], i[1]]);
      }
    }
    return out;
  }

  static int _sumIntervals(List<List<int>> l) =>
      l.fold(0, (a, i) => a + (i[1] - i[0]));

  /// Registra um intervalo de serviço. Trechos que coincidem com intervalos já
  /// registrados no mesmo dia não são contados duas vezes
  /// (10:00–11:00 + 10:00–11:30 = 1:30). Retorna os minutos realmente adicionados.
  Future<int> addInterval(DateTime start, DateTime end) async {
    await _loadFuture;
    if (!end.isAfter(start)) end = end.add(const Duration(days: 1));
    final db = await DatabaseService.getInstance();
    var added = 0;

    var cursor = start;
    while (cursor.isBefore(end)) {
      final dayStart = DateTime(cursor.year, cursor.month, cursor.day);
      final nextDay = dayStart.add(const Duration(days: 1));
      final segEnd = end.isBefore(nextDay) ? end : nextDay;
      final s = cursor.difference(dayStart).inMinutes;
      final e = segEnd.difference(dayStart).inMinutes;

      if (e > s) {
        final old = _readIntervals(db, dayStart);
        final oldSum = _sumIntervals(_mergeIntervals(old));
        final merged = _mergeIntervals([...old, [s, e]]);
        final newSum = _sumIntervals(merged);
        final delta = newSum - oldSum;

        await db.saveSetting(_intervalsKey(dayStart), jsonEncode(merged));

        if (delta > 0) {
          added += delta;
          // Horas do dia (mesma chave do calendário)
          final hoursMap = await getDailyHours(dayStart.year, dayStart.month);
          final oldDayMin = ((hoursMap[dayStart.day] ?? 0) * 60).round();
          hoursMap[dayStart.day] =
              double.parse(((oldDayMin + delta) / 60).toStringAsFixed(4));
          await db.saveSetting(
            'monthly_actual_${dayStart.year}_${dayStart.month}',
            jsonEncode(hoursMap.map((k, v) => MapEntry(k.toString(), v))),
          );
          // Total do mês
          final cur = await _getStatsForMonth(db, dayStart.year, dayStart.month);
          final total = cur.totalMinutes + delta;
          await db.saveSetting(_getStorageKey(dayStart.year, dayStart.month), total);
          if (state.year == dayStart.year && state.month == dayStart.month) {
            state = state.copyWith(totalMinutes: total);
          }
        }
      }
      cursor = segEnd;
    }
    return added;
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
      // O app sempre inicia com Início/Término limpos.
      state = ServiceSession();
      await _clearSession();
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
