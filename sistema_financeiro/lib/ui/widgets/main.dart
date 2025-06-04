import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:sistema_financeiro/ui/view/home_screen.dart';
import 'package:sistema_financeiro/common/themes/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDateFormatting('pt_BR', null);

  runApp(
    MaterialApp(
      title: 'Finacial Tracking App',
      debugShowCheckedModeBanner: false,
      theme: appLightTheme,
      darkTheme: appDarkTheme,
      themeMode: ThemeMode.system,
      home: const HomeScreen(),
    ),
  );
}
