import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../config/app_localizations.dart';
import '../providers/publisher_profile_provider.dart';
import '../providers/service_timer_provider.dart';

/// Histórico diário do mês: horas, revisitas e estudos por dia, editáveis.
/// Toda edição atualiza os totais do mês (Tempo do Mês, calendário, relatórios).
class MonthlyHistoryScreen extends ConsumerStatefulWidget {
  final int year;
  final int month;

  const MonthlyHistoryScreen({
    super.key,
    required this.year,
    required this.month,
  });

  @override
  ConsumerState<MonthlyHistoryScreen> createState() =>
      _MonthlyHistoryScreenState();
}

class _MonthlyHistoryScreenState extends ConsumerState<MonthlyHistoryScreen> {
  Map<int, double> _hours = {};
  Map<int, int> _revisits = {};
  Map<int, int> _studies = {};
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final n = ref.read(monthlyServiceTimeProvider.notifier);
    // Sincroniza o provider com o mês exibido
    await n.loadMonth(widget.year, widget.month);
    await n.backfillDailyRevisits(widget.year, widget.month);
    final h = await n.getDailyHours(widget.year, widget.month);
    final r = await n.getDailyRevisits(widget.year, widget.month);
    final s = await n.getDailyStudies(widget.year, widget.month);
    if (!mounted) return;
    setState(() {
      _hours = h;
      _revisits = r;
      _studies = s;
      _loading = false;
    });
  }

  String _tr(Map<String, String> m) {
    final code = Localizations.localeOf(context).languageCode;
    return m[code] ?? m['en']!;
  }

  static String _fmt(double hours) {
    final total = (hours * 60).round();
    return '${(total ~/ 60).toString().padLeft(2, '0')}:${(total % 60).toString().padLeft(2, '0')}';
  }

  static double? _parseHours(String raw) {
    final text = raw.trim().replaceAll(',', ':').replaceAll('.', ':');
    if (text.isEmpty) return 0;
    if (text.contains(':')) {
      final parts = text.split(':');
      final hh = int.tryParse(parts[0]);
      final mm = parts.length > 1 ? int.tryParse(parts[1]) ?? 0 : 0;
      if (hh == null) return null;
      return hh + mm / 60.0;
    }
    final v = double.tryParse(text);
    return v;
  }

  Future<void> _editDay(int day) async {
    final l10n = AppLocalizations.of(context);
    final hours = _hours[day] ?? 0;
    final timeCtrl =
        TextEditingController(text: hours > 0 ? _fmt(hours) : '');
    final revCtrl =
        TextEditingController(text: (_revisits[day] ?? 0) > 0 ? '${_revisits[day]}' : '');
    final stuCtrl =
        TextEditingController(text: (_studies[day] ?? 0) > 0 ? '${_studies[day]}' : '');

    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(
            '${day.toString().padLeft(2, '0')}/${widget.month.toString().padLeft(2, '0')}/${widget.year}'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: timeCtrl,
              keyboardType: TextInputType.datetime,
              autofocus: true,
              decoration: InputDecoration(
                labelText: l10n.hoursAndMinutes,
                hintText: l10n.exampleTime,
                suffixText: l10n.timeFormatHhMm,
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.timer),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: revCtrl,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: l10n.revisits,
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.loop),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: stuCtrl,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: l10n.bibleStudies,
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.menu_book),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(ctx, false),
              child: Text(l10n.cancel)),
          FilledButton(
              onPressed: () => Navigator.pop(ctx, true),
              child: Text(l10n.save)),
        ],
      ),
    );
    if (ok != true) return;

    final newHours = _parseHours(timeCtrl.text) ?? hours;
    final newRev = int.tryParse(revCtrl.text.trim()) ?? 0;
    final newStu = int.tryParse(stuCtrl.text.trim()) ?? 0;

    await ref.read(monthlyServiceTimeProvider.notifier).editDay(
          year: widget.year,
          month: widget.month,
          day: day,
          hours: newHours < 0 ? 0 : newHours,
          revisits: newRev < 0 ? 0 : newRev,
          studies: newStu < 0 ? 0 : newStu,
        );
    // Mantém o calendário de planejamento em sincronia
    await ref
        .read(monthlyPlanProvider.notifier)
        .loadMonth(widget.year, widget.month);
    await _load();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final cs = Theme.of(context).colorScheme;
    final profile = ref.watch(publisherProfileProvider);
    final monthly = ref.watch(monthlyServiceTimeProvider);

    final data = (monthly.year == widget.year && monthly.month == widget.month)
        ? monthly
        : MonthlyServiceTime(year: widget.year, month: widget.month);

    final now = DateTime.now();
    final daysInMonth = DateTime(widget.year, widget.month + 1, 0).day;
    final isCurrent = widget.year == now.year && widget.month == now.month;
    final isPast = DateTime(widget.year, widget.month).isBefore(DateTime(now.year, now.month));
    // Dias restantes incluindo hoje
    final daysLeft = isPast ? 0 : (isCurrent ? daysInMonth - now.day + 1 : daysInMonth);

    final target = profile.effectiveTargetHours.toDouble();
    final done = data.totalMinutes / 60.0;
    final remaining = (target - done).clamp(0, double.infinity).toDouble();
    final perDay = daysLeft > 0 ? remaining / daysLeft : 0.0;
    final progress = target > 0 ? (done / target).clamp(0.0, 1.0) : 0.0;

    return Scaffold(
      appBar: AppBar(
        title: Text(
            '${_tr({'pt': 'Histórico', 'en': 'History', 'es': 'Historial'})} • ${l10n.getMonthName(widget.month)} ${widget.year}'),
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                _buildSummary(cs, target, done, remaining, perDay, daysLeft,
                    progress, data),
                const Divider(height: 1),
                Expanded(
                  child: ListView.separated(
                    padding: const EdgeInsets.only(bottom: 24),
                    itemCount: daysInMonth,
                    separatorBuilder: (_, __) => const Divider(height: 1),
                    itemBuilder: (_, i) => _buildDayTile(i + 1, cs, now),
                  ),
                ),
              ],
            ),
    );
  }

  Widget _buildSummary(ColorScheme cs, double target, double done,
      double remaining, double perDay, int daysLeft, double progress,
      MonthlyServiceTime data) {
    final hasTarget = target > 0;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      color: cs.primaryContainer.withOpacity(0.25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (hasTarget) ...[
            Row(
              children: [
                _stat(
                    _tr({
                      'pt': 'Restam',
                      'en': 'Remaining',
                      'es': 'Restan'
                    }),
                    remaining <= 0 ? '✓' : '${remaining.toStringAsFixed(1)}h',
                    cs.primary),
                _stat(
                    _tr({
                      'pt': 'Por dia',
                      'en': 'Per day',
                      'es': 'Por día'
                    }),
                    daysLeft > 0 && remaining > 0
                        ? _fmt(perDay)
                        : '--',
                    cs.secondary),
                _stat(
                    _tr({
                      'pt': 'Dias restantes',
                      'en': 'Days left',
                      'es': 'Días restantes'
                    }),
                    '$daysLeft',
                    cs.tertiary),
              ],
            ),
            const SizedBox(height: 12),
            LinearProgressIndicator(value: progress, minHeight: 8),
            const SizedBox(height: 6),
            Text(
              '${_fmt(done)} / ${target.toStringAsFixed(0)}h  •  ${(progress * 100).round()}%',
              style: TextStyle(fontSize: 12, color: cs.onSurfaceVariant),
            ),
            if (remaining > 0 && daysLeft > 0) ...[
              const SizedBox(height: 4),
              Text(
                _tr({
                  'pt':
                      'Faça ${_fmt(perDay)} por dia nos próximos $daysLeft dias para atingir a meta.',
                  'en':
                      'Do ${_fmt(perDay)} per day over the next $daysLeft days to reach your goal.',
                  'es':
                      'Haz ${_fmt(perDay)} por día en los próximos $daysLeft días para alcanzar la meta.',
                }),
                style: TextStyle(fontSize: 12, color: cs.onSurface),
              ),
            ],
          ] else
            Text(
              _tr({
                'pt': 'Defina uma meta de horas em Config para ver o quanto falta.',
                'en': 'Set an hours goal in Settings to see what is left.',
                'es': 'Define una meta de horas en Config para ver cuánto falta.',
              }),
              style: TextStyle(color: cs.onSurfaceVariant),
            ),
          const SizedBox(height: 8),
          Text(
            '${l10n(context).revisits}: ${data.revisitCount}   •   ${l10n(context).bibleStudies}: ${data.bibleStudyCount}',
            style: TextStyle(fontSize: 12, color: cs.onSurfaceVariant),
          ),
        ],
      ),
    );
  }

  AppLocalizations l10n(BuildContext c) => AppLocalizations.of(c);

  Widget _stat(String label, String value, Color color) {
    return Expanded(
      child: Column(
        children: [
          Text(value,
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold, color: color)),
          const SizedBox(height: 2),
          Text(label,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 11)),
        ],
      ),
    );
  }

  Widget _buildDayTile(int day, ColorScheme cs, DateTime now) {
    final h = _hours[day] ?? 0;
    final r = _revisits[day] ?? 0;
    final s = _studies[day] ?? 0;
    final date = DateTime(widget.year, widget.month, day);
    final isToday = date.year == now.year &&
        date.month == now.month &&
        date.day == now.day;
    final isFuture = date.isAfter(DateTime(now.year, now.month, now.day));
    final hasData = h > 0 || r > 0 || s > 0;
    const weekdays = ['D', 'S', 'T', 'Q', 'Q', 'S', 'S'];

    return ListTile(
      dense: true,
      tileColor: isToday ? cs.primary.withOpacity(0.08) : null,
      leading: SizedBox(
        width: 36,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$day',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: isFuture ? cs.onSurfaceVariant : cs.onSurface)),
            Text(weekdays[date.weekday % 7],
                style: TextStyle(fontSize: 10, color: cs.onSurfaceVariant)),
          ],
        ),
      ),
      title: hasData
          ? Wrap(
              spacing: 12,
              children: [
                if (h > 0)
                  Row(mainAxisSize: MainAxisSize.min, children: [
                    Icon(Icons.timer, size: 14, color: cs.primary),
                    const SizedBox(width: 4),
                    Text(_fmt(h),
                        style: const TextStyle(fontWeight: FontWeight.w600)),
                  ]),
                if (r > 0)
                  Row(mainAxisSize: MainAxisSize.min, children: [
                    const Icon(Icons.loop, size: 14, color: Colors.orange),
                    const SizedBox(width: 4),
                    Text('$r'),
                  ]),
                if (s > 0)
                  Row(mainAxisSize: MainAxisSize.min, children: [
                    const Text('📖', style: TextStyle(fontSize: 12)),
                    const SizedBox(width: 4),
                    Text('$s'),
                  ]),
              ],
            )
          : Text('—', style: TextStyle(color: cs.onSurfaceVariant)),
      trailing: Icon(Icons.edit, size: 16, color: cs.onSurfaceVariant),
      onTap: () => _editDay(day),
    );
  }
}
