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

    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _SectionHeader(title: 'Aparência'),
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.brightness_6),
                  title: const Text('Tema'),
                  subtitle: Text(_getThemeModeLabel(themeMode)),
                  trailing: DropdownButton<ThemeMode>(
                    value: themeMode,
                    underline: Container(),
                    items: const [
                      DropdownMenuItem(
                        value: ThemeMode.system,
                        child: Text('Sistema'),
                      ),
                      DropdownMenuItem(
                        value: ThemeMode.light,
                        child: Text('Claro'),
                      ),
                      DropdownMenuItem(
                        value: ThemeMode.dark,
                        child: Text('Escuro'),
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
                      const Text(
                        'Cor Principal',
                        style: TextStyle(fontWeight: FontWeight.w500),
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
          _SectionHeader(title: 'Perfil'),
          const _PublisherProfileSettings(),
          const SizedBox(height: 24),
          _SectionHeader(title: 'Serviço'),
          Card(
            child: Column(
              children: [
                _MonthlyTimeEditor(),
              ],
            ),
          ),
          const SizedBox(height: 24),
          _SectionHeader(title: 'Dados'),
          Card(
            child: Column(
              children: [
                const _CsvSettingsCard(),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.cloud_queue),
                  title: const Text('Provedor de Backup'),
                  subtitle: const Text('Nuvem para salvar seus dados'),
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
                         ? 'Último backup: ${DateFormat('dd/MM HH:mm').format(backupState.lastBackupDate!)}' 
                         : 'Nenhum backup encontrado'
                    ),
                    trailing: IconButton(
                       icon: const Icon(Icons.logout),
                       onPressed: () => backupNotifier.signOut(),
                    ),
                  )
                else
                  ListTile(
                    leading: const Icon(Icons.cloud_off),
                    title: const Text('Não conectado'),
                    subtitle: const Text('Faça login para salvar seus dados'),
                    trailing: FilledButton.icon(
                      onPressed: () => backupNotifier.signIn(),
                      icon: const Icon(Icons.login),
                      label: const Text('Login'),
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
                             label: const Text('Fazer Backup'),
                           ),
                           OutlinedButton.icon(
                             onPressed: () => _showRestoreConfirmDialog(context, backupNotifier),
                             icon: const Icon(Icons.cloud_download),
                             label: const Text('Restaurar'),
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

  String _getThemeModeLabel(ThemeMode mode) {
    switch (mode) {
      case ThemeMode.system:
        return 'Padrão do Sistema';
      case ThemeMode.light:
        return 'Modo Claro';
      case ThemeMode.dark:
        return 'Modo Escuro';
    }
  }

  void _showRestoreConfirmDialog(BuildContext context, BackupNotifier notifier) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Restaurar Backup?'),
        content: const Text(
          'Atenção: Restaurar um backup substituirá TODOS os dados atuais do aplicativo. '
          'Certifique-se de que o backup na nuvem é mais recente que seus dados locais.'
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
          FilledButton(
            style: FilledButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {
              Navigator.pop(context);
              notifier.restore();
            },
            child: const Text('Restaurar Agora'),
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
            color: isSelected ? Colors.black : Colors.grey.shade300,
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

  static const _languages = [
    (code: null, label: 'Sistema (Padrão)', flag: '🌐'),
    (code: 'pt', label: 'Português', flag: '🇧🇷'),
    (code: 'en', label: 'English', flag: '🇺🇸'),
    (code: 'es', label: 'Español', flag: '🇪🇸'),
    (code: 'de', label: 'Deutsch', flag: '🇩🇪'),
    (code: 'fr', label: 'Français', flag: '🇫🇷'),
    (code: 'it', label: 'Italiano', flag: '🇮🇹'),
    (code: 'ru', label: 'Русский', flag: '🇷🇺'),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedLanguage = ref.watch(languageProvider);
    final languageNotifier = ref.read(languageProvider.notifier);
    
    // Find current selection
    final currentIndex = _languages.indexWhere(
      (lang) => lang.code == selectedLanguage?.languageCode
    );
    final current = currentIndex >= 0 ? _languages[currentIndex] : _languages[0];

    return ListTile(
      leading: const Icon(Icons.language),
      title: const Text('Idioma'),
      subtitle: Text('${current.flag} ${current.label}'),
      trailing: const Icon(Icons.chevron_right),
      onTap: () => _showLanguageDialog(context, selectedLanguage, languageNotifier),
    );
  }

  void _showLanguageDialog(BuildContext context, Locale? current, LanguageNotifier notifier) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Selecionar Idioma'),
        content: SizedBox(
          width: double.maxFinite,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: _languages.length,
            itemBuilder: (context, index) {
              final lang = _languages[index];
              final isSelected = current?.languageCode == lang.code || 
                                 (current == null && lang.code == null);
              
              return ListTile(
                leading: Text(lang.flag, style: const TextStyle(fontSize: 24)),
                title: Text(lang.label),
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
            child: const Text('Cancelar'),
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
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        leading: const Icon(Icons.table_chart),
        title: const Text('Exportação CSV'),
        subtitle: const Text('Configurar colunas'),
        children: _fields.keys.map((key) {
           return CheckboxListTile(
            title: Text(_labelFor(key)),
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

  String _labelFor(String key) {
    switch (key) {
      case 'territory': return 'Território';
      case 'street': return 'Rua';
      case 'number': return 'Número';
      case 'date': return 'Data';
      case 'time': return 'Hora';
      case 'notes': return 'Notas';
      default: return key;
    }
  }
}

class _MonthlyTimeEditor extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final monthlyTime = ref.watch(monthlyServiceTimeProvider);
    final monthlyNotifier = ref.read(monthlyServiceTimeProvider.notifier);

    return ListTile(
      leading: const Icon(Icons.timer),
      title: const Text('Tempo do Mês'),
      subtitle: Text('Total: ${monthlyTime.formattedTime}'),
      trailing: IconButton(
        icon: const Icon(Icons.edit),
        onPressed: () => _showEditTimeDialog(context, monthlyTime, monthlyNotifier),
      ),
    );
  }

  void _showEditTimeDialog(BuildContext context, MonthlyServiceTime currentTime, MonthlyServiceTimeNotifier notifier) {
    final hoursController = TextEditingController(text: (currentTime.totalMinutes ~/ 60).toString());
    final minutesController = TextEditingController(text: (currentTime.totalMinutes % 60).toString());

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Editar Tempo do Mês'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              _getMonthName(currentTime.month),
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: hoursController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Horas',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TextField(
                    controller: minutesController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Minutos',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
          FilledButton(
            onPressed: () {
              final hours = int.tryParse(hoursController.text) ?? 0;
              final minutes = int.tryParse(minutesController.text) ?? 0;
              final totalMinutes = (hours * 60) + minutes;
              notifier.setTime(totalMinutes);
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Tempo do mês atualizado!'),
                  backgroundColor: Colors.green,
                ),
              );
            },
            child: const Text('Salvar'),
          ),
        ],
      ),
    );
  }

  String _getMonthName(int month) {
    const months = [
      'Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho',
      'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'
    ];
    return months[month - 1];
  }
}

class _PublisherProfileSettings extends ConsumerWidget {
  const _PublisherProfileSettings();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(publisherProfileProvider);
    final notifier = ref.read(publisherProfileProvider.notifier);

    return Card(
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Tipo de Publicador'),
            subtitle: Text(profile.typeName),
            trailing: DropdownButton<PublisherType>(
              value: profile.type,
              underline: Container(),
              items: const [
                DropdownMenuItem(
                  value: PublisherType.publisher,
                  child: Text('Publicador'),
                ),
                DropdownMenuItem(
                  value: PublisherType.auxiliaryPioneer,
                  child: Text('Pioneiro Auxiliar'),
                ),
                DropdownMenuItem(
                  value: PublisherType.regularPioneer,
                  child: Text('Pioneiro Regular'),
                ),
              ],
              onChanged: (type) {
                if (type != null) {
                  notifier.setType(type);
                }
              },
            ),
          ),
          const Divider(),
          // Opções específicas por tipo
          if (profile.type == PublisherType.publisher)
            _PublisherHoursEditor(profile: profile, notifier: notifier),
          if (profile.type == PublisherType.auxiliaryPioneer)
            _AuxiliaryPioneerSettings(profile: profile, notifier: notifier),
          if (profile.type == PublisherType.regularPioneer)
            _RegularPioneerSettings(profile: profile, notifier: notifier),
        ],
      ),
    );
  }
}

class _PublisherHoursEditor extends StatelessWidget {
  final PublisherProfile profile;
  final PublisherProfileNotifier notifier;

  const _PublisherHoursEditor({
    required this.profile,
    required this.notifier,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.timer_outlined),
      title: const Text('Meta de Horas'),
      subtitle: Text('${profile.customTargetHours ?? 0} horas/mês'),
      trailing: IconButton(
        icon: const Icon(Icons.edit),
        onPressed: () => _showEditHoursDialog(context),
      ),
    );
  }

  void _showEditHoursDialog(BuildContext context) {
    final controller = TextEditingController(
      text: (profile.customTargetHours ?? 0).toString(),
    );

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Meta de Horas'),
        content: TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            labelText: 'Horas por mês',
            border: OutlineInputBorder(),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
          FilledButton(
            onPressed: () {
              final hours = int.tryParse(controller.text) ?? 0;
              notifier.setCustomTargetHours(hours);
              Navigator.pop(context);
            },
            child: const Text('Salvar'),
          ),
        ],
      ),
    );
  }
}

class _AuxiliaryPioneerSettings extends StatelessWidget {
  final PublisherProfile profile;
  final PublisherProfileNotifier notifier;

  const _AuxiliaryPioneerSettings({
    required this.profile,
    required this.notifier,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.timer_outlined),
      title: const Text('Meta de Horas'),
      subtitle: Text('${profile.monthlyTargetHours} horas/mês'),
      trailing: DropdownButton<AuxiliaryPioneerTarget>(
        value: profile.auxiliaryTarget ?? AuxiliaryPioneerTarget.hours15,
        underline: Container(),
        items: const [
          DropdownMenuItem(
            value: AuxiliaryPioneerTarget.hours15,
            child: Text('15 horas'),
          ),
          DropdownMenuItem(
            value: AuxiliaryPioneerTarget.hours30,
            child: Text('30 horas'),
          ),
        ],
        onChanged: (target) {
          if (target != null) {
            notifier.setAuxiliaryTarget(target);
          }
        },
      ),
    );
  }
}

class _RegularPioneerSettings extends StatelessWidget {
  final PublisherProfile profile;
  final PublisherProfileNotifier notifier;

  const _RegularPioneerSettings({
    required this.profile,
    required this.notifier,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(Icons.timer_outlined),
          title: const Text('Meta de Horas'),
          subtitle: const Text('50 horas/mês'),
          trailing: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              '50h',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.volunteer_activism),
          title: const Text('Crédito de Horas'),
          subtitle: Text(
            '${profile.creditHours} horas de trabalho voluntário',
            style: const TextStyle(fontSize: 12),
          ),
          trailing: IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () => _showEditCreditDialog(context),
          ),
        ),
      ],
    );
  }

  void _showEditCreditDialog(BuildContext context) {
    final controller = TextEditingController(
      text: profile.creditHours.toString(),
    );

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Crédito de Horas'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Horas de outros trabalhos voluntários que contam para sua meta:',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Horas de crédito',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
          FilledButton(
            onPressed: () {
              final hours = int.tryParse(controller.text) ?? 0;
              notifier.setCreditHours(hours);
              Navigator.pop(context);
            },
            child: const Text('Salvar'),
          ),
        ],
      ),
    );
  }
}
