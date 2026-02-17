import 'package:flutter/material.dart';

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
          title: 'Territórios',
          value: territoriesCount.toString(),
          color: Colors.blue,
        ),
        StatCard(
          icon: Icons.star,
          title: 'Interessados',
          value: interestedCount.toString(),
          color: Colors.amber,
        ),
        StatCard(
          icon: Icons.history,
          title: 'Visitas',
          value: visitsCount.toString(),
          color: Colors.green,
        ),
        StatCard(
          icon: Icons.calendar_today,
          title: 'Hoje',
          value: DateTime.now().day.toString(),
          color: Colors.purple,
        ),
      ],
    );
  }
}
