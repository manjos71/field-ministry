import 'package:flutter/material.dart';
import '../models/models.dart';
import '../config/theme.dart';
import '../config/app_localizations.dart';

/// Widget para selecionar o status de uma visita
/// Mostra todos os status disponíveis em um grid
class StatusSelector extends StatelessWidget {
  final VisitStatus? selectedStatus;
  final Function(VisitStatus) onStatusSelected;

  const StatusSelector({
    super.key,
    this.selectedStatus,
    required this.onStatusSelected,
  });

  String _getStatusLabel(VisitStatus status, AppLocalizations l10n) {
    switch (status) {
      case VisitStatus.unvisited:
        return l10n.notVisited;
      case VisitStatus.notHome:
        return l10n.notHome;
      case VisitStatus.notAnswered:
        return l10n.notAnswered;
      case VisitStatus.noTime:
        return l10n.noTime;
      case VisitStatus.doNotCall:
        return l10n.doNotCall;
      case VisitStatus.emptyHouse:
        return l10n.emptyHouse;
      case VisitStatus.answered:
        return l10n.answered;
      case VisitStatus.letterLeft:
        return l10n.letterLeft;
      case VisitStatus.returnVisit:
        return l10n.returnVisit;
      case VisitStatus.interested:
        return l10n.interested;
      case VisitStatus.otherLanguage:
        return l10n.otherLanguage;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final sortedStatus = [
      VisitStatus.unvisited,
      VisitStatus.notHome,
      VisitStatus.notAnswered,
      VisitStatus.noTime,
      VisitStatus.doNotCall,
      VisitStatus.emptyHouse,
      VisitStatus.answered,
      VisitStatus.letterLeft,
      VisitStatus.returnVisit,
      VisitStatus.interested,
      VisitStatus.otherLanguage, // Outro idioma por último
    ];

    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: sortedStatus.map((status) {
        final isSelected = selectedStatus == status;
        final color = _getStatusColor(status);

        return InkWell(
          onTap: () => onStatusSelected(status),
          borderRadius: BorderRadius.circular(12),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: isSelected ? color.withOpacity(0.2) : Colors.grey.shade100,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: isSelected ? color : Colors.grey.shade300,
                width: isSelected ? 2 : 1,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(status.icon, style: const TextStyle(fontSize: 16)),
                const SizedBox(width: 6),
                Text(
                  _getStatusLabel(status, l10n),
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                    color: isSelected ? color : AppColors.textPrimary,
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }

  Color _getStatusColor(VisitStatus status) {
    switch (status) {
      case VisitStatus.unvisited:
        return Colors.grey;
      case VisitStatus.notHome:
        return AppColors.statusNotHome;
      case VisitStatus.notAnswered:
        return AppColors.statusNotInterested;
      case VisitStatus.noTime:
        return AppColors.statusNoTime;
      case VisitStatus.interested:
        return AppColors.statusInterested;
      case VisitStatus.doNotCall:
        return AppColors.statusDoNotCall;
      case VisitStatus.emptyHouse:
        return Colors.grey.shade500;
      case VisitStatus.answered:
        return Colors.green;
      case VisitStatus.letterLeft:
        return AppColors.statusLetterLeft;
      case VisitStatus.returnVisit:
        return AppColors.statusReturnVisit;
      case VisitStatus.otherLanguage:
        return AppColors.statusOtherLanguage;
    }
  }
}
