import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import '../providers/service_timer_provider.dart';
import '../providers/publisher_profile_provider.dart';
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

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    // Obter estado
    final monthlyTime = ref.watch(monthlyServiceTimeProvider);
    final progressStatus = ref.watch(progressStatusProvider);
    final profile = ref.watch(publisherProfileProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.appName),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Welcome Card (Fixed Height roughly)
            Card(
              color: Theme.of(context).primaryColor,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        if (kIsWeb) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(l10n.photoEditUnavailable)),
                          );
                          return;
                        }
                        _pickImage();
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
                          Row(
                            children: [
                              Text(
                                '${AppLocalizations.of(context).welcome}, $_userName',
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              IconButton(
                                icon: const Icon(Icons.edit, size: 18, color: Colors.white70),
                                onPressed: () => _showEditNameDialog(context),
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                                visualDensity: VisualDensity.compact,
                              ),
                            ],
                          ),
                          Text(
                            AppLocalizations.of(context).goodWorkInMinistry,
                            style: const TextStyle(color: Colors.white70, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Monthly Time Display with Progress Indicator
            const SizedBox(height: 8),
            _buildMonthlyTimeDisplay(context, monthlyTime, progressStatus, profile),
            
            // Calendário de Planejamento
            const SizedBox(height: 16),
            const Text(
              'Planejamento do Mês',
              style: TextStyle(
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
    ProgressStatus progressStatus,
    PublisherProfile profile,
  ) {
    // Determinar cor e emoji baseado no progresso
    final bool hasTarget = profile.effectiveTargetHours > 0;
    final bool isOnTrack = progressStatus.isOnTrack;
    
    // Cores: azul para em dia/adiantado, amarelo para atrasado
    final Color statusColor = !hasTarget 
        ? Theme.of(context).primaryColor 
        : (isOnTrack ? Colors.blue : Colors.amber.shade700);
    
    // Emojis: 😊 para em dia, 😟 para atrasado
    final String statusEmoji = !hasTarget ? '' : (isOnTrack ? '😊' : '😟');
    
    return Container(
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
            Text(
              statusEmoji,
              style: const TextStyle(fontSize: 28),
            ),
            const SizedBox(width: 12),
          ],
          Icon(
            Icons.timer,
            color: statusColor,
            size: 24,
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Tempo do Mês',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade600,
                    ),
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
                        isOnTrack ? 'Em dia' : 'Atrasado',
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
              Text(
                monthlyTime.formattedTime,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'monospace',
                  color: statusColor,
                ),
              ),
              if (hasTarget)
                Text(
                  'Meta: ${profile.effectiveTargetHours}h • Esperado: ${progressStatus.expectedHours.toStringAsFixed(1)}h',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey.shade600,
                  ),
                ),
            ],
          ),
        ],
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
