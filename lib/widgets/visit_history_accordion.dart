import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/models.dart';
import '../config/theme.dart';
import '../config/app_localizations.dart';

/// Widget de accordion (sanfona) para mostrar o histórico de visitas de um endereço
/// 
/// Esta é a feature principal do app - cada número de rua pode expandir
/// para mostrar todas as visitas anteriores como "children"
class VisitHistoryAccordion extends StatelessWidget {
  final Address address;
  final VoidCallback onAddVisit;
  final Function(Visit) onEditVisit;
  final Function(Visit) onDeleteVisit;
  final VoidCallback onDeleteAddress;

  const VisitHistoryAccordion({
    super.key,
    required this.address,
    required this.onAddVisit,
    required this.onEditVisit,
    required this.onDeleteVisit,
    required this.onDeleteAddress,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final status = address.currentStatus;
    final statusColor = _getStatusColor(status);
    final hasVisits = address.visits.isNotEmpty;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          // Ícone do lado esquerdo com número de visitas
          leading: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: statusColor.withOpacity(0.15),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: statusColor, width: 2),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  address.number,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: address.number.length > 3 ? 12 : 16,
                    color: statusColor,
                  ),
                ),
                if (hasVisits)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                    decoration: BoxDecoration(
                      color: statusColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      '${address.visitCount}',
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          // Título com status atual
          title: Row(
            children: [
              Text(status.icon, style: const TextStyle(fontSize: 18)),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  hasVisits ? status.label : 'Não visitado',
                  style: TextStyle(
                    color: hasVisits ? statusColor : AppColors.textHint,
                    fontWeight: hasVisits ? FontWeight.w500 : FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
          // Subtítulo com última visita
          subtitle: hasVisits
              ? Text(
                      l10n.lastVisitOn(DateFormat('dd/MM/yyyy').format(address.lastVisit!.date), address.lastVisit!.personName),
                  style: Theme.of(context).textTheme.bodySmall,
                )
              : null,
          // Botões de ação
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Botão adicionar visita
              IconButton(
                icon: const Icon(Icons.add_circle_outline),
                onPressed: onAddVisit,
                tooltip: l10n.addVisitTooltip,
                color: AppColors.primary,
              ),
              // Indicador de expansão
              const Icon(Icons.expand_more),
            ],
          ),
          // Lista de visitas (children expandidos)
          children: [
            const Divider(height: 1),
            // Histórico de visitas
            if (address.visits.isEmpty)
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  l10n.noVisitsYet,
                  style: const TextStyle(color: AppColors.textHint),
                ),
              )
            else
              ...address.visits.reversed.map((visit) => _VisitItem(
                    visit: visit,
                    onEdit: () => onEditVisit(visit),
                    onDelete: () => onDeleteVisit(visit),
                  )),
            // Botão para adicionar nova visita
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  TextButton.icon(
                    onPressed: onAddVisit,
                    icon: const Icon(Icons.add),
                    label: Text(l10n.newVisit),
                  ),
                  const Spacer(),
                  TextButton.icon(
                    onPressed: onDeleteAddress,
                    icon: const Icon(Icons.delete_outline, size: 18),
                    label: Text(l10n.deleteNumberLabel),
                    style: TextButton.styleFrom(foregroundColor: Colors.red),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
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
      case VisitStatus.otherLanguage:
        return AppColors.statusOtherLanguage;
      case VisitStatus.letterLeft:
        return AppColors.statusLetterLeft;
      case VisitStatus.returnVisit:
        return AppColors.statusReturnVisit;
    }
  }
}

/// Item individual de visita dentro do accordion
class _VisitItem extends StatelessWidget {
  final Visit visit;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const _VisitItem({
    required this.visit,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return InkWell(
      onTap: onEdit,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Linha de conexão visual (estilo árvore)
            SizedBox(
              width: 24,
              child: Column(
                children: [
                  Container(
                    width: 2,
                    height: 8,
                    color: AppColors.divider,
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: _getStatusColor(visit.status), width: 2),
                    ),
                  ),
                  Container(
                    width: 2,
                    height: 8,
                    color: AppColors.divider,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            // Conteúdo da visita
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      // Data
                      Text(
                        DateFormat('dd/MMM/yyyy', 'pt_BR').format(visit.date),
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      const SizedBox(width: 8),
                      // Status chip
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: _getStatusColor(visit.status).withOpacity(0.15),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(visit.status.icon, style: const TextStyle(fontSize: 12)),
                            const SizedBox(width: 4),
                            Text(
                              visit.status.label,
                              style: TextStyle(
                                fontSize: 11,
                                color: _getStatusColor(visit.status),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // Nome da pessoa e/ou categoria
                  if (visit.personName != null || visit.personCategory != null) ...[
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        if (visit.personCategory != null) ...[
                           ClipOval(
                             child: Image.asset(
                               visit.personCategory!.getIconPath(visit.gender),
                               width: 20,
                               height: 20,
                               fit: BoxFit.cover,
                               errorBuilder: (_, __, ___) => const Icon(Icons.person_outline, size: 16, color: AppColors.textSecondary),
                             ),
                           ),
                           const SizedBox(width: 8),
                        ] else
                           const Icon(Icons.person_outline, size: 14, color: AppColors.textSecondary),
                        
                        const SizedBox(width: 4),
                        if (visit.personName != null)
                          Text(
                            visit.personName!,
                            style: Theme.of(context).textTheme.bodySmall,
                          )
                        else if (visit.personCategory != null)
                          Text(
                            visit.personCategory!.label,
                             style: Theme.of(context).textTheme.bodySmall?.copyWith(fontStyle: FontStyle.italic),
                          ),
                      ],
                    ),
                  ],
                  // Telefone
                  if (visit.phoneNumber != null) ...[
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        const Icon(Icons.phone_outlined, size: 14, color: AppColors.textSecondary),
                        const SizedBox(width: 4),
                        Text(
                          visit.phoneNumber!,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ],
                  // Notas
                  if (visit.notes != null) ...[
                    const SizedBox(height: 4),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Theme.of(context).inputDecorationTheme.fillColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.notes, size: 14, color: AppColors.textSecondary),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              visit.notes!,
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                    fontStyle: FontStyle.italic,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            ),
            // Botões de ação
            PopupMenuButton<String>(
              icon: const Icon(Icons.more_vert, size: 18),
              onSelected: (value) {
                if (value == 'edit') {
                  onEdit();
                } else if (value == 'delete') {
                  onDelete();
                }
              },
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 'edit',
                  child: Row(
                    children: [
                      const Icon(Icons.edit, size: 18),
                      const SizedBox(width: 8),
                      Text(l10n.edit),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 'delete',
                  child: Row(
                    children: [
                      const Icon(Icons.delete, size: 18, color: Colors.red),
                      const SizedBox(width: 8),
                      Text(l10n.delete, style: const TextStyle(color: Colors.red)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
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
      case VisitStatus.otherLanguage:
        return AppColors.statusOtherLanguage;
      case VisitStatus.letterLeft:
        return AppColors.statusLetterLeft;
      case VisitStatus.returnVisit:
        return AppColors.statusReturnVisit;
    }
  }
}
