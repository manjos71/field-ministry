import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/publisher_profile.dart';
import '../services/database_service.dart';
import 'service_timer_provider.dart';

/// Estado do planejamento mensal
class MonthlyPlanState {
  final int year;
  final int month;
  final Map<int, double> dailyPlans; // dia do mês -> horas planejadas
  final Map<int, double> dailyActual; // dia do mês -> horas realizadas

  const MonthlyPlanState({
    required this.year,
    required this.month,
    this.dailyPlans = const {},
    this.dailyActual = const {},
  });

  double get totalPlannedHours {
    return dailyPlans.values.fold(0.0, (sum, hours) => sum + hours);
  }

  double get totalActualHours {
    return dailyActual.values.fold(0.0, (sum, hours) => sum + hours);
  }

  MonthlyPlanState copyWith({
    int? year,
    int? month,
    Map<int, double>? dailyPlans,
    Map<int, double>? dailyActual,
  }) {
    return MonthlyPlanState(
      year: year ?? this.year,
      month: month ?? this.month,
      dailyPlans: dailyPlans ?? this.dailyPlans,
      dailyActual: dailyActual ?? this.dailyActual,
    );
  }
}

/// Notifier para o perfil do publicador
class PublisherProfileNotifier extends StateNotifier<PublisherProfile> {
  PublisherProfileNotifier() : super(const PublisherProfile()) {
    _loadProfile();
  }

  Future<void> _loadProfile() async {
    try {
      final db = await DatabaseService.getInstance();
      final json = db.getSetting<String>('publisher_profile');
      if (json != null) {
        state = PublisherProfile.fromJson(jsonDecode(json));
      }
    } catch (_) {
      // Mantém o padrão
    }
  }

  Future<void> setType(PublisherType type) async {
    state = state.copyWith(type: type);
    await _saveProfile();
  }

  Future<void> setCustomTargetHours(int hours) async {
    state = state.copyWith(customTargetHours: hours);
    await _saveProfile();
  }

  Future<void> setAuxiliaryTarget(AuxiliaryPioneerTarget target) async {
    state = state.copyWith(auxiliaryTarget: target);
    await _saveProfile();
  }

  Future<void> setCreditHours(int hours) async {
    state = state.copyWith(creditHours: hours);
    await _saveProfile();
  }

  Future<void> _saveProfile() async {
    try {
      final db = await DatabaseService.getInstance();
      await db.saveSetting('publisher_profile', jsonEncode(state.toJson()));
    } catch (_) {
      // Ignora erros de salvamento
    }
  }
}

/// Notifier para o planejamento mensal
class MonthlyPlanNotifier extends StateNotifier<MonthlyPlanState> {
  final Ref _ref;
  
  MonthlyPlanNotifier(this._ref) : super(MonthlyPlanState(
    year: DateTime.now().year,
    month: DateTime.now().month,
  )) {
    _loadPlan();
  }

  String _getStorageKey(int year, int month) {
    return 'monthly_plan_${year}_$month';
  }

  String _getActualStorageKey(int year, int month) {
    return 'monthly_actual_${year}_$month';
  }

  Future<void> _loadPlan() async {
    try {
      final now = DateTime.now();
      final db = await DatabaseService.getInstance();
      
      // Carregar planejamento
      final planKey = _getStorageKey(now.year, now.month);
      final planJson = db.getSetting<String>(planKey);
      Map<int, double> plans = {};
      if (planJson != null) {
        final Map<String, dynamic> data = jsonDecode(planJson);
        data.forEach((key, value) {
          plans[int.parse(key)] = (value as num).toDouble();
        });
      }
      
      // Carregar horas realizadas
      final actualKey = _getActualStorageKey(now.year, now.month);
      final actualJson = db.getSetting<String>(actualKey);
      Map<int, double> actual = {};
      if (actualJson != null) {
        final Map<String, dynamic> data = jsonDecode(actualJson);
        data.forEach((key, value) {
          actual[int.parse(key)] = (value as num).toDouble();
        });
      }
      
      state = MonthlyPlanState(
        year: now.year,
        month: now.month,
        dailyPlans: plans,
        dailyActual: actual,
      );
    } catch (_) {
      // Mantém o padrão
    }
  }

  Future<void> setPlanForDay(int day, double hours) async {
    final newPlans = Map<int, double>.from(state.dailyPlans);
    if (hours > 0) {
      newPlans[day] = hours;
    } else {
      newPlans.remove(day);
    }
    state = state.copyWith(dailyPlans: newPlans);
    await _savePlan();
  }

  Future<void> setActualForDay(int day, double hours, {bool updateMonthlyTotal = false}) async {
    final oldHours = state.dailyActual[day] ?? 0;
    final newActual = Map<int, double>.from(state.dailyActual);
    if (hours > 0) {
      newActual[day] = hours;
    } else {
      newActual.remove(day);
    }
    state = state.copyWith(dailyActual: newActual);
    await _saveActual();
    
    // Se solicitado, atualizar o total mensal com a diferença
    if (updateMonthlyTotal) {
      final difference = hours - oldHours;
      if (difference != 0) {
        final monthlyNotifier = _ref.read(monthlyServiceTimeProvider.notifier);
        final currentMonthly = _ref.read(monthlyServiceTimeProvider);
        final newMinutes = currentMonthly.totalMinutes + (difference * 60).round();
        await monthlyNotifier.setTime(newMinutes > 0 ? newMinutes : 0);
      }
    }
  }

  Future<void> removePlanForDay(int day) async {
    final newPlans = Map<int, double>.from(state.dailyPlans);
    newPlans.remove(day);
    state = state.copyWith(dailyPlans: newPlans);
    await _savePlan();
  }

  Future<void> removeActualForDay(int day, {bool updateMonthlyTotal = false}) async {
    final oldHours = state.dailyActual[day] ?? 0;
    final newActual = Map<int, double>.from(state.dailyActual);
    newActual.remove(day);
    state = state.copyWith(dailyActual: newActual);
    await _saveActual();
    
    // Se solicitado, remover do total mensal
    if (updateMonthlyTotal && oldHours > 0) {
      final monthlyNotifier = _ref.read(monthlyServiceTimeProvider.notifier);
      final currentMonthly = _ref.read(monthlyServiceTimeProvider);
      final newMinutes = currentMonthly.totalMinutes - (oldHours * 60).round();
      await monthlyNotifier.setTime(newMinutes > 0 ? newMinutes : 0);
    }
  }

  Future<void> _savePlan() async {
    try {
      final db = await DatabaseService.getInstance();
      final key = _getStorageKey(state.year, state.month);
      final Map<String, dynamic> data = {};
      state.dailyPlans.forEach((key, value) {
        data[key.toString()] = value;
      });
      await db.saveSetting(key, jsonEncode(data));
    } catch (_) {
      // Ignora erros de salvamento
    }
  }

  Future<void> _saveActual() async {
    try {
      final db = await DatabaseService.getInstance();
      final key = _getActualStorageKey(state.year, state.month);
      final Map<String, dynamic> data = {};
      state.dailyActual.forEach((key, value) {
        data[key.toString()] = value;
      });
      await db.saveSetting(key, jsonEncode(data));
    } catch (_) {
      // Ignora erros de salvamento
    }
  }

  Future<void> checkAndLoadForCurrentMonth() async {
    final now = DateTime.now();
    if (state.year != now.year || state.month != now.month) {
      await _loadPlan();
    }
  }
}

// Providers
final publisherProfileProvider = StateNotifierProvider<PublisherProfileNotifier, PublisherProfile>((ref) {
  return PublisherProfileNotifier();
});

final monthlyPlanProvider = StateNotifierProvider<MonthlyPlanNotifier, MonthlyPlanState>((ref) {
  return MonthlyPlanNotifier(ref);
});

/// Provider para calcular o status de progresso
final progressStatusProvider = Provider<ProgressStatus>((ref) {
  final profile = ref.watch(publisherProfileProvider);
  final monthlyTime = ref.watch(monthlyServiceTimeProvider);
  // Trigger rebuild when plan changes (for future use)
  ref.watch(monthlyPlanProvider);
  
  final now = DateTime.now();
  final daysInMonth = DateTime(now.year, now.month + 1, 0).day;
  final currentDay = now.day;
  
  // Horas realizadas (em horas, não minutos)
  final completedHours = monthlyTime.totalMinutes / 60.0;
  
  // Alvo total do mês
  final targetHours = profile.effectiveTargetHours.toDouble();
  
  if (targetHours <= 0) {
    return ProgressStatus(
      isOnTrack: true,
      completedHours: completedHours,
      expectedHours: 0,
      targetHours: 0,
      daysRemaining: daysInMonth - currentDay,
    );
  }
  
  // Horas esperadas até hoje (proporcional)
  final expectedHours = (targetHours / daysInMonth) * currentDay;
  
  return ProgressStatus(
    isOnTrack: completedHours >= expectedHours,
    completedHours: completedHours,
    expectedHours: expectedHours,
    targetHours: targetHours,
    daysRemaining: daysInMonth - currentDay,
  );
});

/// Status de progresso do publicador
class ProgressStatus {
  final bool isOnTrack;
  final double completedHours;
  final double expectedHours;
  final double targetHours;
  final int daysRemaining;

  const ProgressStatus({
    required this.isOnTrack,
    required this.completedHours,
    required this.expectedHours,
    required this.targetHours,
    required this.daysRemaining,
  });

  /// Horas restantes para atingir a meta
  double get remainingHours => (targetHours - completedHours).clamp(0, double.infinity);
  
  /// Porcentagem de conclusão
  double get completionPercentage => targetHours > 0 ? (completedHours / targetHours * 100).clamp(0, 100) : 0;
  
  /// Horas em atraso (negativo se adiantado)
  double get hoursBehind => expectedHours - completedHours;
}
