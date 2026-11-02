import 'package:flutter/material.dart';
import '../models/models.dart';
import '../config/theme.dart';
import '../config/app_localizations.dart';

/// Widget para selecionar o status de uma visita
/// Mostra todos os status disponíveis em um grid

class StatusSelector extends StatelessWidget {
  final VisitStatus? selectedStatus;
  final Function(VisitStatus) onStatusSelected;

  final bool isChild;
  final List<VisitStatus>? excludeStatus;

  const StatusSelector({
    super.key,
    this.selectedStatus,
    required this.onStatusSelected,
    this.isChild = false,
    this.excludeStatus,
  });

  static const List<VisitStatus> allowedStatus = [
    VisitStatus.notHome,
    VisitStatus.noTime,
    VisitStatus.notAnswered,
    VisitStatus.answered,
    VisitStatus.interested,
    VisitStatus.returnVisit,
    VisitStatus.bibleStudy,
    VisitStatus.otherLanguage,
    VisitStatus.witness,
    VisitStatus.notAtHome,
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
      case VisitStatus.returnVisit:
        return l10n.returnVisit;
      case VisitStatus.bibleStudy:
        return l10n.bibleStudy;
      case VisitStatus.otherLanguage:
        return l10n.otherLanguage;
      case VisitStatus.witness:
        return l10n.witness;
      case VisitStatus.notAtHome:
        return l10n.notAtHome;
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
      case VisitStatus.returnVisit:
        return AppColors.statusReturnVisit;
      case VisitStatus.bibleStudy:
        return AppColors.statusBibleStudy;
      case VisitStatus.otherLanguage:
        return AppColors.statusOtherLanguage;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    final filteredStatus = allowedStatus.where((status) {
      if (excludeStatus != null && excludeStatus!.contains(status)) return false;

      if (isChild) {
        // Para child, APENAS esses 3
        return status == VisitStatus.returnVisit ||
               status == VisitStatus.bibleStudy ||
               status == VisitStatus.notAtHome;
      } else {
        // Para parent, ocultar os que são exclusivos de child
        return status != VisitStatus.returnVisit &&
               status != VisitStatus.bibleStudy &&
               status != VisitStatus.notAtHome;
      }
    }).toList();

    // Garantir que o status atual esteja na lista, mesmo que devesse ser filtrado
    if (selectedStatus != null && !filteredStatus.contains(selectedStatus)) {
      filteredStatus.add(selectedStatus!);
    }

    return DropdownButtonFormField<VisitStatus>(
      initialValue: selectedStatus,
      decoration: InputDecoration(
        labelText: l10n.visitStatus,
        border: const OutlineInputBorder(),
      ),
      items: filteredStatus.map((status) {
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
        return filteredStatus.map((status) {
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
