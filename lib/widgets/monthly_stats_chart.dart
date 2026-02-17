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

  MonthlyStats({
    required this.year,
    required this.month,
    required this.hours,
    required this.returnVisits,
  });
}

/// Provider for monthly stats (last 3 months)
final monthlyStatsProvider = FutureProvider<List<MonthlyStats>>((ref) async {
  final monthlyNotifier = ref.read(monthlyServiceTimeProvider.notifier);
  final territories = ref.watch(territoriesProvider).asData?.value ?? [];
  
  // Get historical hours data
  final hoursHistory = await monthlyNotifier.getHistoricalData(3);
  
  // Calculate return visits per month
  final now = DateTime.now();
  final List<MonthlyStats> stats = [];
  
  for (int i = 0; i < 3; i++) {
    final targetMonth = DateTime(now.year, now.month - (2 - i), 1);
    final monthStart = DateTime(targetMonth.year, targetMonth.month, 1);
    final monthEnd = DateTime(targetMonth.year, targetMonth.month + 1, 0, 23, 59, 59);
    
    // Count return visits for this month
    int returnVisitCount = 0;
    for (final territory in territories) {
      for (final street in territory.streets) {
        for (final address in street.addresses) {
          for (final visit in address.visits) {
            if (visit.date.isAfter(monthStart.subtract(const Duration(days: 1))) &&
                visit.date.isBefore(monthEnd.add(const Duration(days: 1))) &&
                visit.status == VisitStatus.returnVisit) {
              returnVisitCount++;
            }
          }
        }
      }
    }
    
    // Find corresponding hours
    final hoursData = hoursHistory.firstWhere(
      (h) => h.year == targetMonth.year && h.month == targetMonth.month,
      orElse: () => MonthlyServiceTime(year: targetMonth.year, month: targetMonth.month),
    );
    
    stats.add(MonthlyStats(
      year: targetMonth.year,
      month: targetMonth.month,
      hours: hoursData.totalMinutes / 60,
      returnVisits: returnVisitCount,
    ));
  }
  
  return stats;
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
      ],
    );
  }

  Widget _buildChart(List<MonthlyStats> stats, AppLocalizations l10n, BuildContext context) {
    final maxHours = stats.map((s) => s.hours).reduce((a, b) => a > b ? a : b);
    final maxVisits = stats.map((s) => s.returnVisits.toDouble()).reduce((a, b) => a > b ? a : b);
    
    // Scale factor to normalize both lines
    final scale = maxHours > 0 ? maxVisits / maxHours : 1.0;
    
    return LineChart(
      LineChartData(
        gridData: FlGridData(
          show: true,
          drawVerticalLine: true,
          horizontalInterval: maxHours > 0 ? maxHours / 4 : 1,
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
              reservedSize: 40,
              getTitlesWidget: (value, meta) {
                // Show return visits scale
                final visitValue = (value * scale).round();
                if (visitValue < 0) return const SizedBox.shrink();
                return Text(
                  '$visitValue',
                  style: TextStyle(
                    color: Colors.orange.shade700,
                    fontSize: 10,
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
        maxY: maxHours > 0 ? maxHours * 1.1 : 10,
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
              final scaledValue = scale > 0 ? e.value.returnVisits / scale : 0.0;
              return FlSpot(e.key.toDouble(), scaledValue);
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
        ],
        lineTouchData: LineTouchData(
          touchTooltipData: LineTouchTooltipData(
            getTooltipItems: (touchedSpots) {
              return touchedSpots.map((spot) {
                final isHours = spot.barIndex == 0;
                final value = isHours 
                    ? '${spot.y.toStringAsFixed(1)}h'
                    : '${stats[spot.x.toInt()].returnVisits} ${l10n.returnVisit.toLowerCase()}';
                return LineTooltipItem(
                  value,
                  TextStyle(
                    color: isHours ? Colors.blue : Colors.orange,
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
    return l10n.getMonthName(month).substring(0, 3);
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
