import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fl_chart/fl_chart.dart';
import '../providers/service_timer_provider.dart';
import '../providers/territory_provider.dart';
import '../models/models.dart';
import '../config/app_localizations.dart';

/// Data model for monthly statistics
class MonthlyStats {
  final int year;
  final int month;
  final double hours;
  final int returnVisits;
  final int bibleStudies;
  final int visitedHouses;

  MonthlyStats({
    required this.year,
    required this.month,
    required this.hours,
    required this.returnVisits,
    required this.bibleStudies,
    required this.visitedHouses,
  });
}

final monthlyStatsForMonthProvider =
    FutureProvider.family<MonthlyStats, DateTime>((ref, date) async {
  ref.watch(monthlyServiceTimeProvider);
  final monthlyNotifier = ref.read(monthlyServiceTimeProvider.notifier);
  final territories = ref.watch(territoriesProvider).asData?.value ?? [];

  final monthStart = DateTime(date.year, date.month, 1);
  final monthEnd = DateTime(date.year, date.month + 1, 0, 23, 59, 59);

  // Count return visits for this month from territories
  int territoryReturnVisits = 0;
  final visitedAddressKeys = <String>{};
  
  for (final territory in territories) {
    for (final street in territory.streets) {
      for (final address in street.addresses) {
        var hasVisitInMonth = false;
        for (final visit in address.visits) {
          if (visit.date.isAfter(monthStart.subtract(const Duration(days: 1))) &&
              visit.date.isBefore(monthEnd.add(const Duration(days: 1)))) {
            hasVisitInMonth = true;
            if (visit.status == VisitStatus.returnVisit) {
              territoryReturnVisits++;
            }
          }
        }
        if (hasVisitInMonth) {
          visitedAddressKeys.add('${territory.id}:${street.id}:${address.id}');
        }
      }
    }
  }

  // Get manual/timer data from Hive via the historical data method (or direct get)
  await monthlyNotifier.getHistoricalData(1); // Not efficient but works for now
  // Wait, getHistoricalData(1) always gets 'now'. I need a specific month.
  // I'll add a helper to MonthlyServiceTimeNotifier for single month get.
  
  // For now, let's use the DB directly if we can, or just trust the provider's state if it's the right month.
  // Better: I'll use a new method I'll add to MonthlyServiceTimeNotifier.
  final manualData = await monthlyNotifier.getStatsForSpecificMonth(date.year, date.month);

  return MonthlyStats(
    year: date.year,
    month: date.month,
    hours: manualData.totalMinutes / 60,
    // manualData.revisitCount já inclui as revisitas de território
    // (incrementadas via incrementRevisitCount/recordBibleStudyVisit),
    // portanto não somamos territoryReturnVisits para evitar duplicidade.
    returnVisits: manualData.revisitCount,
    bibleStudies: manualData.bibleStudyCount,
    visitedHouses: visitedAddressKeys.length,
  );
});

final monthlyStatsByMonthsProvider =
    FutureProvider.family<List<MonthlyStats>, int>((ref, months) async {
  final now = DateTime.now();
  final List<MonthlyStats> stats = [];

  for (int i = 0; i < months; i++) {
    final date = DateTime(now.year, now.month - (months - 1 - i), 1);
    final monthStats = await ref.watch(monthlyStatsForMonthProvider(date).future);
    stats.add(monthStats);
  }

  return stats;
});

/// Provider for monthly stats (last 3 months)
final monthlyStatsProvider = FutureProvider<List<MonthlyStats>>((ref) async {
  return ref.watch(monthlyStatsByMonthsProvider(3).future);
});

/// Widget that displays a line chart with hours and return visits
class MonthlyStatsChart extends ConsumerWidget {
  const MonthlyStatsChart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final statsAsync = ref.watch(monthlyStatsProvider);

    return statsAsync.when(
      loading: () => const SizedBox(
        height: 200,
        child: Center(child: CircularProgressIndicator()),
      ),
      error: (_, __) => const SizedBox.shrink(),
      data: (stats) {
        if (stats.isEmpty) return const SizedBox.shrink();

        return Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.last3Months,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                _buildLegend(l10n),
                const SizedBox(height: 16),
                SizedBox(
                  height: 200,
                  child: _buildChart(stats, l10n, context),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildLegend(AppLocalizations l10n) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _LegendItem(color: Colors.blue, label: l10n.hours),
        const SizedBox(width: 24),
        _LegendItem(color: Colors.orange, label: l10n.returnVisit),
        const SizedBox(width: 24),
        const _LegendItem(color: Colors.purple, label: 'Estudos'),
      ],
    );
  }

  Widget _buildChart(
      List<MonthlyStats> stats, AppLocalizations l10n, BuildContext context) {
    final maxHours = stats.map((s) => s.hours).reduce((a, b) => a > b ? a : b);
    final maxVisits = stats
        .map((s) => s.returnVisits.toDouble())
        .reduce((a, b) => a > b ? a : b);
    final maxStudies = stats
        .map((s) => s.bibleStudies.toDouble())
        .reduce((a, b) => a > b ? a : b);
    // Escala fixa (mesma régua): 1 revisita/estudo = 1 unidade no eixo Y.
    // Assim, um valor 1 fica visualmente abaixo da marca de 2h no eixo esquerdo.
    final maxYBase = [maxHours, maxVisits, maxStudies]
        .reduce((a, b) => a > b ? a : b);
    final chartMaxY = maxYBase > 0 ? maxYBase * 1.1 : 10.0;

    final leftInterval = chartMaxY >= 2 ? 2.0 : 1.0;
    final rightInterval = 1.0;

    return LineChart(
      LineChartData(
        gridData: FlGridData(
          show: true,
          drawVerticalLine: true,
          horizontalInterval: leftInterval,
          verticalInterval: 1,
          getDrawingHorizontalLine: (value) => FlLine(
            color: Colors.grey.shade300,
            strokeWidth: 1,
          ),
          getDrawingVerticalLine: (value) => FlLine(
            color: Colors.grey.shade300,
            strokeWidth: 1,
          ),
        ),
        titlesData: FlTitlesData(
          show: true,
          rightTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 56,
              interval: rightInterval,
              getTitlesWidget: (value, meta) {
                final visitValue = maxVisits > 0 ? value.round() : null;
                final studyValue = maxStudies > 0 ? value.round() : null;

                final canShowVisits =
                    visitValue != null && visitValue >= 0 && visitValue <= maxVisits.round();
                final canShowStudies =
                    studyValue != null && studyValue >= 0 && studyValue <= maxStudies.round();

                if (!canShowVisits && !canShowStudies) {
                  return const SizedBox.shrink();
                }

                return Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (canShowVisits)
                        Text(
                          '$visitValue',
                          style: TextStyle(
                            color: Colors.orange.shade700,
                            fontSize: 10,
                            height: 1.0,
                          ),
                        ),
                      if (canShowStudies)
                        Text(
                          '$studyValue',
                          style: TextStyle(
                            color: Colors.purple.shade700,
                            fontSize: 10,
                            height: 1.0,
                          ),
                        ),
                    ],
                  ),
                );
              },
            ),
          ),
          topTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 30,
              interval: 1,
              getTitlesWidget: (value, meta) {
                final index = value.toInt();
                if (index < 0 || index >= stats.length) {
                  return const SizedBox.shrink();
                }
                return Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    _getLocalizedMonth(stats[index].month, l10n),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                );
              },
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 40,
              interval: leftInterval,
              getTitlesWidget: (value, meta) {
                return Text(
                  '${value.toInt()}h',
                  style: TextStyle(
                    color: Colors.blue.shade700,
                    fontSize: 10,
                  ),
                );
              },
            ),
          ),
        ),
        borderData: FlBorderData(
          show: true,
          border: Border.all(color: Colors.grey.shade400),
        ),
        minX: 0,
        maxX: (stats.length - 1).toDouble(),
        minY: 0,
        maxY: chartMaxY,
        lineBarsData: [
          // Hours line (blue)
          LineChartBarData(
            spots: stats.asMap().entries.map((e) {
              return FlSpot(e.key.toDouble(), e.value.hours);
            }).toList(),
            isCurved: true,
            color: Colors.blue,
            barWidth: 3,
            isStrokeCapRound: true,
            dotData: FlDotData(
              show: true,
              getDotPainter: (spot, percent, barData, index) {
                return FlDotCirclePainter(
                  radius: 5,
                  color: Colors.blue,
                  strokeWidth: 2,
                  strokeColor: Colors.white,
                );
              },
            ),
            belowBarData: BarAreaData(
              show: true,
              color: Colors.blue.withOpacity(0.1),
            ),
          ),
          // Return visits line (orange) - scaled to hours
          LineChartBarData(
            spots: stats.asMap().entries.map((e) {
              return FlSpot(e.key.toDouble(), e.value.returnVisits.toDouble());
            }).toList(),
            isCurved: true,
            color: Colors.orange,
            barWidth: 3,
            isStrokeCapRound: true,
            dotData: FlDotData(
              show: true,
              getDotPainter: (spot, percent, barData, index) {
                return FlDotCirclePainter(
                  radius: 5,
                  color: Colors.orange,
                  strokeWidth: 2,
                  strokeColor: Colors.white,
                );
              },
            ),
            belowBarData: BarAreaData(
              show: true,
              color: Colors.orange.withOpacity(0.1),
            ),
          ),
          // Bible studies line (purple) - scaled to hours
          LineChartBarData(
            spots: stats.asMap().entries.map((e) {
              return FlSpot(e.key.toDouble(), e.value.bibleStudies.toDouble());
            }).toList(),
            isCurved: true,
            color: Colors.purple,
            barWidth: 3,
            isStrokeCapRound: true,
            dotData: FlDotData(
              show: true,
              getDotPainter: (spot, percent, barData, index) {
                return FlDotCirclePainter(
                  radius: 5,
                  color: Colors.purple,
                  strokeWidth: 2,
                  strokeColor: Colors.white,
                );
              },
            ),
            belowBarData: BarAreaData(
              show: true,
              color: Colors.purple.withOpacity(0.08),
            ),
          ),
        ],
        lineTouchData: LineTouchData(
          touchTooltipData: LineTouchTooltipData(
            getTooltipItems: (touchedSpots) {
              return touchedSpots.map((spot) {
                final isHours = spot.barIndex == 0;
                final isVisits = spot.barIndex == 1;
                final value = isHours
                    ? '${spot.y.toStringAsFixed(1)}h'
                    : isVisits
                        ? '${stats[spot.x.toInt()].returnVisits} ${l10n.returnVisit.toLowerCase()}'
                        : '${stats[spot.x.toInt()].bibleStudies} estudos';
                return LineTooltipItem(
                  value,
                  TextStyle(
                    color: isHours
                        ? Colors.blue
                        : isVisits
                            ? Colors.orange
                            : Colors.purple,
                    fontWeight: FontWeight.bold,
                  ),
                );
              }).toList();
            },
          ),
        ),
      ),
    );
  }

  String _getLocalizedMonth(int month, AppLocalizations l10n) {
    final monthName = l10n.getMonthName(month);
    if (monthName.isEmpty) return '';
    final short = monthName.length >= 3 ? monthName.substring(0, 3) : monthName;
    return short[0].toUpperCase() + short.substring(1).toLowerCase();
  }
}

class _LegendItem extends StatelessWidget {
  final Color color;
  final String label;

  const _LegendItem({required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 16,
          height: 3,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        const SizedBox(width: 6),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey.shade700,
          ),
        ),
      ],
    );
  }
}
