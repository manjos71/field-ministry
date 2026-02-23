import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import '../providers/service_timer_provider.dart';
import '../providers/publisher_profile_provider.dart';
import '../providers/theme_provider.dart';
import '../models/publisher_profile.dart';
import '../widgets/service_planning_calendar.dart';
import '../providers/territory_provider.dart';
import '../config/app_localizations.dart';

class HomeTab extends ConsumerStatefulWidget {
  const HomeTab({super.key});

  @override
  ConsumerState<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends ConsumerState<HomeTab> {
  final TextEditingController _nameController = TextEditingController();
  String _userName = 'Publicador';
  String? _userImagePath;

  @override
  void initState() {
    super.initState();
    _loadUserProfile();
  }

  Future<void> _loadUserProfile() async {
    final db = await ref.read(databaseServiceProvider.future);
    final name = db.getSetting<String>('user_name');
    final imagePath = db.getSetting<String>('user_image_path');
    
    if (mounted) {
      setState(() {
        if (name != null) {
          _userName = name;
          _nameController.text = name;
        }
        _userImagePath = imagePath;
      });
    }
  }

  Future<void> _saveUserName(String name) async {
    if (name.trim().isEmpty) return;
    final db = await ref.read(databaseServiceProvider.future);
    await db.saveSetting('user_name', name.trim());
    setState(() {
      _userName = name.trim();
    });
  }

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      final db = await ref.read(databaseServiceProvider.future);
      await db.saveSetting('user_image_path', pickedFile.path);
      setState(() {
        _userImagePath = pickedFile.path;
      });
    }
  }

  Future<void> _takePhoto() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      final db = await ref.read(databaseServiceProvider.future);
      await db.saveSetting('user_image_path', pickedFile.path);
      setState(() {
        _userImagePath = pickedFile.path;
      });
    }
  }

  void _showImageOptions(BuildContext context, AppLocalizations l10n) {
    showModalBottomSheet(
      context: context,
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: Text(l10n.chooseFromGallery),
              onTap: () {
                Navigator.pop(context);
                _pickImage();
              },
            ),
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: Text(l10n.takePhoto),
              onTap: () {
                Navigator.pop(context);
                _takePhoto();
              },
            ),
            if (_userImagePath != null)
              ListTile(
                leading: const Icon(Icons.delete, color: Colors.red),
                title: Text(l10n.removePhoto, style: const TextStyle(color: Colors.red)),
                onTap: () async {
                  Navigator.pop(context);
                  final db = await ref.read(databaseServiceProvider.future);
                  await db.saveSetting('user_image_path', null);
                  setState(() {
                    _userImagePath = null;
                  });
                },
              ),
          ],
        ),
      ),
    );
  }

  void _showFullScreenImage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            iconTheme: const IconThemeData(color: Colors.white),
          ),
          body: Center(
            child: InteractiveViewer(
              child: Image.file(File(_userImagePath!)),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    // Obter estado
    final monthlyTime = ref.watch(monthlyServiceTimeProvider);
    final monthlyNotifier = ref.read(monthlyServiceTimeProvider.notifier);
    final progressStatus = ref.watch(progressStatusProvider);
    final profile = ref.watch(publisherProfileProvider);
    // Usar a cor selecionada diretamente para evitar que o tema escuro a ofusque
    final selectedColor = ref.watch(themeColorProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.appName),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Welcome Card (tappable to open profile sheet)
            Builder(
              builder: (context) {
                final isDark = Theme.of(context).brightness == Brightness.dark;
                return InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () => _showProfileSheet(context),
                  child: Card(
                    color: selectedColor.withOpacity(isDark ? 0.5 : 1.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: isDark ? BorderSide(color: selectedColor, width: 1.5) : BorderSide.none,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              if (_userImagePath != null && !kIsWeb) {
                                _showFullScreenImage(context);
                              }
                            },
                            onLongPress: () {
                              if (kIsWeb) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text(l10n.photoEditUnavailable)),
                                );
                                return;
                              }
                              _showImageOptions(context, l10n);
                            },
                            borderRadius: BorderRadius.circular(40),
                            child: CircleAvatar(
                              radius: 32,
                              backgroundColor: Colors.white,
                              backgroundImage: _userImagePath != null
                                  ? (kIsWeb
                                      ? NetworkImage(_userImagePath!)
                                      : FileImage(File(_userImagePath!)) as ImageProvider)
                                  : null,
                              child: _userImagePath == null
                                  ? const Icon(Icons.add_a_photo, size: 28, color: Colors.grey)
                                  : null,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${AppLocalizations.of(context).welcome}, $_userName',
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  AppLocalizations.of(context).goodWorkInMinistry,
                                  style: const TextStyle(color: Colors.white70, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          const Icon(Icons.chevron_right, color: Colors.white54),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            // Monthly Time Display with Progress Indicator
            const SizedBox(height: 8),
            _buildMonthlyTimeDisplay(context, monthlyTime, monthlyNotifier, progressStatus, profile),
            
            // Calendário de Planejamento
            const SizedBox(height: 16),
            Text(
              l10n.monthlyPlanning,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const ServicePlanningCalendar(),

          ],
        ),
      ),
    );
  }

  Widget _buildMonthlyTimeDisplay(
    BuildContext context,
    MonthlyServiceTime monthlyTime,
    MonthlyServiceTimeNotifier monthlyNotifier,
    ProgressStatus progressStatus,
    PublisherProfile profile,
  ) {
    final l10n = AppLocalizations.of(context);
    final bool hasTarget = profile.effectiveTargetHours > 0;
    final bool isOnTrack = progressStatus.isOnTrack;
    final Color statusColor = !hasTarget
        ? Theme.of(context).primaryColor
        : (isOnTrack ? Colors.blue : Colors.amber.shade700);
    final String statusEmoji = !hasTarget ? '' : (isOnTrack ? '😊' : '😟');

    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () async {
        final h = monthlyTime.totalMinutes ~/ 60;
        final m = monthlyTime.totalMinutes % 60;
        final controller = TextEditingController(
          text: monthlyTime.totalMinutes > 0
              ? '${h.toString().padLeft(2, '0')}:${m.toString().padLeft(2, '0')}'
              : '',
        );
        final result = await showDialog<int>(
          context: context,
          builder: (ctx) => AlertDialog(
            title: const Text('Tempo do mês'),
            content: TextField(
              controller: controller,
              keyboardType: TextInputType.datetime,
              autofocus: true,
              decoration: const InputDecoration(
                labelText: 'Horas e minutos',
                hintText: 'ex: 08:30',
                suffixText: 'hh:mm',
                border: OutlineInputBorder(),
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(ctx),
                child: Text(l10n.cancel),
              ),
              FilledButton(
                onPressed: () {
                  final text = controller.text.trim().replaceAll(',', ':').replaceAll('.', ':');
                  int? totalMinutes;
                  if (text.contains(':')) {
                    final parts = text.split(':');
                    final hh = int.tryParse(parts[0]) ?? 0;
                    final mm = parts.length > 1 ? (int.tryParse(parts[1]) ?? 0) : 0;
                    totalMinutes = hh * 60 + mm;
                  } else {
                    final hours = double.tryParse(text);
                    if (hours != null) totalMinutes = (hours * 60).round();
                  }
                  Navigator.pop(ctx, totalMinutes);
                },
                child: Text(l10n.save),
              ),
            ],
          ),
        );
        if (result != null) {
          await monthlyNotifier.setTime(result);
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          color: statusColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
          border: hasTarget ? Border.all(color: statusColor.withOpacity(0.3)) : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (hasTarget && statusEmoji.isNotEmpty) ...[
              Text(statusEmoji, style: const TextStyle(fontSize: 28)),
              const SizedBox(width: 12),
            ],
            Icon(Icons.timer, color: statusColor, size: 24),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      l10n.monthlyTime,
                      style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                    ),
                    if (hasTarget) ...[
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                          color: statusColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          isOnTrack ? l10n.onTrack : l10n.behind,
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: statusColor,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      monthlyTime.formattedTime,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'monospace',
                        color: statusColor,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Icon(Icons.edit, size: 14, color: Colors.grey.shade500),
                    if (monthlyTime.revisitCount > 0) ...[
                      const SizedBox(width: 12),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.orange.shade50,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.orange.shade200),
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.loop, size: 12, color: Colors.orange),
                            const SizedBox(width: 4),
                            Text(
                              '${monthlyTime.revisitCount}',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange.shade800,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                    if (monthlyTime.bibleStudyCount > 0) ...[
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF3E5F5),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: const Color(0xFFCE93D8)),
                        ),
                        child: Row(
                          children: [
                            const Text('📖', style: TextStyle(fontSize: 11)),
                            const SizedBox(width: 4),
                            Text(
                              '${monthlyTime.bibleStudyCount}',
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF6A1B9A),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ],
                ),
                if (hasTarget)
                  Text(
                    '${l10n.target}: ${profile.effectiveTargetHours}h • ${l10n.expected}: ${progressStatus.expectedHours.toStringAsFixed(1)}h',
                    style: TextStyle(fontSize: 10, color: Colors.grey.shade600),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showProfileSheet(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (ctx) => _ProfileBottomSheet(
        userName: _userName,
        onSaveName: (name) {
          _saveUserName(name);
          setState(() => _userName = name);
        },
      ),
    );
  }

  void _showEditNameDialog(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    _nameController.text = _userName;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.yourName),
        content: TextField(
          controller: _nameController,
          autofocus: true,
          decoration: InputDecoration(hintText: l10n.enterYourName),
          textCapitalization: TextCapitalization.words,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () {
              _saveUserName(_nameController.text);
              Navigator.pop(context);
            },
            child: Text(l10n.save),
          ),
        ],
      ),
    );
  }
}

// ── Profile bottom sheet ──────────────────────────────────────────────────────

class _ProfileBottomSheet extends ConsumerStatefulWidget {
  final String userName;
  final void Function(String) onSaveName;

  const _ProfileBottomSheet({required this.userName, required this.onSaveName});

  @override
  ConsumerState<_ProfileBottomSheet> createState() => _ProfileBottomSheetState();
}

class _ProfileBottomSheetState extends ConsumerState<_ProfileBottomSheet> {
  late final TextEditingController _nameCtrl;

  @override
  void initState() {
    super.initState();
    _nameCtrl = TextEditingController(text: widget.userName);
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    super.dispose();
  }

  String _typeName(PublisherType t, AppLocalizations l10n) {
    switch (t) {
      case PublisherType.publisher: return l10n.publisherTypeName;
      case PublisherType.auxiliaryPioneer: return l10n.auxiliaryPioneerTypeName;
      case PublisherType.regularPioneer: return l10n.regularPioneerTypeName;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final profile = ref.watch(publisherProfileProvider);
    final notifier = ref.read(publisherProfileProvider.notifier);

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          left: 16, right: 16, top: 24,
          bottom: MediaQuery.of(context).viewInsets.bottom + 16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Handle bar
            Center(
              child: Container(
                width: 40, height: 4,
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),

            // Name
            Text(l10n.yourName, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
            const SizedBox(height: 6),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _nameCtrl,
                    textCapitalization: TextCapitalization.words,
                    decoration: InputDecoration(
                      hintText: l10n.enterYourName,
                      border: const OutlineInputBorder(),
                      isDense: true,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                FilledButton(
                  onPressed: () {
                    final name = _nameCtrl.text.trim();
                    if (name.isNotEmpty) {
                      widget.onSaveName(name);
                      Navigator.pop(context);
                    }
                  },
                  child: Text(l10n.save),
                ),
              ],
            ),

            const SizedBox(height: 20),
            const Divider(),

            // Tipo de Publicador
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.person),
              title: Text(l10n.publisherType),
              subtitle: Text(_typeName(profile.type, l10n)),
              trailing: DropdownButton<PublisherType>(
                value: profile.type,
                underline: const SizedBox(),
                items: [
                  DropdownMenuItem(value: PublisherType.publisher, child: Text(l10n.publisher)),
                  DropdownMenuItem(value: PublisherType.auxiliaryPioneer, child: Text(l10n.auxiliaryPioneer)),
                  DropdownMenuItem(value: PublisherType.regularPioneer, child: Text(l10n.regularPioneer)),
                ],
                onChanged: (t) { if (t != null) notifier.setType(t); },
              ),
            ),

            const Divider(),

            // Meta de horas (depende do tipo)
            if (profile.type == PublisherType.publisher)
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: const Icon(Icons.timer_outlined),
                title: Text(l10n.hourGoal),
                subtitle: Text('${profile.customTargetHours ?? 0} ${l10n.hoursPerMonth}'),
                trailing: IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () => _showHoursDialog(
                    context, l10n,
                    initial: (profile.customTargetHours ?? 0).toString(),
                    onSave: (h) => notifier.setCustomTargetHours(h),
                  ),
                ),
              ),

            if (profile.type == PublisherType.auxiliaryPioneer)
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: const Icon(Icons.timer_outlined),
                title: Text(l10n.hourGoal),
                subtitle: Text('${profile.monthlyTargetHours} ${l10n.hoursPerMonth}'),
                trailing: DropdownButton<AuxiliaryPioneerTarget>(
                  value: profile.auxiliaryTarget ?? AuxiliaryPioneerTarget.hours15,
                  underline: const SizedBox(),
                  items: [
                    DropdownMenuItem(value: AuxiliaryPioneerTarget.hours15, child: Text('15 ${l10n.hours}')),
                    DropdownMenuItem(value: AuxiliaryPioneerTarget.hours30, child: Text('30 ${l10n.hours}')),
                  ],
                  onChanged: (t) { if (t != null) notifier.setAuxiliaryTarget(t); },
                ),
              ),

            if (profile.type == PublisherType.regularPioneer) ...[ 
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: const Icon(Icons.timer_outlined),
                title: Text(l10n.hourGoal),
                subtitle: Text('50 ${l10n.hoursPerMonth}'),
                trailing: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    '50h',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor),
                  ),
                ),
              ),
              const Divider(),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: const Icon(Icons.volunteer_activism),
                title: Text(l10n.creditHours),
                subtitle: Text(
                  '${profile.creditHours} ${l10n.volunteerWorkHours}',
                  style: const TextStyle(fontSize: 12),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.add_circle, color: Colors.green),
                      tooltip: l10n.addCreditHours,
                      onPressed: profile.creditHours > 0
                          ? () {
                              ref
                                  .read(monthlyServiceTimeProvider.notifier)
                                  .addTime(Duration(hours: profile.creditHours));
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(l10n.creditHoursAdded(profile.creditHours)),
                                  backgroundColor: Colors.green,
                                ),
                              );
                            }
                          : null,
                    ),
                    IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: () => _showCreditDialog(context, l10n, profile, notifier),
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  void _showCreditDialog(
    BuildContext context,
    AppLocalizations l10n,
    PublisherProfile profile,
    PublisherProfileNotifier notifier,
  ) {
    final ctrl = TextEditingController(text: profile.creditHours.toString());
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.creditHours),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              l10n.volunteerWorkHoursDescription,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: ctrl,
              keyboardType: TextInputType.number,
              autofocus: true,
              decoration: InputDecoration(
                labelText: l10n.creditHoursLabel,
                border: const OutlineInputBorder(),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: Text(l10n.cancel)),
          FilledButton(
            onPressed: () {
              notifier.setCreditHours(int.tryParse(ctrl.text) ?? 0);
              Navigator.pop(ctx);
            },
            child: Text(l10n.save),
          ),
        ],
      ),
    );
  }

  void _showHoursDialog(
    BuildContext context,
    AppLocalizations l10n, {
    required String initial,
    required void Function(int) onSave,
  }) {
    final ctrl = TextEditingController(text: initial);
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.hourGoal),
        content: TextField(
          controller: ctrl,
          keyboardType: TextInputType.number,
          autofocus: true,
          decoration: InputDecoration(labelText: l10n.hoursPerMonth, border: const OutlineInputBorder()),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: Text(l10n.cancel)),
          FilledButton(
            onPressed: () { onSave(int.tryParse(ctrl.text) ?? 0); Navigator.pop(ctx); },
            child: Text(l10n.save),
          ),
        ],
      ),
    );
  }
}
