import 'package:flutter/material.dart';
import 'package:lite/screens/feed.dart';
import 'package:lite/screens/splash.dart';
import 'package:lite/screens/requests.dart';

void main() {
  runApp(const LiteApp());
}

class LiteApp extends StatelessWidget {
  const LiteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF18191A),
        primaryColor: const Color(0xFF1877F2),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF1877F2),
          surface: Color(0xFF242526),
          onSurface: Color(0xFFE4E6EB),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF242526),
          foregroundColor: Color(0xFFE4E6EB),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Color(0xFFE4E6EB)),
          bodyMedium: TextStyle(color: Color(0xFFE4E6EB)),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}