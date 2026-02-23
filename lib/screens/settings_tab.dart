import 'package:flutter/material.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../providers/theme_provider.dart';
import '../providers/backup_provider.dart';
import '../providers/territory_provider.dart';
import '../providers/service_timer_provider.dart';
import '../providers/publisher_profile_provider.dart';
import '../models/publisher_profile.dart';
import '../config/app_localizations.dart';

class SettingsTab extends ConsumerWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final backupState = ref.watch(backupProvider);
    final backupNotifier = ref.read(backupProvider.notifier);
    final themeMode = ref.watch(themeModeProvider);
    final themeModeNotifier = ref.read(themeModeProvider.notifier);

    // Listen for backup status
    ref.listen(backupProvider, (prev, next) {
      if (next.error != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(next.error!), backgroundColor: Colors.red),
        );
      }
      if (next.successMessage != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(next.successMessage!), backgroundColor: Colors.green),
        );
      }
    });

    final l10n = AppLocalizations.of(context);
    
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.settings),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _SectionHeader(title: l10n.appearance),
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.brightness_6),
                  title: Text(l10n.theme),
                  subtitle: Text(_getThemeModeLabel(context, themeMode)),
                  trailing: DropdownButton<ThemeMode>(
                    value: themeMode,
                    underline: Container(),
                    items: [
                      DropdownMenuItem(
                        value: ThemeMode.system,
                        child: Text(l10n.system),
                      ),
                      DropdownMenuItem(
                        value: ThemeMode.light,
                        child: Text(l10n.light),
                      ),
                      DropdownMenuItem(
                        value: ThemeMode.dark,
                        child: Text(l10n.dark),
                      ),
                    ],
                    onChanged: (mode) {
                      if (mode != null) {
                        themeModeNotifier.setMode(mode);
                      }
                    },
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        l10n.primaryColor,
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 12),
                      _ThemeColorPicker(),
                    ],
                  ),
                ),
                const Divider(),
                const _LanguageSelector(),
              ],
            ),
          ),
          const SizedBox(height: 24),


          _SectionHeader(title: l10n.data),
          Card(
            child: Column(
              children: [
                const _CsvSettingsCard(),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.cloud_queue),
                  title: Text(l10n.backupProvider),
                  subtitle: Text(l10n.cloudBackupSubtitle),
                  trailing: DropdownButton<String>(
                    value: ref.watch(selectedBackupServiceProvider),
                    underline: Container(),
                    items: const [
                       DropdownMenuItem(
                         value: 'onedrive',
                         child: Row(
                           mainAxisSize: MainAxisSize.min,
                           children: [
                             Icon(Icons.cloud, size: 20),
                             SizedBox(width: 8),
                             Text('OneDrive'),
                           ],
                         ),
                       ),
                       DropdownMenuItem(
                         value: 'google_drive',
                         child: Row(
                           mainAxisSize: MainAxisSize.min,
                           children: [
                             Icon(Icons.cloud_upload, size: 20, color: Colors.green),
                             SizedBox(width: 8),
                             Text('Google Drive'),
                           ],
                         ),
                       ),
                       DropdownMenuItem(
                         value: 'dropbox',
                         child: Row(
                           mainAxisSize: MainAxisSize.min,
                           children: [
                             Icon(Icons.folder_open, size: 20),
                             SizedBox(width: 8),
                             Text('Dropbox'),
                           ],
                         ),
                       ),
                    ],
                    onChanged: (value) {
                      if (value != null) {
                        ref.read(selectedBackupServiceProvider.notifier).state = value;
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Card(
            child: Column(
              children: [
                if (backupState.currentUser != null)
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: backupState.currentUser?.photoUrl != null
                          ? NetworkImage(backupState.currentUser!.photoUrl!)
                          : null,
                      child: backupState.currentUser?.photoUrl == null
                          ? const Icon(Icons.person)
                          : null,
                    ),
                    title: Text(backupState.currentUser!.email),
                    subtitle: Text(backupState.lastBackupDate != null 
                         ? l10n.lastBackupAt(DateFormat('dd/MM HH:mm').format(backupState.lastBackupDate!)) 
                         : l10n.noBackupFound
                    ),
                    trailing: IconButton(
                       icon: const Icon(Icons.logout),
                       onPressed: () => backupNotifier.signOut(),
                    ),
                  )
                else
                  ListTile(
                    leading: const Icon(Icons.cloud_off),
                    title: Text(l10n.notConnected),
                    subtitle: Text(l10n.loginToBackup),
                    trailing: FilledButton.icon(
                      onPressed: () => backupNotifier.signIn(),
                      icon: const Icon(Icons.login),
                      label: Text(l10n.login),
                    ),
                  ),
                
                if (backupState.currentUser != null) ...[
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        if (backupState.isLoading)
                           const CircularProgressIndicator()
                        else ...[
                           ElevatedButton.icon(
                             onPressed: () => backupNotifier.backup(),
                             icon: const Icon(Icons.cloud_upload),
                             label: Text(l10n.backup),
                           ),
                           OutlinedButton.icon(
                             onPressed: () => _showRestoreConfirmDialog(context, backupNotifier),
                             icon: const Icon(Icons.cloud_download),
                             label: Text(l10n.restore),
                           ),
                        ],
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _getThemeModeLabel(BuildContext context, ThemeMode mode) {
    final l10n = AppLocalizations.of(context);
    switch (mode) {
      case ThemeMode.system:
        return l10n.systemDefault;
      case ThemeMode.light:
        return l10n.lightMode;
      case ThemeMode.dark:
        return l10n.darkMode;
    }
  }

  void _showRestoreConfirmDialog(BuildContext context, BackupNotifier notifier) {
    final l10n = AppLocalizations.of(context);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.restoreBackupTitle),
        content: Text(l10n.restoreWarning),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            style: FilledButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {
              Navigator.pop(context);
              notifier.restore();
            },
            child: Text(l10n.restoreNow),
          ),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;

  const _SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, left: 4),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).primaryColor,
          letterSpacing: 1,
        ),
      ),
    );
  }
}

class _ThemeColorPicker extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentColor = ref.watch(themeColorProvider);
    final themeNotifier = ref.read(themeColorProvider.notifier);
    final customColors = ref.watch(customColorsProvider);
    final customColorsNotifier = ref.read(customColorsProvider.notifier);

    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: [
        // Cores predefinidas
        ...ThemeColors.predefinedColors.map((color) => _ColorButton(
          color: color,
          isSelected: color.value == currentColor.value,
          onTap: () => themeNotifier.setColor(color),
        )),
        
        // Cores personalizadas
        ...customColors.map((color) => _ColorButton(
          color: color,
          isSelected: color.value == currentColor.value,
          onTap: () => themeNotifier.setColor(color),
          onLongPress: () => _confirmDeleteColor(context, color, customColorsNotifier),
        )),

        // Botão Adicionar
        GestureDetector(
          onTap: () => _showColorPicker(context, customColorsNotifier, themeNotifier),
          child: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey.shade400, width: 1, style: BorderStyle.solid),
            ),
            child: const Icon(Icons.add, color: Colors.grey),
          ),
        ),
      ],
    );
  }

  void _showColorPicker(BuildContext context, CustomColorsNotifier notifier, ThemeNotifier themeNotifier) async {
    Color selectedColor = Colors.blue;
    
    final bool confirmed = await ColorPicker(
      color: selectedColor,
      onColorChanged: (Color color) => selectedColor = color,
      width: 40,
      height: 40,
      borderRadius: 20,
      spacing: 10,
      runSpacing: 10,
      wheelDiameter: 165,
      heading: Text(
        'Selecionar Cor',
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subheading: Text(
        'Tons',
        style: Theme.of(context).textTheme.titleSmall,
      ),
      wheelSubheading: Text(
        'Ajuste',
        style: Theme.of(context).textTheme.titleSmall,
      ),
      showColorName: true,
      showColorCode: true,
      copyPasteBehavior: const ColorPickerCopyPasteBehavior(
        longPressMenu: true,
      ),
      materialNameTextStyle: Theme.of(context).textTheme.bodySmall,
      colorNameTextStyle: Theme.of(context).textTheme.bodySmall,
      colorCodeTextStyle: Theme.of(context).textTheme.bodySmall,
      pickersEnabled: const <ColorPickerType, bool>{
        ColorPickerType.both: false,
        ColorPickerType.primary: true,
        ColorPickerType.accent: true,
        ColorPickerType.bw: false,
        ColorPickerType.custom: false,
        ColorPickerType.wheel: true,
      },
    ).showPickerDialog(
      context,
      constraints: const BoxConstraints(minHeight: 460, minWidth: 300, maxWidth: 320),
    );

    if (confirmed) {
      await notifier.addColor(selectedColor);
      await themeNotifier.setColor(selectedColor);
    }
  }

  void _confirmDeleteColor(BuildContext context, Color color, CustomColorsNotifier notifier) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Remover cor?'),
        content: Row(
          children: [
            Container(width: 24, height: 24, decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
            const SizedBox(width: 8),
            const Text('Deseja remover esta cor personalizada?'),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancelar')),
          TextButton(
            onPressed: () {
              notifier.removeColor(color);
              Navigator.pop(context);
            },
            child: const Text('Remover', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}

class _ColorButton extends StatelessWidget {
  final Color color;
  final bool isSelected;
  final VoidCallback onTap;
  final VoidCallback? onLongPress;

  const _ColorButton({
    required this.color,
    required this.isSelected,
    required this.onTap,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    // Usar branco no tema escuro e preto no tema claro para melhor contraste
    final selectedBorderColor = isDark ? Colors.white : Colors.black;
    final unselectedBorderColor = isDark ? Colors.grey.shade600 : Colors.grey.shade300;
    
    return GestureDetector(
      onTap: onTap,
      onLongPress: onLongPress,
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected ? selectedBorderColor : unselectedBorderColor,
            width: isSelected ? 3 : 1,
          ),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: color.withOpacity(0.4),
                    blurRadius: 8,
                    spreadRadius: 2,
                  )
                ]
              : null,
        ),
        child: isSelected
            ? const Icon(Icons.check, color: Colors.white, size: 24)
            : null,
      ),
    );
  }
}

class _LanguageSelector extends ConsumerWidget {
  const _LanguageSelector();

  static const _languageCodes = [
    (code: null, flag: '🌐'),
    (code: 'pt', flag: '🇧🇷'),
    (code: 'en', flag: '🇺🇸'),
    (code: 'es', flag: '🇪🇸'),
    (code: 'de', flag: '🇩🇪'),
    (code: 'fr', flag: '🇫🇷'),
    (code: 'it', flag: '🇮🇹'),
    (code: 'ru', flag: '🇷🇺'),
  ];

  static const _languageLabels = {
    null: 'systemDefault', // Will be replaced with l10n
    'pt': 'Português',
    'en': 'English',
    'es': 'Español',
    'de': 'Deutsch',
    'fr': 'Français',
    'it': 'Italiano',
    'ru': 'Русский',
  };

  String _getLangLabel(String? code, AppLocalizations l10n) {
    if (code == null) return l10n.systemDefault;
    return _languageLabels[code] ?? code;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedLanguage = ref.watch(languageProvider);
    final languageNotifier = ref.read(languageProvider.notifier);
    
    // Find current selection
    final currentIndex = _languageCodes.indexWhere(
      (lang) => lang.code == selectedLanguage?.languageCode
    );
    final current = currentIndex >= 0 ? _languageCodes[currentIndex] : _languageCodes[0];

    final l10n = AppLocalizations.of(context);
    
    return ListTile(
      leading: const Icon(Icons.language),
      title: Text(l10n.language),
      subtitle: Text('${current.flag} ${_getLangLabel(current.code, l10n)}'),
      trailing: const Icon(Icons.chevron_right),
      onTap: () => _showLanguageDialog(context, selectedLanguage, languageNotifier, l10n),
    );
  }

  void _showLanguageDialog(BuildContext context, Locale? current, LanguageNotifier notifier, AppLocalizations l10n) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.selectLanguage),
        content: SizedBox(
          width: double.maxFinite,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: _languageCodes.length,
            itemBuilder: (context, index) {
              final lang = _languageCodes[index];
              final isSelected = current?.languageCode == lang.code || 
                                 (current == null && lang.code == null);
              
              return ListTile(
                leading: Text(lang.flag, style: const TextStyle(fontSize: 24)),
                title: Text(_getLangLabel(lang.code, l10n)),
                trailing: isSelected 
                    ? Icon(Icons.check, color: Theme.of(context).primaryColor)
                    : null,
                onTap: () {
                  notifier.setLanguage(lang.code != null ? Locale(lang.code!) : null);
                  Navigator.pop(context);
                },
              );
            },
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
          ),
        ],
      ),
    );
  }
}

class _CsvSettingsCard extends ConsumerStatefulWidget {
  const _CsvSettingsCard();

  @override
  ConsumerState<_CsvSettingsCard> createState() => _CsvSettingsCardState();
}

class _CsvSettingsCardState extends ConsumerState<_CsvSettingsCard> {
  Map<String, bool> _fields = {
    'territory': true,
    'street': true,
    'number': true,
    'date': true,
    'time': false,
    'notes': false,
  };

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    // Default values if nothing saved
    final db = await ref.read(databaseServiceProvider.future);
    final saved = db.getSetting<List<dynamic>>('csv_export_fields');
    if (saved != null) {
      final savedList = saved.cast<String>();
      if (mounted) {
        setState(() {
          _fields = {
            'territory': savedList.contains('territory'),
            'street': savedList.contains('street'),
            'number': savedList.contains('number'),
            'date': savedList.contains('date'),
            'time': savedList.contains('time'),
            'notes': savedList.contains('notes'),
          };
        });
      }
    }
  }

  Future<void> _saveSettings() async {
    final db = await ref.read(databaseServiceProvider.future);
    final enabled = _fields.entries.where((e) => e.value).map((e) => e.key).toList();
    await db.saveSetting('csv_export_fields', enabled);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        leading: const Icon(Icons.table_chart),
        title: Text(l10n.exportCsv),
        subtitle: Text(l10n.configureColumns),
        children: _fields.keys.map((key) {
           return CheckboxListTile(
            title: Text(_labelFor(key, l10n)),
            value: _fields[key],
            onChanged: (val) {
              setState(() => _fields[key] = val ?? false);
              _saveSettings();
            },
          );
        }).toList(),
      ),
    );
  }

  String _labelFor(String key, AppLocalizations l10n) {
    switch (key) {
      case 'territory': return l10n.territory;
      case 'street': return l10n.street;
      case 'number': return l10n.addressNumber;
      case 'date': return l10n.date;
      case 'time': return l10n.hour;
      case 'notes': return l10n.notes;
      default: return key;
    }
  }
}

