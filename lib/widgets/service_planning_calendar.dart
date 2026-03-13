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
            
            // Summary row with planned hours and target - transparencia + contorno no tema escuro
            Builder(
              builder: (context) {
                final isDark = Theme.of(context).brightness == Brightness.dark;
                final primaryColor = ref.watch(themeColorProvider);
                return Container(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  decoration: BoxDecoration(
                    color: primaryColor.withOpacity(isDark ? 0.5 : 1.0),
                    borderRadius: BorderRadius.circular(8),
                    border: isDark ? Border.all(color: primaryColor, width: 1.5) : null,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildSummaryItem(
                        l10n.planned,
                        '${plan.totalPlannedHours.toStringAsFixed(1)}h',
                        Icons.event_note,
                      ),
                      Container(width: 1, height: 30, color: isDark ? Colors.white54 : Colors.grey.shade300),
                      _buildSummaryItem(
                        l10n.target,
                        '${profile.effectiveTargetHours}h',
                        Icons.flag,
                      ),
                    ],
                  ),
                );
              },
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
                final actualHours = plan.dailyActual[day] ?? 0;
                final isToday = _isToday(day);
                final isPast = _isPastDay(day);
                
                return _DayCell(
                  day: day,
                  plannedHours: plannedHours,
                  actualHours: actualHours,
                  isToday: isToday,
                  isPast: isPast,
                  onTap: () => _showPlanDialog(context, day, plannedHours, actualHours, isPast),
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

  void _showPlanDialog(BuildContext context, int day, double currentPlanned, double currentActual, bool isPast) {
    final l10n = AppLocalizations.of(context);
    final plannedController = TextEditingController(
      text: currentPlanned > 0 ? currentPlanned.toString() : '',
    );
    final actualController = TextEditingController(
      text: currentActual > 0 ? currentActual.toString() : '',
    );
    final notifier = ref.read(monthlyPlanProvider.notifier);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.planningDay(day)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: plannedController,
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              autofocus: !isPast,
              decoration: InputDecoration(
                labelText: l10n.plannedHours,
                hintText: 'Ex: 2.5',
                border: const OutlineInputBorder(),
                suffixText: l10n.hours.toLowerCase(),
                prefixIcon: const Icon(Icons.event_note),
              ),
            ),
            if (isPast || _isToday(day)) ...[
              const SizedBox(height: 16),
              TextField(
                controller: actualController,
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                autofocus: isPast,
                decoration: InputDecoration(
                  labelText: l10n.actualHours,
                  hintText: 'Ex: 2.0',
                  border: const OutlineInputBorder(),
                  suffixText: l10n.hours.toLowerCase(),
                  prefixIcon: const Icon(Icons.check_circle_outline),
                ),
              ),
            ],
          ],
        ),
        actions: [
          if (currentPlanned > 0 || currentActual > 0)
            TextButton(
              onPressed: () {
                notifier.removePlanForDay(day);
                // Remover do total mensal quando remover horas realizadas
                notifier.removeActualForDay(day, updateMonthlyTotal: true);
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
              final planned = double.tryParse(plannedController.text) ?? 0;
              final actual = double.tryParse(actualController.text) ?? 0;
              notifier.setPlanForDay(day, planned);
              if (isPast || _isToday(day)) {
                // Atualizar total mensal com a diferença quando editar manualmente
                notifier.setActualForDay(day, actual, updateMonthlyTotal: true);
              }
              Navigator.pop(context);
            },
            child: Text(l10n.save),
          ),
        ],
      ),
    );
  }
}

class _DayCell extends ConsumerWidget {
  final int day;
  final double plannedHours;
  final double actualHours;
  final bool isToday;
  final bool isPast;
  final VoidCallback onTap;

  const _DayCell({
    required this.day,
    required this.plannedHours,
    required this.actualHours,
    required this.isToday,
    required this.isPast,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasPlanning = plannedHours > 0;
    // Usar a cor selecionada diretamente do provider para garantir visibilidade no tema escuro
    final primaryColor = ref.watch(themeColorProvider);
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    
    // Determinar se o objetivo foi atingido (apenas para dias passados ou hoje com planejamento)
    final bool canShowResult = (isPast || isToday) && hasPlanning;
    final bool achievedGoal = canShowResult && actualHours >= plannedHours;
    final bool missedGoal = canShowResult && actualHours < plannedHours && actualHours > 0;
    final bool noActual = canShowResult && actualHours == 0;
    
    // Cores com transparência suave - mais visível no tema escuro sem ser muito forte
    final Color planningBgColor;
    if (hasPlanning) {
      // Opacidade moderada para dias planejados
      planningBgColor = primaryColor.withOpacity(isDarkMode ? 0.5 : 0.25);
    } else if (isToday) {
      // Dia atual: transparência leve + contorno
      planningBgColor = primaryColor.withOpacity(isDarkMode ? 0.25 : 0.1);
    } else {
      planningBgColor = Colors.transparent;
    }
    
    // Cor do texto das horas - baseado no resultado
    Color hoursTextColor;
    if (achievedGoal) {
      // Verde para objetivo atingido
      hoursTextColor = Colors.green.shade400;
    } else if (missedGoal || noActual) {
      // Vermelho apagado para objetivo não atingido
      hoursTextColor = isDarkMode ? Colors.red.shade300 : Colors.red.shade400;
    } else {
      // Cor padrão para dias futuros
      hoursTextColor = isDarkMode ? Colors.white : primaryColor;
    }
    
    // Cor do texto do dia
    final dayTextColor = isPast && !isToday 
        ? Colors.grey 
        : (hasPlanning && isDarkMode ? Colors.white : null);
    
    // Mostrar borda no dia atual e nos dias com planejamento no tema escuro
    final bool showBorder = isToday || (hasPlanning && isDarkMode);
    
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: planningBgColor,
          borderRadius: BorderRadius.circular(8),
          border: showBorder 
              ? Border.all(color: primaryColor, width: isToday ? 2 : 1.5)
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
                canShowResult && actualHours > 0 
                    ? '${actualHours}h' 
                    : '${plannedHours}h',
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
