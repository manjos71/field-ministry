import 'package:flutter/material.dart';
import 'package:add_2_calendar/add_2_calendar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:flutter_contacts/flutter_contacts.dart' as contacts;
import 'package:url_launcher/url_launcher.dart';
import '../config/app_localizations.dart';
import '../providers/territory_provider.dart';
import '../models/models.dart';
import '../providers/service_timer_provider.dart';
import '../widgets/visit_history_accordion.dart';
import '../widgets/status_selector.dart';

enum AddressFilter { all, odd, even }
enum AddressSortOrder { ascending, descending }

class StreetDetailScreen extends ConsumerStatefulWidget {
  final String territoryId;
  final String streetId;

  const StreetDetailScreen({
    super.key,
    required this.territoryId,
    required this.streetId,
  });

  @override
  ConsumerState<StreetDetailScreen> createState() => _StreetDetailScreenState();
}


// Widget para agendamento de revisitas — máximo 2 revisitas + Estudo Bíblico
class RecursiveRevisitScheduler extends ConsumerStatefulWidget {
  final String personName;
  final String location;
  final void Function(bool)? onRevisitToggled;

  const RecursiveRevisitScheduler({
    Key? key,
    required this.personName,
    required this.location,
    this.onRevisitToggled,
  }) : super(key: key);

  @override
  ConsumerState<RecursiveRevisitScheduler> createState() =>
      _RecursiveRevisitSchedulerState();
}

class _RecursiveRevisitSchedulerState
    extends ConsumerState<RecursiveRevisitScheduler> {
  // Revisita 1
  bool _revisit1Checked = false;
  DateTime? _revisit1Date;
  final _note1Ctrl = TextEditingController();

  // Revisita 2 (visível apenas quando revisita 1 está marcada)
  bool _revisit2Checked = false;
  DateTime? _revisit2Date;
  final _note2Ctrl = TextEditingController();

  // Estudo Bíblico (visível apenas quando revisita 2 está marcada)
  bool _bibleStudyChecked = false;

  @override
  void dispose() {
    _note1Ctrl.dispose();
    _note2Ctrl.dispose();
    super.dispose();
  }

  Future<void> _pickDate(int slot) async {
    final now = DateTime.now();
    final initial = slot == 1
        ? (_revisit1Date ?? now.add(const Duration(days: 7)))
        : (_revisit2Date ?? now.add(const Duration(days: 14)));
    final picked = await showDatePicker(
      context: context,
      initialDate: initial,
      firstDate: now,
      lastDate: now.add(const Duration(days: 730)),
    );
    if (picked == null) return;
    setState(() {
      if (slot == 1) {
        _revisit1Checked = true;
        _revisit1Date = picked;
        widget.onRevisitToggled?.call(true);
      } else {
        _revisit2Checked = true;
        _revisit2Date = picked;
      }
    });
    final noteCtrl = slot == 1 ? _note1Ctrl : _note2Ctrl;
    final label = slot == 1 ? 'Revisita 1' : 'Revisita 2';
    final event = Event(
      title: '$label de ${widget.personName}',
      description: noteCtrl.text.isNotEmpty
          ? noteCtrl.text
          : '$label - ${widget.location}',
      location: widget.location,
      startDate: picked,
      endDate: picked.add(const Duration(hours: 1)),
    );
    await Add2Calendar.addEvent2Cal(event);
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            '$label agendada para ${picked.day}/${picked.month}/${picked.year}!',
          ),
        ),
      );
    }
  }

  String _dateLabel(DateTime? d) => d != null
      ? '${d.day.toString().padLeft(2, '0')}/${d.month.toString().padLeft(2, '0')}/${d.year}'
      : '';

  Widget _buildRevisitRow({
    required int slot,
    required bool checked,
    required DateTime? date,
    required TextEditingController noteCtrl,
    required ValueChanged<bool> onChanged,
  }) {
    final label = _dateLabel(date);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Checkbox(
              value: checked,
              onChanged: (v) => onChanged(v ?? false),
            ),
            Expanded(
              child: Text(
                label.isNotEmpty ? 'Revisita $slot: $label' : 'Revisita $slot',
                style: const TextStyle(fontSize: 15),
              ),
            ),
            IconButton(
              icon: Icon(Icons.calendar_month,
                  color: Theme.of(context).primaryColor),
              tooltip: 'Agendar no calendário',
              onPressed: () => _pickDate(slot),
            ),
          ],
        ),
        if (checked)
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 4, bottom: 8),
            child: TextField(
              controller: noteCtrl,
              decoration: const InputDecoration(
                labelText: 'Nota da revisita',
                prefixIcon: Icon(Icons.notes),
                border: OutlineInputBorder(),
                isDense: true,
              ),
              maxLines: 2,
            ),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ── Revisita 1 ────────────────────────────────────────
        _buildRevisitRow(
          slot: 1,
          checked: _revisit1Checked,
          date: _revisit1Date,
          noteCtrl: _note1Ctrl,
          onChanged: (v) {
            setState(() {
              _revisit1Checked = v;
              if (!v) {
                // Se desmarcou a 1a, limpa as demais
                _revisit2Checked = false;
                _revisit2Date = null;
                _bibleStudyChecked = false;
              }
            });
            widget.onRevisitToggled?.call(v);
          },
        ),

        // ── Revisita 2 (visível apenas quando a 1a está marcada) ──
        if (_revisit1Checked) ...[
          _buildRevisitRow(
            slot: 2,
            checked: _revisit2Checked,
            date: _revisit2Date,
            noteCtrl: _note2Ctrl,
            onChanged: (v) {
              setState(() {
                _revisit2Checked = v;
                if (!v) {
                  _revisit2Date = null;
                  _bibleStudyChecked = false;
                }
              });
            },
          ),

          // ── Estudo Bíblico (visível apenas quando a 2a está marcada) ──
          if (_revisit2Checked)
            Row(
              children: [
                Checkbox(
                  value: _bibleStudyChecked,
                  activeColor: const Color(0xFF673AB7),
                  onChanged: (v) {
                    final checked = v ?? false;
                    setState(() => _bibleStudyChecked = checked);
                    if (checked) {
                      ref
                          .read(monthlyServiceTimeProvider.notifier)
                          .incrementBibleStudyCount();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('📖 Estudo Bíblico contabilizado no mês!'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    }
                  },
                ),
                const Text(
                  '📖 Estudo Bíblico',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF673AB7),
                  ),
                ),
              ],
            ),
        ],
      ],
    );
  }
}


class _StreetDetailScreenState extends ConsumerState<StreetDetailScreen> {
  bool _isGenerating = false;
  AddressFilter _filter = AddressFilter.all;
  AddressSortOrder _sortOrder = AddressSortOrder.ascending;

  List<Address> _getFilteredAndSortedAddresses(List<Address> addresses) {
    // 1. Filter
    List<Address> filtered = addresses.where((addr) {
      if (_filter == AddressFilter.all) return true;
      
      // Try to extract numeric part
      final numMatch = RegExp(r'\d+').firstMatch(addr.number);
      if (numMatch == null) return true; // Non-numeric always shown
      
      final num = int.parse(numMatch.group(0)!);
      if (_filter == AddressFilter.odd) {
        return num % 2 != 0;
      } else {
        return num % 2 == 0;
      }
    }).toList();

    // 2. Sort
    filtered.sort((a, b) {
      // Extract numeric and alpha parts
      final aNumMatch = RegExp(r'\d+').firstMatch(a.number);
      final bNumMatch = RegExp(r'\d+').firstMatch(b.number);
      
      int comparison = 0;
      
      if (aNumMatch != null && bNumMatch != null) {
        final aNum = int.parse(aNumMatch.group(0)!);
        final bNum = int.parse(bNumMatch.group(0)!);
        comparison = aNum.compareTo(bNum);
        
        // If numbers are equal, compare alpha parts
        if (comparison == 0) {
          final aAlpha = a.number.substring(aNumMatch.end);
          final bAlpha = b.number.substring(bNumMatch.end);
          comparison = aAlpha.compareTo(bAlpha);
        }
      } else {
        // Fallback to string comparison
        comparison = a.number.compareTo(b.number);
      }
      
      return _sortOrder == AddressSortOrder.ascending ? comparison : -comparison;
    });

    return filtered;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final territory = ref.watch(territoryProvider(widget.territoryId));
    final street = territory?.findStreet(widget.streetId);

    if (territory == null || street == null) {
      return Scaffold(
        appBar: AppBar(title: Text(l10n.street)),
        body: Center(child: Text(l10n.streetNotFound)),
      );
    }

    final displayAddresses = _getFilteredAndSortedAddresses(street.addresses);

    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () => _showEditStreetNameDialog(context, territory, street),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(child: Text(street.name)),
              const SizedBox(width: 8),
              Icon(Icons.edit, size: 16, color: Colors.white.withOpacity(0.7)),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.auto_awesome),
            onPressed: () => _showGenerateDialog(context, territory, street),
            tooltip: l10n.generateNumbersTooltip,
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => _showAddAddressDialog(context, territory, street),
            tooltip: l10n.addNumberTooltip,
          ),
        ],
      ),
      body: street.addresses.isEmpty
          ? _buildEmptyState(context, territory, street)
          : ListView.builder(
              padding: const EdgeInsets.only(bottom: 80, top: 8),
              itemCount: displayAddresses.length,
              itemBuilder: (context, index) {
                return VisitHistoryAccordion(
                  address: displayAddresses[index],
                  onAddVisit: () => _showAddVisitDialog(
                    context,
                    territory,
                    street,
                    displayAddresses[index],
                  ),
                  onEditVisit: (visit) => _showEditVisitDialog(
                    context,
                    territory,
                    street,
                    displayAddresses[index],
                    visit,
                  ),
                  onDeleteVisit: (visit) => _confirmDeleteVisit(
                    context,
                    territory,
                    street,
                    displayAddresses[index],
                    visit,
                  ),
                  onDeleteAddress: () => _confirmDeleteAddress(
                    context,
                    territory,
                    street,
                    displayAddresses[index],
                  ),
                );
              },
            ),
      floatingActionButton: street.addresses.isEmpty
          ? null
          : FloatingActionButton(
              onPressed: () => _showFilterSortDialog(context),
              child: const Icon(Icons.filter_list),
            ),
    );
  }

  void _showFilterSortDialog(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    showModalBottomSheet(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setModalState) => SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.filterAndSort,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 16),
                Text(
                  l10n.filterLabel,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(height: 8),
                SegmentedButton<AddressFilter>(
                  segments: [
                    ButtonSegment(
                      value: AddressFilter.all,
                      label: Text(l10n.allNumbers),
                    ),
                    ButtonSegment(
                      value: AddressFilter.odd,
                      label: Text(l10n.oddNumbers),
                    ),
                    ButtonSegment(
                      value: AddressFilter.even,
                      label: Text(l10n.evenNumbers),
                    ),
                  ],
                  selected: {_filter},
                  onSelectionChanged: (value) {
                    setState(() => _filter = value.first);
                    setModalState(() {});
                  },
                ),
                const SizedBox(height: 16),
                Text(
                  l10n.sortLabel,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(height: 8),
                SegmentedButton<AddressSortOrder>(
                  segments: [
                    ButtonSegment(
                      value: AddressSortOrder.ascending,
                      label: Text(l10n.ascending),
                      icon: const Icon(Icons.arrow_upward),
                    ),
                    ButtonSegment(
                      value: AddressSortOrder.descending,
                      label: Text(l10n.descending),
                      icon: const Icon(Icons.arrow_downward),
                    ),
                  ],
                  selected: {_sortOrder},
                  onSelectionChanged: (value) {
                    setState(() => _sortOrder = value.first);
                    setModalState(() {});
                  },
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(l10n.apply),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context, Territory territory, Street street) {
    final l10n = AppLocalizations.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.home_outlined,
              size: 80,
              color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
            ),
            const SizedBox(height: 24),
            Text(
              l10n.noNumbers,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              l10n.addNumbersOrGenerate,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton.icon(
                  onPressed: () => _showGenerateDialog(context, territory, street),
                  icon: const Icon(Icons.auto_awesome),
                  label: Text(l10n.generate),
                ),
                const SizedBox(width: 16),
                ElevatedButton.icon(
                  onPressed: () => _showAddAddressDialog(context, territory, street),
                  icon: const Icon(Icons.add),
                  label: Text(l10n.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showEditStreetNameDialog(
    BuildContext context,
    Territory territory,
    Street street,
  ) {
    final l10n = AppLocalizations.of(context);
    final nameController = TextEditingController(text: street.name);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.editStreetName),
        content: TextField(
          controller: nameController,
          autofocus: true,
          decoration: InputDecoration(labelText: l10n.streetName),
          textCapitalization: TextCapitalization.words,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () {
              if (nameController.text.trim().isEmpty) return;

              final updatedStreet = street.copyWith(name: nameController.text.trim());
              final updatedTerritory = territory.copyWith(
                streets: territory.streets
                    .map((s) => s.id == street.id ? updatedStreet : s)
                    .toList(),
              );
              
              ref.read(territoriesProvider.notifier).updateTerritory(updatedTerritory);
              Navigator.pop(context);
            },
            child: Text(l10n.save),
          ),
        ],
      ),
    );
  }

  void _showAddAddressDialog(
    BuildContext context,
    Territory territory,
    Street street,
  ) {
    final l10n = AppLocalizations.of(context);
    final numberController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.newNumber),
        content: TextField(
          controller: numberController,
          autofocus: true,
          decoration: InputDecoration(
            labelText: l10n.numberLabel,
            hintText: l10n.numberHint,
          ),
          keyboardType: TextInputType.text,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () async {
              if (numberController.text.trim().isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(l10n.enterNumber)),
                );
                return;
              }

              Navigator.pop(context);

              await ref.read(territoriesProvider.notifier).addAddress(
                territoryId: territory.id,
                streetId: street.id,
                number: numberController.text.trim(),
              );
            },
            child: Text(l10n.add),
          ),
        ],
      ),
    );
  }

  void _showGenerateDialog(
    BuildContext context,
    Territory territory,
    Street street,
  ) {
    final l10n = AppLocalizations.of(context);
    final fromController = TextEditingController(text: '1');
    final toController = TextEditingController(text: '99');
    String filter = 'all'; // 'all', 'odd', 'even'

    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) => AlertDialog(
          title: Text(l10n.generateNumbers),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: fromController,
                      decoration: InputDecoration(labelText: l10n.fromLabel),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: TextField(
                      controller: toController,
                      decoration: InputDecoration(labelText: l10n.toLabel),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              SegmentedButton<String>(
                segments: [
                  ButtonSegment(value: 'all', label: Text(l10n.allNumbers)),
                  ButtonSegment(value: 'odd', label: Text(l10n.oddNumbers)),
                  ButtonSegment(value: 'even', label: Text(l10n.evenNumbers)),
                ],
                selected: {filter},
                onSelectionChanged: (value) {
                  setState(() => filter = value.first);
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(l10n.cancel),
            ),
            FilledButton(
              onPressed: _isGenerating
                  ? null
                  : () async {
                      final from = int.tryParse(fromController.text);
                      final to = int.tryParse(toController.text);

                      if (from == null || to == null || from > to) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(l10n.invalidValues)),
                        );
                        return;
                      }

                      Navigator.pop(context);
                      setState(() => _isGenerating = true);

                      await ref.read(territoriesProvider.notifier).generateAddresses(
                        territoryId: territory.id,
                        streetId: street.id,
                        from: from,
                        to: to,
                        oddOnly: filter == 'odd',
                        evenOnly: filter == 'even',
                      );

                      if (mounted) {
                        setState(() => _isGenerating = false);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(l10n.numbersGenerated)),
                        );
                      }
                    },
              child: Text(l10n.generate),
            ),
          ],
        ),
      ),
    );
  }

  void _showAddVisitDialog(
    BuildContext context,
    Territory territory,
    Street street,
    Address address,
  ) {
    VisitStatus? selectedStatus;
    final notesController = TextEditingController();
    final personNameController = TextEditingController();
    final phoneController = TextEditingController();
    DateTime selectedTime = DateTime.now();
    PersonCategory? selectedCategory;
    SkinTone? selectedSkinTone;
    Gender? selectedGender;
    bool revisitScheduled = false;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final l10n = AppLocalizations.of(context);

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (sheetContext) => StatefulBuilder(
        builder: (sheetContext, setState) => Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(sheetContext).viewInsets.bottom,
          ),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.home),
                        const SizedBox(width: 8),
                        Text(
                          l10n.newVisitTitle(address.number),
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      l10n.visitStatus,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const SizedBox(height: 8),
                    StatusSelector(
                      selectedStatus: selectedStatus,
                      onStatusSelected: (status) {
                        setState(() => selectedStatus = status);
                      },
                    ),
                    const SizedBox(height: 16),
                    InkWell(
                      onTap: () async {
                        final date = await showDatePicker(
                          context: context,
                          initialDate: selectedTime,
                          firstDate: DateTime(2000),
                          lastDate: DateTime.now().add(const Duration(days: 365)),
                        );
                        if (date != null) {
                          setState(() {
                            selectedTime = DateTime(
                              date.year,
                              date.month,
                              date.day,
                              selectedTime.hour,
                              selectedTime.minute,
                            );
                          });
                        }
                      },
                      child: InputDecorator(
                        decoration: InputDecoration(
                          labelText: l10n.visitDate,
                          prefixIcon: const Icon(Icons.calendar_today),
                        ),
                        child: Text(DateFormat('dd/MM/yyyy').format(selectedTime)),
                      ),
                    ),
                    const SizedBox(height: 12),
                    // Time Picker
                    InkWell(
                      onTap: () async {
                        final time = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.fromDateTime(selectedTime),
                        );
                        if (time != null) {
                          setState(() {
                             selectedTime = DateTime(
                               selectedTime.year,
                               selectedTime.month,
                               selectedTime.day,
                               time.hour,
                               time.minute,
                             );
                          });
                        }
                      },
                      child: InputDecorator(
                        decoration: InputDecoration(
                          labelText: l10n.visitTime,
                          prefixIcon: const Icon(Icons.access_time),
                        ),
                        child: Text(DateFormat('HH:mm').format(selectedTime)),
                      ),
                    ),
                    
                    if (selectedStatus == VisitStatus.interested) ...[
                      const SizedBox(height: 12),
                      TextField(
                        controller: personNameController,
                        decoration: InputDecoration(
                          labelText: l10n.personName,
                          prefixIcon: selectedCategory != null
                              ? Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    selectedCategory!.getIconPath(selectedGender),
                                    width: 24,
                                    height: 24,
                                  ),
                                )
                              : const Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                          fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                        ),
                        textCapitalization: TextCapitalization.words,
                      ),
                      const SizedBox(height: 12),
                      _PersonAttributesSelector(
                        selectedCategory: selectedCategory,
                        selectedSkinTone: selectedSkinTone,
                        selectedGender: selectedGender,
                        onCategoryChanged: (cat) => setState(() => selectedCategory = cat),
                        onSkinToneChanged: (tone) => setState(() => selectedSkinTone = tone),
                        onGenderChanged: (gender) => setState(() => selectedGender = gender),
                      ),
                      const SizedBox(height: 12),
                      TextField(
                        controller: phoneController,
                        decoration: InputDecoration(
                          labelText: l10n.phoneOptional,
                          prefixIcon: const Icon(Icons.phone),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                          fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.contacts),
                            onPressed: () => _saveToContacts(
                              context, 
                              personNameController.text, 
                              phoneController.text
                            ),
                            tooltip: l10n.saveToContacts,
                          ),
                        ),
                        keyboardType: TextInputType.phone,
                      ),
                      if (phoneController.text.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: OutlinedButton.icon(
                            onPressed: () => _openWhatsApp(phoneController.text),
                            icon: const Icon(Icons.message, color: Colors.green),
                            label: Text(l10n.openInWhatsApp, style: const TextStyle(color: Colors.green)),
                          ),
                        ),
                    ],
                    const SizedBox(height: 12),
                    TextField(
                      controller: notesController,
                      decoration: InputDecoration(
                        labelText: l10n.notesOptional,
                        prefixIcon: const Icon(Icons.notes),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                      ),
                      maxLines: 2,
                    ),
                    const SizedBox(height: 12),
                    if (selectedStatus == VisitStatus.interested)
                      RecursiveRevisitScheduler(
                        personName: personNameController.text,
                        location: '${street.name}, ${address.number} — ${territory.name}',
                        onRevisitToggled: (v) => revisitScheduled = v,
                      ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text(l10n.cancel),
                        ),
                        const SizedBox(width: 8),
                        FilledButton(
                          onPressed: selectedStatus == null
                              ? null
                              : () async {
                                  Navigator.pop(context);

                                  VisitStatus finalStatus = selectedStatus!;
                                  if (selectedStatus == VisitStatus.interested || selectedStatus == VisitStatus.returnVisit) {
                                    int positiveCount = address.visits.where((v) => 
                                      v.status == VisitStatus.interested || 
                                      v.status == VisitStatus.returnVisit || 
                                      v.status == VisitStatus.bibleStudy
                                    ).length;
                                    if (positiveCount >= 2) {
                                      finalStatus = VisitStatus.bibleStudy;
                                    }
                                  }

                                  if (revisitScheduled) {
                                    ref.read(monthlyServiceTimeProvider.notifier).incrementRevisitCount();
                                  }

                                  await ref
                                      .read(territoriesProvider.notifier)
                                      .addVisit(
                                        territoryId: territory.id,
                                        streetId: street.id,
                                        addressId: address.id,
                                        status: finalStatus,
                                        notes: notesController.text.trim().isEmpty
                                            ? null
                                            : notesController.text.trim(),
                                        personName:
                                            personNameController.text.trim().isEmpty
                                                ? null
                                                : personNameController.text.trim(),
                                        phoneNumber:
                                            phoneController.text.trim().isEmpty
                                                ? null
                                                : phoneController.text.trim(),
                                        date: selectedTime,
                                        personCategory: selectedCategory,
                                        personSkinTone: selectedSkinTone,
                                        gender: selectedGender,
                                      );

                                  if (context.mounted) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(l10n.visitRegistered)),
                                    );
                                  }
                                },
                          child: Text(l10n.save),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showEditVisitDialog(
    BuildContext context,
    Territory territory,
    Street street,
    Address address,
    Visit visit,
  ) {
    VisitStatus selectedStatus = visit.status;
    final notesController = TextEditingController(text: visit.notes);
    final personNameController = TextEditingController(text: visit.personName);
    final phoneController = TextEditingController(text: visit.phoneNumber);
    DateTime selectedTime = visit.date;
    PersonCategory? selectedCategory = visit.personCategory;
    SkinTone? selectedSkinTone = visit.personSkinTone;
    Gender? selectedGender = visit.gender;
    bool revisitScheduled = false;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final l10n = AppLocalizations.of(context);

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) => Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.edit),
                        const SizedBox(width: 8),
                        Text(
                          l10n.editVisit,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const Spacer(),
                        Text(
                          DateFormat('dd/MM/yyyy').format(visit.date),
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      l10n.visitStatus,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const SizedBox(height: 8),
                    StatusSelector(
                      selectedStatus: selectedStatus,
                      onStatusSelected: (status) {
                        setState(() => selectedStatus = status);
                      },
                    ),
                    const SizedBox(height: 16),
                    InkWell(
                      onTap: () async {
                        final date = await showDatePicker(
                          context: context,
                          initialDate: selectedTime,
                          firstDate: DateTime(2000),
                          lastDate: DateTime.now().add(const Duration(days: 365)),
                        );
                        if (date != null) {
                          setState(() {
                            selectedTime = DateTime(
                              date.year,
                              date.month,
                              date.day,
                              selectedTime.hour,
                              selectedTime.minute,
                            );
                          });
                        }
                      },
                      child: InputDecorator(
                        decoration: InputDecoration(
                          labelText: l10n.visitDate,
                          prefixIcon: const Icon(Icons.calendar_today),
                        ),
                        child: Text(DateFormat('dd/MM/yyyy').format(selectedTime)),
                      ),
                    ),
                    const SizedBox(height: 12),
                    // Time Picker
                    InkWell(
                      onTap: () async {
                        final time = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.fromDateTime(selectedTime),
                        );
                        if (time != null) {
                          setState(() {
                             selectedTime = DateTime(
                               selectedTime.year,
                               selectedTime.month,
                               selectedTime.day,
                               time.hour,
                               time.minute,
                             );
                          });
                        }
                      },
                      child: InputDecorator(
                        decoration: InputDecoration(
                          labelText: l10n.hour,
                          prefixIcon: const Icon(Icons.access_time),
                        ),
                        child: Text(DateFormat('HH:mm').format(selectedTime)),
                      ),
                    ),
                    
                    if (selectedStatus == VisitStatus.interested) ...[
                      const SizedBox(height: 12),
                      TextField(
                        controller: personNameController,
                        decoration: InputDecoration(
                          labelText: l10n.personName,
                          prefixIcon: selectedCategory != null
                              ? Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    selectedCategory!.getIconPath(selectedGender),
                                    width: 24,
                                    height: 24,
                                  ),
                                )
                              : const Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                            filled: true,
                            fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                        ),
                        textCapitalization: TextCapitalization.words,
                      ),
                      const SizedBox(height: 12),
                      _PersonAttributesSelector(
                        selectedCategory: selectedCategory,
                        selectedSkinTone: selectedSkinTone,
                        selectedGender: selectedGender,
                        onCategoryChanged: (cat) => setState(() => selectedCategory = cat),
                        onSkinToneChanged: (tone) => setState(() => selectedSkinTone = tone),
                        onGenderChanged: (gender) => setState(() => selectedGender = gender),
                      ),
                      const SizedBox(height: 12),
                      TextField(
                        controller: phoneController,
                        decoration: InputDecoration(
                          labelText: l10n.phone,
                          prefixIcon: const Icon(Icons.phone),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                            filled: true,
                            fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                          suffixIcon: IconButton(
                             icon: const Icon(Icons.contacts),
                             onPressed: () => _saveToContacts(
                               context, 
                               personNameController.text, 
                               phoneController.text
                             ),
                             tooltip: l10n.saveToContacts,
                          ),
                        ),
                        keyboardType: TextInputType.phone,
                      ),
                      if (phoneController.text.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: OutlinedButton.icon(
                            onPressed: () => _openWhatsApp(phoneController.text),
                            icon: const Icon(Icons.message, color: Colors.green),
                            label: Text(l10n.openInWhatsApp, style: const TextStyle(color: Colors.green)),
                          ),
                        ),
                      const SizedBox(height: 12),
                      TextField(
                        controller: notesController,
                        decoration: InputDecoration(
                          labelText: l10n.notes,
                          prefixIcon: Icon(Icons.notes),
                        ),
                        maxLines: 2,
                      ),
                      const SizedBox(height: 12),
                      RecursiveRevisitScheduler(
                        personName: personNameController.text,
                        location: '${street.name}, ${address.number} — ${territory.name}',
                        onRevisitToggled: (v) => revisitScheduled = v,
                      ),
                    ], // Spread list end
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text(l10n.cancel),
                        ),
                        const SizedBox(width: 8),
                        FilledButton(
                          onPressed: () async {
                            Navigator.pop(context);

                            VisitStatus finalStatus = selectedStatus;
                            if (selectedStatus == VisitStatus.interested || selectedStatus == VisitStatus.returnVisit) {
                              int positiveCount = address.visits.where((v) => 
                                v.status == VisitStatus.interested || 
                                v.status == VisitStatus.returnVisit || 
                                v.status == VisitStatus.bibleStudy
                              ).length;
                              // If this visit is ALREADY in the list, we don't count it twice.
                              // But just to be safe, if the total positive is >= 3 (including this one if it was already positive),
                              // or if it was NOT positive before and now is (so total will be >= 3), we promote.
                              // The simpliest is: if total positive considering current state >= 3.
                              bool wasPositive = visit.status == VisitStatus.interested || 
                                                 visit.status == VisitStatus.returnVisit || 
                                                 visit.status == VisitStatus.bibleStudy;
                              int effectiveCount = wasPositive ? positiveCount : positiveCount + 1;
                              if (effectiveCount >= 3) {
                                finalStatus = VisitStatus.bibleStudy;
                              }
                            }

                            if (revisitScheduled) {
                              ref.read(monthlyServiceTimeProvider.notifier).incrementRevisitCount();
                            }

                            final updatedVisit = Visit(
                              id: visit.id,
                              status: finalStatus,
                              notes: notesController.text.trim().isEmpty
                                  ? null
                                  : notesController.text.trim(),
                              personName:
                                  personNameController.text.trim().isEmpty
                                      ? null
                                      : personNameController.text.trim(),
                              phoneNumber: phoneController.text.trim().isEmpty
                                  ? null
                                  : phoneController.text.trim(),
                              date: selectedTime,
                              personCategory: selectedCategory,
                              personSkinTone: selectedSkinTone,
                              gender: selectedGender,
                            );

                            await ref
                                .read(territoriesProvider.notifier)
                                .updateVisit(
                                  territoryId: territory.id,
                                  streetId: street.id,
                                  addressId: address.id,
                                  visit: updatedVisit,
                                );
                          },
                          child: Text(l10n.save),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _confirmDeleteVisit(
    BuildContext context,
    Territory territory,
    Street street,
    Address address,
    Visit visit,
  ) {
    final l10n = AppLocalizations.of(context);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.deleteVisit),
        content: Text(
          l10n.visitWillBeDeleted(DateFormat('dd/MM/yyyy').format(visit.date)),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            style: FilledButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {
              ref.read(territoriesProvider.notifier).removeVisit(
                territoryId: territory.id,
                streetId: street.id,
                addressId: address.id,
                visitId: visit.id,
              );
              Navigator.pop(context);
            },
            child: Text(l10n.delete),
          ),
        ],
      ),
    );
  }

  void _confirmDeleteAddress(
    BuildContext context,
    Territory territory,
    Street street,
    Address address,
  ) {
    final l10n = AppLocalizations.of(context);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.deleteNumber),
        content: Text(
          l10n.numberAndVisitsWillBeDeleted(address.number),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            style: FilledButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {
              final updatedStreet = street.copyWith(
                addresses: street.addresses
                    .where((a) => a.id != address.id)
                    .toList(),
              );
              final updatedTerritory = territory.copyWith(
                streets: territory.streets
                    .map((s) => s.id == street.id ? updatedStreet : s)
                    .toList(),
              );
              ref.read(territoriesProvider.notifier).updateTerritory(updatedTerritory);
              Navigator.pop(context);
            },
            child: Text(l10n.delete),
          ),
        ],
      ),
    );
  }

  Future<void> _saveToContacts(BuildContext context, String name, String phone) async {
    final l10n = AppLocalizations.of(context);
    if (name.isEmpty || phone.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(l10n.nameAndPhoneRequired)),
      );
      return;
    }

    try {
      if (await contacts.FlutterContacts.requestPermission()) {
        // 1. Buscar ou Criar o Grupo "Pregação"
        List<contacts.Group> groups = await contacts.FlutterContacts.getGroups();
        contacts.Group? targetGroup;
        
        // Tenta encontrar
        try {
          targetGroup = groups.firstWhere((g) => g.name == 'Pregação');
        } catch (_) {
          // Não encontrou
        }

        // Se não existe, cria
        if (targetGroup == null) {
          try {
             targetGroup = await contacts.FlutterContacts.insertGroup(contacts.Group('', 'Pregação'));
          } catch (e) {
             // Fallback se falhar criar grupo (alguns dispositivos não suportam)
             debugPrint('Erro ao criar grupo: $e');
          }
        }

        final newContact = contacts.Contact()
          ..name.first = name
          ..phones = [contacts.Phone(phone)];
        
        // Adiciona ao grupo se conseguiu obter/criar
        if (targetGroup != null) {
           newContact.groups = [targetGroup];
        } else {
           // Fallback para nota se grupo falhar
           newContact.notes = [contacts.Note('Pregação')];
        }

        await newContact.insert();
        
        if (context.mounted) {
           ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(l10n.contactSavedWithLabel)),
          );
        }
      }
    } catch (e) {
      if (context.mounted) {
         ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.errorSavingContact(e.toString()))),
        );
      }
    }
  }

  Future<void> _openWhatsApp(String phone) async {
    // Basic cleaning of phone number
    final cleanPhone = phone.replaceAll(RegExp(r'\D'), '');
    // Assume Brazil if no country code (length <= 11) - just heuristic
    final finalPhone = cleanPhone.length <= 11 ? '55$cleanPhone' : cleanPhone;
    
    final uri = Uri.parse("https://wa.me/$finalPhone");
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      // Fallback or error
    }
  }
}

class _PersonAttributesSelector extends StatelessWidget {
  final PersonCategory? selectedCategory;
  final SkinTone? selectedSkinTone;
  final Gender? selectedGender;
  final Function(PersonCategory?) onCategoryChanged;
  final Function(SkinTone?) onSkinToneChanged;
  final Function(Gender?) onGenderChanged;

  const _PersonAttributesSelector({
    required this.selectedCategory,
    required this.selectedSkinTone,
    required this.selectedGender,
    required this.onCategoryChanged,
    required this.onSkinToneChanged,
    required this.onGenderChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Perfil da Pessoa',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(height: 8),
        
        // Seletor de Gênero
        Wrap(
          spacing: 8,
          children: Gender.values.map((gender) {
            final isSelected = selectedGender == gender;
            return ChoiceChip(
              label: Text(gender.label),
              selected: isSelected,
              onSelected: (selected) {
                onGenderChanged(selected ? gender : null);
              },
            );
          }).toList(),
        ),
        
        const SizedBox(height: 12),
        
        // Seletor de Categoria (Idade)
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: PersonCategory.values
              .where((c) => 
                  c == PersonCategory.young || 
                  c == PersonCategory.adult || 
                  c == PersonCategory.elderly)
              .map((category) {
            final isSelected = selectedCategory == category;
            return ChoiceChip(
              label: Text(category.label),
              avatar: Image.asset(
                category.getIconPath(selectedGender),
                width: 24,
                height: 24,
                errorBuilder: (context, error, stackTrace) => Text(category.getIcon()), // Keep emoji fallback here
              ),
              selected: isSelected,
              onSelected: (selected) {
                onCategoryChanged(selected ? category : null);
              },
            );
          }).toList(),
        ),
        // Removido seletor de tom de pele se estiver usando imagens fixas?
        // O usuário pediu icones do MA que são fixos.
        // Vou manter oculto se um Gênero estiver selecionado (assumindo imagem fixa), 
        // ou mostrar se nenhum gênero selecionado (fallback para emoji).
        // Mas como getIconPath agora retorna imagem sempre (com default male),
        // talvez seja melhor esconder sempre para simplificar, ou deixar como opcional.
        // Vou ocultar para limpar a UI como solicitado implicitamente ("aproveitar icones").
      ],
    );
  }
}
