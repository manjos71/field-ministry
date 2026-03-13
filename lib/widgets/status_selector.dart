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

  static const List<VisitStatus> allowedStatus = [
    VisitStatus.notHome,
    VisitStatus.noTime,
    VisitStatus.notAnswered,
    VisitStatus.answered,
    VisitStatus.interested,
    VisitStatus.otherLanguage,
    VisitStatus.witness,
  ];

  String _getStatusLabel(VisitStatus status, AppLocalizations l10n) {
    switch (status) {
      case VisitStatus.notHome:
        return l10n.notHome;
      case VisitStatus.notAnswered:
        return l10n.notAnswered;
      case VisitStatus.noTime:
        return l10n.noTime;
      case VisitStatus.answered:
        return l10n.answered;
      case VisitStatus.interested:
        return l10n.interested;
      case VisitStatus.otherLanguage:
        return l10n.otherLanguage;
      case VisitStatus.witness:
        return l10n.witness;
      default:
        return '';
    }
  }

  Color _getStatusColor(VisitStatus status) {
    switch (status) {
      case VisitStatus.notHome:
        return AppColors.statusNotHome;
      case VisitStatus.notAnswered:
        return AppColors.statusNotInterested;
      case VisitStatus.answered:
        return Colors.green;
      case VisitStatus.interested:
        return AppColors.statusInterested;
      case VisitStatus.otherLanguage:
        return AppColors.statusOtherLanguage;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return DropdownButtonFormField<VisitStatus>(
      value: selectedStatus,
      decoration: const InputDecoration(
        labelText: 'Status da visita',
        border: OutlineInputBorder(),
      ),
      items: allowedStatus.map((status) {
        return DropdownMenuItem<VisitStatus>(
          value: status,
          child: Row(
            children: [
              status.buildIcon(size: 18),
              const SizedBox(width: 8),
              Text(_getStatusLabel(status, l10n)),
            ],
          ),
        );
      }).toList(),
      onChanged: (status) {
        if (status != null) onStatusSelected(status);
      },
      selectedItemBuilder: (context) {
        return allowedStatus.map((status) {
          return Row(
            children: [
              status.buildIcon(size: 18),
              const SizedBox(width: 8),
              Text(_getStatusLabel(status, l10n)),
            ],
          );
        }).toList();
      },
    );
  }
}
