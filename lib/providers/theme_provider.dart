import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/database_service.dart';

// Predefined theme colors (like Google Sheets)
class ThemeColors {
  static const List<Color> predefinedColors = [
    Color(0xFF607D8B), // Default - Cinza/Petróleo
    Color(0xFFEF5350), // Vermelho
    Color(0xFF8D6E63), // Marrom
    Color(0xFF6D4C41), // Marrom escuro
    Color(0xFF66BB6A), // Verde
    Color(0xFF42A5F5), // Azul
    Color(0xFF26C6DA), // Ciano
    Color(0xFFAB47BC), // Roxo
  ];

  static Color fromValue(int value) {
    return Color(value);
  }
}

// Custom Colors Notifier
class CustomColorsNotifier extends StateNotifier<List<Color>> {
  CustomColorsNotifier() : super([]) {
    _loadCustomColors();
  }

  Future<void> _loadCustomColors() async {
    try {
      final db = await DatabaseService.getInstance();
      final colors = db.getSetting<List<dynamic>>('custom_colors');
      if (colors != null) {
        state = colors.map((c) => Color(c as int)).toList();
      }
    } catch (_) {}
  }

  Future<void> addColor(Color color) async {
    if (state.contains(color)) return;
    state = [...state, color];
    await _save();
  }

  Future<void> removeColor(Color color) async {
    state = state.where((c) => c.value != color.value).toList();
    await _save();
  }

  Future<void> _save() async {
    try {
      final db = await DatabaseService.getInstance();
      await db.saveSetting('custom_colors', state.map((c) => c.value).toList());
    } catch (_) {}
  }
}

// Theme Notifier
class ThemeNotifier extends StateNotifier<Color> {
  final Ref _ref;

  ThemeNotifier(this._ref) : super(ThemeColors.predefinedColors[0]) {
    _loadThemeColor();
  }

  Future<void> _loadThemeColor() async {
    try {
      final db = await DatabaseService.getInstance();
      final colorValue = db.getSetting<int>('theme_color');
      if (colorValue != null) {
        state = ThemeColors.fromValue(colorValue);
      }
    } catch (_) {
      // Keep default
    }
  }

  Future<void> setColor(Color color) async {
    state = color;
    try {
      final db = await DatabaseService.getInstance();
      await db.saveSetting('theme_color', color.value);
    } catch (_) {
      // Ignore save errors
    }
  }
}

// Theme Mode Notifier
class ThemeModeNotifier extends StateNotifier<ThemeMode> {
  ThemeModeNotifier() : super(ThemeMode.system) {
    _loadThemeMode();
  }

  Future<void> _loadThemeMode() async {
    try {
      final db = await DatabaseService.getInstance();
      final modeStr = db.getSetting<String>('theme_mode');
      if (modeStr != null) {
        state = ThemeMode.values.firstWhere(
          (e) => e.toString() == modeStr,
          orElse: () => ThemeMode.system,
        );
      }
    } catch (_) {
      // Keep default
    }
  }

  Future<void> setMode(ThemeMode mode) async {
    state = mode;
    try {
      final db = await DatabaseService.getInstance();
      await db.saveSetting('theme_mode', mode.toString());
    } catch (_) {
      // Ignore
    }
  }
}

// Provider
final themeColorProvider = StateNotifierProvider<ThemeNotifier, Color>((ref) {
  return ThemeNotifier(ref);
});

final themeModeProvider = StateNotifierProvider<ThemeModeNotifier, ThemeMode>((ref) {
  return ThemeModeNotifier();
});

final customColorsProvider = StateNotifierProvider<CustomColorsNotifier, List<Color>>((ref) {
  return CustomColorsNotifier();
});

// Light Theme Provider
final lightThemeProvider = Provider<ThemeData>((ref) {
  final themeColor = ref.watch(themeColorProvider);
  return _buildTheme(themeColor, Brightness.light);
});

// Dark Theme Provider
final darkThemeProvider = Provider<ThemeData>((ref) {
  final themeColor = ref.watch(themeColorProvider);
  return _buildTheme(themeColor, Brightness.dark);
});

// Helper to build theme
ThemeData _buildTheme(Color themeColor, Brightness brightness) {
  final isDark = brightness == Brightness.dark;
  
  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: themeColor,
      brightness: brightness,
      primary: themeColor,
      // Adjust onPrimary for dark mode validity if needed, but seed usually handles it
    ),
    scaffoldBackgroundColor: isDark ? const Color(0xFF121212) : const Color(0xFFF5F5F5),
    
    // AppBar
    appBarTheme: AppBarTheme(
      backgroundColor: isDark ? const Color(0xFF1E1E1E) : themeColor,
      foregroundColor: isDark ? Colors.white : Colors.white,
      elevation: 2,
      centerTitle: false,
      titleTextStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    ),
    
    // Cards
    cardTheme: CardThemeData(
      color: isDark ? const Color(0xFF1E1E1E) : Colors.white,
      elevation: 2,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    ),
    
    // Texto
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: isDark ? Colors.white : const Color(0xFF212121),
      ),
      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: isDark ? Colors.white70 : const Color(0xFF212121),
      ),
      titleLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: isDark ? Colors.white : const Color(0xFF212121),
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: isDark ? Colors.white70 : const Color(0xFF212121),
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        color: isDark ? Colors.white : const Color(0xFF212121),
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: isDark ? Colors.white70 : const Color(0xFF757575),
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        color: isDark ? Colors.white54 : const Color(0xFFBDBDBD),
      ),
    ),
    
    // Botões
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: themeColor,
      foregroundColor: Colors.white,
    ),
    
    // ListTile
    listTileTheme: ListTileThemeData(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      tileColor: isDark ? const Color(0xFF1E1E1E) : Colors.white,
      textColor: isDark ? Colors.white : Colors.black,
      iconColor: isDark ? Colors.white70 : Colors.black54,
    ),
    
    // Divider
    dividerTheme: DividerThemeData(
      color: isDark ? const Color(0xFF424242) : const Color(0xFFE0E0E0),
      thickness: 1,
      space: 1,
    ),
    
    // ExpansionTile (Accordion)
    expansionTileTheme: ExpansionTileThemeData(
      backgroundColor: isDark ? const Color(0xFF1E1E1E) : Colors.white,
      collapsedBackgroundColor: isDark ? const Color(0xFF1E1E1E) : Colors.white,
      iconColor: themeColor,
      collapsedIconColor: isDark ? Colors.white70 : const Color(0xFF757575),
      textColor: isDark ? Colors.white : Colors.black,
      collapsedTextColor: isDark ? Colors.white : Colors.black,
    ),
    
    // Input
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: isDark ? const Color(0xFF424242) : Colors.white, // Lighter than background
      prefixIconColor: isDark ? Colors.white70 : const Color(0xFF546E7A),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: isDark ? const Color(0xFF757575) : const Color(0xFFB0BEC5)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: isDark ? const Color(0xFF757575) : const Color(0xFFB0BEC5)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: themeColor, width: 2),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      hintStyle: TextStyle(color: isDark ? Colors.white38 : Colors.grey),
      labelStyle: TextStyle(color: isDark ? Colors.white70 : Colors.grey[800]),
    ),
    
    // Dialog
    dialogTheme: DialogThemeData(
      backgroundColor: isDark ? const Color(0xFF303030) : Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      titleTextStyle: TextStyle(
         fontSize: 20, 
         fontWeight: FontWeight.bold,
         color: isDark ? Colors.white : Colors.black
      ),
      contentTextStyle: TextStyle(
         fontSize: 16,
         color: isDark ? Colors.white70 : Colors.black87
      ),
    ),
    
    // BottomSheet
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: isDark ? const Color(0xFF303030) : Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
    ),
  );
}

// Language Provider
class LanguageNotifier extends StateNotifier<Locale?> {
  LanguageNotifier() : super(null) {
    _loadLanguage();
  }

  Future<void> _loadLanguage() async {
    try {
      final db = await DatabaseService.getInstance();
      final langCode = db.getSetting<String>('app_language');
      if (langCode != null && langCode.isNotEmpty) {
        state = Locale(langCode);
      }
    } catch (_) {
      // Keep null (system default)
    }
  }

  Future<void> setLanguage(Locale? locale) async {
    state = locale;
    try {
      final db = await DatabaseService.getInstance();
      await db.saveSetting('app_language', locale?.languageCode);
    } catch (_) {
      // Ignore
    }
  }
}

final languageProvider = StateNotifierProvider<LanguageNotifier, Locale?>((ref) {
  return LanguageNotifier();
});
