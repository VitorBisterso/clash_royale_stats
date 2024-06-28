import 'package:flutter/material.dart';

import 'package:clash_royale_stats/theme/colors.dart';

ThemeData getTheme() {
  return ThemeData(
    useMaterial3: true,
    fontFamily: 'Clash',
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorConstants.seedColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorConstants.primaryColor,
        foregroundColor: ColorConstants.textWhite,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        textStyle: const TextStyle(fontSize: 20.0, fontFamily: 'Clash'),
        padding: const EdgeInsets.symmetric(vertical: 12),
      ),
    ),
  );
}
