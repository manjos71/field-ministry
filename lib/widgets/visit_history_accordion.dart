import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/models.dart';
import '../config/theme.dart';
import '../config/app_localizations.dart';

String _visitStatusLabel(AppLocalizations l10n, VisitStatus status) {
  switch (status) {
    case VisitStatus.unvisited:
      return l10n.notVisited;
    case VisitStatus.notHome:
      return l10n.notHome;
    case VisitStatus.notAnswered:
      return l10n.notAnswered;
    case VisitStatus.noTime:
      return l10n.noTime;
    case VisitStatus.interested:
      return l10n.interested;
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
    case VisitStatus.otherLanguage:
      return l10n.otherLanguage;
    case VisitStatus.bibleStudy:
      return l10n.bibleStudy;
    case VisitStatus.witness:
      return l10n.witness;
    case VisitStatus.notAtHome:
      return l10n.notAtHome;
  }
}

/// Widget de accordion (sanfona) para mostrar o historico de visitas de um endereco
class VisitHistoryAccordion extends StatelessWidget {
  final Address address;
  final bool initiallyExpanded;
  final VoidCallback onAddVisit;
  final Function(Visit) onEditVisit;
  final Function(Visit) onDeleteVisit;
  final VoidCallback onDeleteAddress;
  final Function(Visit, VisitStatus)? onAddChildVisit;

  const VisitHistoryAccordion({
    super.key,
    required this.address,
    this.initiallyExpanded = false,
    required this.onAddVisit,
    required this.onEditVisit,
    required this.onDeleteVisit,
    required this.onDeleteAddress,
    this.onAddChildVisit,
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
          initiallyExpanded: initiallyExpanded,
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
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
          title: Row(
            children: [
              Text(status.icon, style: const TextStyle(fontSize: 18)),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  hasVisits ? _visitStatusLabel(l10n, status) : l10n.notVisited,
                  style: TextStyle(
                    color: hasVisits ? statusColor : AppColors.textHint,
                    fontWeight: hasVisits ? FontWeight.w500 : FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
          subtitle: hasVisits
              ? Text(
                  l10n.lastVisitOn(
                    DateFormat('dd/MM/yyyy HH:mm')
                        .format(address.lastVisit!.date),
                    address.lastVisit!.personName,
                  ),
                  style: Theme.of(context).textTheme.bodySmall,
                )
              : null,
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(Icons.add_circle_outline),
                onPressed: onAddVisit,
                tooltip: l10n.addVisitTooltip,
                color: AppColors.primary,
              ),
              const Icon(Icons.expand_more),
            ],
          ),
          children: [
            const Divider(height: 1),
            if (address.visits.isEmpty)
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  l10n.noVisitsYet,
                  style: const TextStyle(color: AppColors.textHint),
                ),
              )
            else
              ..._buildVisitNodes(address.visits),
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

  List<Widget> _buildVisitNodes(List<Visit> allVisits) {
    final topLevel = allVisits.where((v) => v.parentId == null).toList()
      ..sort((a, b) => b.date.compareTo(a.date));

    return topLevel.map((parent) {
      final children = allVisits.where((v) => v.parentId == parent.id).toList()
        ..sort((a, b) => a.date.compareTo(b.date));

      if (parent.status == VisitStatus.interested || children.isNotEmpty) {
        return _InterestedVisitNode(
          parentVisit: parent,
          childVisits: children,
          onEdit: () => onEditVisit(parent),
          onDelete: () => onDeleteVisit(parent),
          onAddChild: onAddChildVisit != null ? (status) => onAddChildVisit!(parent, status) : null,
          onEditChild: onEditVisit,
          onDeleteChild: onDeleteVisit,
        );
      } else {
        return _VisitItem(
          visit: parent,
          onEdit: () => onEditVisit(parent),
          onDelete: () => onDeleteVisit(parent),
        );
      }
    }).toList();
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
      case VisitStatus.bibleStudy:
        return AppColors.statusBibleStudy;
      case VisitStatus.witness:
        return Colors.purple;
      case VisitStatus.notAtHome:
        return Colors.orange;
    }
  }
}

class _VisitItem extends StatelessWidget {
  final Visit visit;
  final Visit? parentVisit;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const _VisitItem({
    required this.visit,
    this.parentVisit,
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
            SizedBox(
              width: 24,
              child: Column(
                children: [
                  Container(width: 2, height: 8, color: AppColors.divider),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: _getStatusColor(visit.status), width: 2),
                    ),
                  ),
                  Container(width: 2, height: 8, color: AppColors.divider),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        DateFormat('dd/MMM/yyyy HH:mm', 'pt_BR')
                            .format(visit.date),
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      const SizedBox(width: 8),
                      Flexible(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                            color:
                                _getStatusColor(visit.status).withOpacity(0.15),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(visit.status.icon,
                                  style: const TextStyle(fontSize: 12)),
                              const SizedBox(width: 4),
                              Flexible(
                                child: Text(
                                  _visitStatusLabel(l10n, visit.status),
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: _getStatusColor(visit.status),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  if (visit.personName != null ||
                      visit.personCategory != null ||
                      parentVisit?.personCategory != null) ...[
                    const SizedBox(height: 4),
                    Builder(builder: (context) {
                      final displayCategory =
                          visit.personCategory ?? parentVisit?.personCategory;
                      final displayLevelGender =
                          visit.gender ?? parentVisit?.gender;

                      return Row(
                        children: [
                          if (displayCategory != null)
                            ClipOval(
                              child: Image.asset(
                                displayCategory.getIconPath(displayLevelGender),
                                width: 20,
                                height: 20,
                                fit: BoxFit.cover,
                                errorBuilder: (_, __, ___) => const Icon(
                                  Icons.person_outline,
                                  size: 16,
                                  color: AppColors.textSecondary,
                                ),
                              ),
                            )
                          else
                            const Icon(Icons.person_outline,
                                size: 14, color: AppColors.textSecondary),
                          const SizedBox(width: 8),
                          if (visit.personName != null)
                            Text(
                              visit.personName!,
                              style: Theme.of(context).textTheme.bodySmall,
                            )
                          else if (displayCategory != null)
                            Text(
                              displayCategory.label,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                        ],
                      );
                    }),
                  ],
                  if (visit.phoneNumber != null) ...[
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        const Icon(Icons.phone_outlined,
                            size: 14, color: AppColors.textSecondary),
                        const SizedBox(width: 4),
                        Text(
                          visit.phoneNumber!,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ],
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
                          const Icon(Icons.notes,
                              size: 14, color: AppColors.textSecondary),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              visit.notes!,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(fontStyle: FontStyle.italic),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            ),
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
                      Text(l10n.delete,
                          style: const TextStyle(color: Colors.red)),
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
      case VisitStatus.bibleStudy:
        return AppColors.statusBibleStudy;
      case VisitStatus.witness:
        return Colors.purple;
      case VisitStatus.notAtHome:
        return Colors.orange;
    }
  }

}

class _InterestedVisitNode extends StatefulWidget {
  final Visit parentVisit;
  final List<Visit> childVisits;
  final VoidCallback onEdit;
  final VoidCallback onDelete;
  final Function(VisitStatus)? onAddChild;
  final Function(Visit) onEditChild;
  final Function(Visit) onDeleteChild;

  const _InterestedVisitNode({
    required this.parentVisit,
    required this.childVisits,
    required this.onEdit,
    required this.onDelete,
    this.onAddChild,
    required this.onEditChild,
    required this.onDeleteChild,
  });

  @override
  State<_InterestedVisitNode> createState() => _InterestedVisitNodeState();
}

class _InterestedVisitNodeState extends State<_InterestedVisitNode> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: _expanded ? Theme.of(context).primaryColor.withOpacity(0.05) : null,
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              _VisitItem(
                visit: widget.parentVisit,
                onEdit: widget.onEdit,
                onDelete: widget.onDelete,
              ),
              Positioned(
                right: 48, // Place it right before the PopupMenuButton (which is on the far right)
                child: IconButton(
                  icon: Icon(_expanded ? Icons.expand_less : Icons.expand_more, color: Theme.of(context).primaryColor),
                  onPressed: () => setState(() => _expanded = !_expanded),
                ),
              ),
            ],
          ),
        ),
        if (_expanded)
          Container(
            padding: const EdgeInsets.only(left: 32.0, top: 4, bottom: 8),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(color: Theme.of(context).primaryColor.withOpacity(0.3), width: 2),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (final child in widget.childVisits)
                  _VisitItem(
                    visit: child,
                    parentVisit: widget.parentVisit,
                    onEdit: () => widget.onEditChild(child),
                    onDelete: () => widget.onDeleteChild(child),
                  ),
                if (widget.onAddChild != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    child: Builder(
                      builder: (context) {
                        final revisitCount = widget.childVisits
                            .where((v) => v.status == VisitStatus.returnVisit)
                            .length;
                        final showStudyButton = revisitCount >= 2;

                        return Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            if (showStudyButton)
                              OutlinedButton.icon(
                                onPressed: () =>
                                    widget.onAddChild!(VisitStatus.bibleStudy),
                                icon: const Icon(Icons.menu_book, size: 16),
                                label: const Text('Estudo Bíblico',
                                    style: TextStyle(fontSize: 12)),
                                style: OutlinedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 8),
                                  minimumSize: Size.zero,
                                ),
                              )
                            else
                              OutlinedButton.icon(
                                onPressed: () =>
                                    widget.onAddChild!(VisitStatus.returnVisit),
                                icon: const Icon(Icons.refresh, size: 16),
                                label: const Text('Revisita',
                                    style: TextStyle(fontSize: 12)),
                                style: OutlinedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 8),
                                  minimumSize: Size.zero,
                                ),
                              ),
                            const SizedBox(width: 8),
                            OutlinedButton.icon(
                              onPressed: () =>
                                  widget.onAddChild!(VisitStatus.notAtHome),
                              icon: const Icon(Icons.directions_walk, size: 16),
                              label: const Text('Não em casa',
                                  style: TextStyle(fontSize: 12)),
                              style: OutlinedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 8),
                                minimumSize: Size.zero,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  )
              ],
            ),
          ),
      ],
    );
  }
}
