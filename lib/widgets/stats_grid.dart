import 'package:flutter/material.dart';
import '../config/app_localizations.dart';

/// Card de estatística reutilizável
class StatCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final Color color;

  const StatCard({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 24, color: color),
            const SizedBox(height: 4),
            Text(
              value,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 10),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

/// Grid de estatísticas
class StatsGrid extends StatelessWidget {
  final int territoriesCount;
  final int interestedCount;
  final int visitsCount;

  const StatsGrid({
    super.key,
    required this.territoriesCount,
    required this.interestedCount,
    required this.visitsCount,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
      childAspectRatio: 1.6,
      children: [
        StatCard(
          icon: Icons.map,
          title: l10n.territoriesCount,
          value: territoriesCount.toString(),
          color: Colors.blue,
        ),
        StatCard(
          icon: Icons.star,
          title: l10n.interestedCount,
          value: interestedCount.toString(),
          color: Colors.amber,
        ),
        StatCard(
          icon: Icons.history,
          title: l10n.visitsCount,
          value: visitsCount.toString(),
          color: Colors.green,
        ),
        StatCard(
          icon: Icons.calendar_today,
          title: l10n.today,
          value: DateTime.now().day.toString(),
          color: Colors.purple,
        ),
      ],
    );
  }
}
