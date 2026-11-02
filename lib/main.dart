import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'providers/theme_provider.dart';
import 'screens/splash_screen.dart';
import 'config/app_localizations.dart';
import 'android_auto/android_auto_entrypoint.dart' show androidAutoMain;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  androidAutoMain;

  // Inicializa formatação de datas em português
  await initializeDateFormatting('pt_BR', null);

  runApp(
    const ProviderScope(
      child: FieldMinistryApp(),
    ),
  );
}

class FieldMinistryApp extends ConsumerWidget {
  const FieldMinistryApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lightTheme = ref.watch(lightThemeProvider);
    final darkTheme = ref.watch(darkThemeProvider);
    final themeMode = ref.watch(themeModeProvider);
    final selectedLanguage = ref.watch(languageProvider);

    return MaterialApp(
      title: 'Field Ministry',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeMode,
      locale: selectedLanguage, // null = sistema
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('pt', 'BR'),
        Locale('pt'),
        Locale('en', 'US'),
        Locale('en'),
        Locale('es'),
        Locale('de'),
        Locale('fr'),
        Locale('it'),
        Locale('ru'),
      ],
      home: const SplashScreen(),
    );
  }
}
