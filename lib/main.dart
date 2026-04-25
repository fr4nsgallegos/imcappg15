import 'package:flutter/material.dart';
import 'package:imcappg15/pages/example_page.dart';
import 'package:imcappg15/pages/imc_page.dart';
import 'package:imcappg15/pages/richtext_page.dart';
import 'package:imcappg15/pages/slider_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImcPage(
        themeMode: _themeMode,
        onThemeChanged: (isDark) {
          _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
          setState(() {});
        },
      ),
      debugShowCheckedModeBanner: false,
      themeMode: _themeMode,
      darkTheme: darkTheme,
      theme: lightTheme,
    );
  }
}

ThemeMode _themeMode = ThemeMode.dark;

final lightTheme = ThemeData(
  primaryColor: Colors.red,
  secondaryHeaderColor: Colors.blue,
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.indigo,
    brightness: Brightness.light,
  ),
  textTheme: TextTheme(
    bodyMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
    bodyLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
  ),
);

final darkTheme = ThemeData(
  primaryColor: Colors.red,
  secondaryHeaderColor: Colors.blue,
  useMaterial3: true,
  brightness: Brightness.dark,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.indigo,
    brightness: Brightness.dark,
  ),
  textTheme: TextTheme(
    bodyMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
    bodyLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
  ),
  sliderTheme: SliderThemeData(thumbColor: Colors.yellow),
);
