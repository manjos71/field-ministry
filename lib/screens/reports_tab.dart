import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../providers/territory_provider.dart';
import '../providers/service_timer_provider.dart';
import '../providers/publisher_profile_provider.dart';
import 'package:field_ministry/services/service_report_service.dart';
import 'package:share_plus/share_plus.dart';
import '../config/app_localizations.dart';
import '../widgets/monthly_stats_chart.dart';

class ReportsTab extends ConsumerWidget {
  const ReportsTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.reports),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            _ServiceTimerCard(),
            SizedBox(height: 16),
            MonthlyStatsChart(),
          ],
        ),
      ),
    );
  }
}

class _ServiceTimerCard extends ConsumerWidget {
  const _ServiceTimerCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final session = ref.watch(serviceTimerProvider);
    final notifier = ref.read(serviceTimerProvider.notifier);
    final monthlyNotifier = ref.read(monthlyServiceTimeProvider.notifier);
    final monthlyPlanNotifier = ref.read(monthlyPlanProvider.notifier);

    return Card(
      elevation: 4,
      surfaceTintColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
             // Header do Cronômetro
             Text(
               l10n.serviceTimer,
               style: const TextStyle(
                 fontSize: 16,
                 fontWeight: FontWeight.bold,
                 color: Colors.grey,
               ),
             ),
             const SizedBox(height: 16),
             Row(
               children: [
                 Expanded(
                   child: _TimeInputButton(
                     label: l10n.start,
                     time: session.startTime,
                     color: Colors.green,
                     onTap: () => notifier.setStartTime(DateTime.now()),
                     onLongPress: () async {
                       final now = DateTime.now();
                       final time = await showTimePicker(
                         context: context,
                         initialTime: TimeOfDay.fromDateTime(session.startTime ?? now),
                       );
                       if (time != null) {
                         final newDate = DateTime(now.year, now.month, now.day, time.hour, time.minute);
                         notifier.setStartTime(newDate);
                       }
                     },
                   ),
                 ),
                 const SizedBox(width: 12),
                 Expanded(
                   child: _TimeInputButton(
                     label: l10n.end,
                     time: session.endTime,
                     color: Colors.red,
                     onTap: () => notifier.setEndTime(DateTime.now()),
                     onLongPress: () async {
                       final now = DateTime.now();
                       final time = await showTimePicker(
                         context: context,
                         initialTime: TimeOfDay.fromDateTime(session.endTime ?? now),
                       );
                       if (time != null) {
                         final newDate = DateTime(now.year, now.month, now.day, time.hour, time.minute);
                         notifier.setEndTime(newDate);
                       }
                     },
                   ),
                 ),
               ],
             ),
             const SizedBox(height: 24),
             // Buttons Row
             Row(
               children: [
                 Expanded(
                   child: FilledButton.icon(
                      onPressed: (session.startTime != null && session.endTime != null) 
                          ? () async {
                              // Add time to monthly total
                              await monthlyNotifier.addTime(session.duration);
                              
                              // Also add to daily actual for today
                              final today = DateTime.now().day;
                              final plan = ref.read(monthlyPlanProvider);
                              final currentActual = plan.dailyActual[today] ?? 0;
                              final hoursToAdd = session.duration.inMinutes / 60.0;
                              await monthlyPlanNotifier.setActualForDay(today, currentActual + hoursToAdd);
                              
                              // Reset session
                              await notifier.reset();
                              if (context.mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(l10n.timeAddedToMonth),
                                    backgroundColor: Colors.green,
                                  ),
                                );
                              }
                            }
                          : null,
                      icon: const Icon(Icons.add_circle),
                      label: Text(l10n.add.toUpperCase()),
                      style: FilledButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      ),
                   ),
                 ),
                 const SizedBox(width: 8),
                 Expanded(
                   child: OutlinedButton.icon(
                      onPressed: (session.startTime != null && session.endTime != null) 
                          ? () => _generateReport(context, ref)
                          : null,
                      icon: const Icon(Icons.assessment),
                      label: Text(l10n.report.toUpperCase()),
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      ),
                   ),
                 ),
               ],
             ),
             const SizedBox(height: 16),
             // Reset Button
             TextButton.icon(
               onPressed: (session.startTime != null || session.endTime != null)
                   ? () => notifier.reset()
                   : null,
               icon: const Icon(Icons.refresh, size: 18),
               label: Text(l10n.clearSession),
             ),
          ],
        ),
      ),
    );
  }

  Future<void> _generateReport(BuildContext context, WidgetRef ref) async {
    final l10n = AppLocalizations.of(context);
    final session = ref.read(serviceTimerProvider);
    final elapsed = session.duration;
    
    // Collect data
    final territories = ref.read(territoriesProvider).asData?.value ?? [];
    
    final report = ServiceReportService.collectSessionData(
      territories: territories,
      sessionStart: session.startTime!, 
      workTime: elapsed,
    );
    
    final message = ServiceReportService.generateReport(
      workTime: report.workTime,
      totalVisits: report.totalVisits,
      notHomeCount: report.notHomeCount,
      interestedCount: report.interestedCount,
      otherStatusCount: report.otherStatusCount,
      fieldServiceReportLabel: l10n.fieldServiceReport,
      timeWorkedLabel: l10n.timeWorked,
      totalVisitsLabel: l10n.totalVisits,
      breakdownLabel: l10n.breakdown,
      notHomeLabel: l10n.notHome,
      interestedLabel: l10n.interested,
      othersLabel: l10n.others,
      generatedAtLabel: l10n.generatedAt(DateFormat('dd/MM/yyyy HH:mm').format(DateTime.now())),
    );

    if (context.mounted) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(l10n.serviceReport),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Theme.of(context).dividerColor),
                  ),
                  child: SelectableText(message),
                ),
                const SizedBox(height: 16),
                Text('${l10n.share}:', style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    ActionChip(
                      avatar: const Icon(Icons.share, size: 16, color: Colors.green),
                      label: const Text('WhatsApp'),
                      onPressed: () {
                         Share.share(message); 
                      },
                    ),
                    if (kIsWeb)
                      ActionChip(
                        avatar: const Icon(Icons.download, size: 16, color: Colors.blue),
                        label: Text(l10n.exportCsv),
                        onPressed: () async {
                           final db = await ref.read(databaseServiceProvider.future);
                           final fields = db.getSetting<List<dynamic>>('csv_export_fields')?.cast<String>() ?? [];
                           final csv = ServiceReportService.generateNotHomeCSV(report.notHomeAddresses, fields);
                           ServiceReportService.downloadCSV(csv, 'nao_em_casa.csv');
                        },
                      ),
                    if (!kIsWeb)
                      ActionChip(
                        avatar: const Icon(Icons.table_chart, size: 16, color: Colors.blue),
                        label: Text(l10n.csvNotHome),
                        onPressed: () async {
                          final db = await ref.read(databaseServiceProvider.future);
                          final fields = db.getSetting<List<dynamic>>('csv_export_fields')?.cast<String>() ?? [];
                          
                          final csv = ServiceReportService.generateNotHomeCSV(report.notHomeAddresses, fields);
                          
                          // Save to temp file and share
                          final directory = await Directory.systemTemp.createTemp();
                          final file = File('${directory.path}/nao_em_casa.csv');
                          await file.writeAsString(csv);
                          
                          await Share.shareXFiles([XFile(file.path)], text: l10n.csvNotHome);
                        },
                      ),
                  ],
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(l10n.close),
            ),
          ],
        ),
      );
    }
  }
}

class _TimeInputButton extends StatelessWidget {
  final String label;
  final DateTime? time;
  final Color color;
  final VoidCallback onTap;
  final VoidCallback onLongPress;

  const _TimeInputButton({
    required this.label,
    required this.time,
    required this.color,
    required this.onTap,
    required this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onLongPress: onLongPress,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: color.withOpacity(0.5)),
        ),
        child: Column(
          children: [
            Text(
              label,
              style: TextStyle(
                color: color,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              time != null ? DateFormat('HH:mm').format(time!) : '--:--',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

