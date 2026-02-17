import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/publisher_profile_provider.dart';
import '../providers/theme_provider.dart';
import '../config/app_localizations.dart';

/// Widget de calendário para planejamento de horas de serviço
class ServicePlanningCalendar extends ConsumerStatefulWidget {
  const ServicePlanningCalendar({super.key});

  @override
  ConsumerState<ServicePlanningCalendar> createState() => _ServicePlanningCalendarState();
}

class _ServicePlanningCalendarState extends ConsumerState<ServicePlanningCalendar> {
  late DateTime _selectedMonth;

  @override
  void initState() {
    super.initState();
    _selectedMonth = DateTime(DateTime.now().year, DateTime.now().month);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final plan = ref.watch(monthlyPlanProvider);
    final profile = ref.watch(publisherProfileProvider);
    
    final daysInMonth = DateTime(_selectedMonth.year, _selectedMonth.month + 1, 0).day;
    final firstDayOfMonth = DateTime(_selectedMonth.year, _selectedMonth.month, 1);
    final firstWeekday = firstDayOfMonth.weekday; // 1 = Monday, 7 = Sunday
    
    // Adjust for Sunday start (0) instead of Monday start (1)
    final startOffset = firstWeekday % 7;
    
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header with month navigation
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.chevron_left),
                  onPressed: () {
                    setState(() {
                      _selectedMonth = DateTime(_selectedMonth.year, _selectedMonth.month - 1);
                    });
                  },
                ),
                Column(
                  children: [
                    Text(
                      l10n.getMonthName(_selectedMonth.month),
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${_selectedMonth.year}',
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  icon: const Icon(Icons.chevron_right),
                  onPressed: () {
                    setState(() {
                      _selectedMonth = DateTime(_selectedMonth.year, _selectedMonth.month + 1);
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 8),
            
            // Summary row with planned hours and target colors adaptados para melhor contraste
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildSummaryItem(
                    l10n.planned,
                    '${plan.totalPlannedHours.toStringAsFixed(1)}h',
                    Icons.event_note,
                  ),
                  Container(width: 1, height: 30, color: Colors.grey.shade300),
                  _buildSummaryItem(
                    l10n.target,
                    '${profile.effectiveTargetHours}h',
                    Icons.flag,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),

            // Weekday headers
            Row(
              children: l10n.weekdayAbbreviations
                  .map((day) => Expanded(
                        child: Center(
                          child: Text(
                            day,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade600,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ))
                  .toList(),
            ),
            const SizedBox(height: 4),

            // Calendar grid
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 7,
                childAspectRatio: 1,
              ),
              itemCount: startOffset + daysInMonth,
              itemBuilder: (context, index) {
                if (index < startOffset) {
                  return const SizedBox();
                }
                
                final day = index - startOffset + 1;
                final plannedHours = plan.dailyPlans[day] ?? 0;
                final isToday = _isToday(day);
                final isPast = _isPastDay(day);
                
                return _DayCell(
                  day: day,
                  plannedHours: plannedHours,
                  isToday: isToday,
                  isPast: isPast,
                  onTap: () => _showPlanDialog(context, day, plannedHours),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSummaryItem(String label, String value, IconData icon) {
    return Column(
      children: [
        Icon(icon, size: 16, color: Colors.grey.shade600),
        const SizedBox(height: 2),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 10,
            color: Colors.grey.shade600,
          ),
        ),
      ],
    );
  }

  bool _isToday(int day) {
    final now = DateTime.now();
    return _selectedMonth.year == now.year &&
        _selectedMonth.month == now.month &&
        day == now.day;
  }

  bool _isPastDay(int day) {
    final now = DateTime.now();
    final date = DateTime(_selectedMonth.year, _selectedMonth.month, day);
    return date.isBefore(DateTime(now.year, now.month, now.day));
  }

  void _showPlanDialog(BuildContext context, int day, double currentHours) {
    final l10n = AppLocalizations.of(context);
    final controller = TextEditingController(
      text: currentHours > 0 ? currentHours.toString() : '',
    );
    final notifier = ref.read(monthlyPlanProvider.notifier);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.planningDay(day)),
        content: TextField(
          controller: controller,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          autofocus: true,
          decoration: InputDecoration(
            labelText: l10n.plannedHours,
            hintText: 'Ex: 2.5',
            border: const OutlineInputBorder(),
            suffixText: l10n.hours.toLowerCase(),
          ),
        ),
        actions: [
          if (currentHours > 0)
            TextButton(
              onPressed: () {
                notifier.removePlanForDay(day);
                Navigator.pop(context);
              },
              child: Text(l10n.remove, style: const TextStyle(color: Colors.red)),
            ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () {
              final hours = double.tryParse(controller.text) ?? 0;
              notifier.setPlanForDay(day, hours);
              Navigator.pop(context);
            },
            child: Text(l10n.save),
          ),
        ],
      ),
    );
  }
}

class _DayCell extends StatelessWidget {
  final int day;
  final double plannedHours;
  final bool isToday;
  final bool isPast;
  final VoidCallback onTap;

  const _DayCell({
    required this.day,
    required this.plannedHours,
    required this.isToday,
    required this.isPast,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final hasPlanning = plannedHours > 0;
    final primaryColor = Theme.of(context).primaryColor;
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    
    // Cores com melhor contraste para o tema escuro
    final planningBgColor = hasPlanning 
        ? (isDarkMode ? primaryColor.withOpacity(0.4) : primaryColor.withOpacity(0.2))
        : (isToday ? primaryColor.withOpacity(isDarkMode ? 0.3 : 0.1) : null);
    
    final hoursTextColor = isDarkMode 
        ? Colors.white 
        : primaryColor;
    
    final dayTextColor = isPast && !isToday 
        ? Colors.grey 
        : (hasPlanning && isDarkMode ? Colors.white : null);
    
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: planningBgColor,
          borderRadius: BorderRadius.circular(8),
          border: isToday 
              ? Border.all(color: primaryColor, width: 2)
              : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              day.toString(),
              style: TextStyle(
                fontSize: 12,
                fontWeight: isToday ? FontWeight.bold : FontWeight.normal,
                color: dayTextColor,
              ),
            ),
            if (hasPlanning)
              Text(
                '${plannedHours}h',
                style: TextStyle(
                  fontSize: 8,
                  color: hoursTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
