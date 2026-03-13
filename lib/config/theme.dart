import 'package:flutter/material.dart';

/// Cores do app Field Ministry baseadas no Ministry Assistant original
class AppColors {
  // Cores principais
  static const Color primary = Color(0xFF607D8B); // Cinza-azulado
  static const Color primaryDark = Color(0xFF455A64);
  static const Color primaryLight = Color(0xFF90A4AE);
  
  // Cores de fundo
  static const Color background = Color(0xFFF5F5F5);
  static const Color surface = Colors.white;
  static const Color cardBackground = Colors.white;
  
  // Cores de texto
  static const Color textPrimary = Color(0xFF212121);
  static const Color textSecondary = Color(0xFF757575);
  static const Color textHint = Color(0xFFBDBDBD);
  
  // Cores de status
  static const Color statusNotHome = Color(0xFF9E9E9E);      // Cinza
  static const Color statusInterested = Color(0xFF4CAF50);   // Verde
  static const Color statusNotInterested = Color(0xFFF44336); // Vermelho
  static const Color statusNoTime = Color(0xFFFF9800);       // Laranja
  static const Color statusDoNotCall = Color(0xFF795548);    // Marrom
  static const Color statusReturnVisit = Color(0xFF2196F3);  // Azul
  static const Color statusEmptyHouse = Color(0xFFE0E0E0);   // Cinza claro
  static const Color statusOtherLanguage = Color(0xFF9C27B0); // Roxo
  static const Color statusLetterLeft = Color(0xFF00BCD4);   // Ciano
  static const Color statusBibleStudy = Color(0xFF673AB7);   // Roxo Escuro
  
  // Divisores e bordas
  static const Color divider = Color(0xFFE0E0E0);
  static const Color border = Color(0xFFD8D8D8);
}

/// Tema do app Field Ministry
class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        brightness: Brightness.light,
        primary: AppColors.primary,
        onPrimary: Colors.white,
        surface: AppColors.surface,
        background: AppColors.background,
      ),
      scaffoldBackgroundColor: AppColors.background,
      
      // AppBar
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        elevation: 2,
        centerTitle: false,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
      
      // Cards
      cardTheme: const CardThemeData(
        color: AppColors.cardBackground,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      ),
      
      
      // Texto
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.textPrimary,
        ),
        headlineMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.textPrimary,
        ),
        titleLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: AppColors.textPrimary,
        ),
        titleMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.textPrimary,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          color: AppColors.textPrimary,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          color: AppColors.textSecondary,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          color: AppColors.textHint,
        ),
      ),
      
      // Botões
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
      ),
      
      // ListTile
      listTileTheme: const ListTileThemeData(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        tileColor: Colors.white,
      ),
      
      // Divider
      dividerTheme: const DividerThemeData(
        color: AppColors.divider,
        thickness: 1,
        space: 1,
      ),
      
      // ExpansionTile (Accordion)
      expansionTileTheme: const ExpansionTileThemeData(
        backgroundColor: Colors.white,
        collapsedBackgroundColor: Colors.white,
        iconColor: AppColors.primary,
        collapsedIconColor: AppColors.textSecondary,
      ),
      
      // Input
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.primary, width: 2),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ), 
      
      /*
      // Dialog
      dialogTheme: const DialogThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
      */
      
      // BottomSheet
      bottomSheetTheme: const BottomSheetThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        ),
      ),
    );
  }
  
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        brightness: Brightness.dark,
      ),
      // TODO: Implementar tema escuro completo se necessário
    );
  }
}
