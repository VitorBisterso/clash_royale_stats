import 'package:flutter/material.dart';

ThemeData getTheme() {
  return ThemeData(
    useMaterial3: true,
    fontFamily: 'Clash',
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromRGBO(15, 37, 68, 1),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromRGBO(13, 139, 237, 1),
        foregroundColor: const Color.fromRGBO(241, 241, 241, 1),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        textStyle: const TextStyle(fontSize: 20.0, fontFamily: 'Clash'),
        padding: const EdgeInsets.symmetric(vertical: 12),
      ),
    ),
  );
}
