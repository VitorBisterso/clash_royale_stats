import 'package:flutter/material.dart';

import 'package:clash_royale_stats/theme/colors.dart';

ThemeData getTheme() {
  return ThemeData(
    useMaterial3: true,
    fontFamily: 'Clash',
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: ColorConstants.textWhite,
      ),
      backgroundColor: ColorConstants.primaryColor,
      titleTextStyle: TextStyle(
        color: ColorConstants.textWhite,
        fontFamily: 'Clash',
        fontSize: 22.0,
      ),
    ),
    scaffoldBackgroundColor: ColorConstants.seedColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorConstants.seedColor,
      primary: ColorConstants.primaryColor,
      surface: ColorConstants.seedColor,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(),
      bodyMedium: TextStyle(),
    ).apply(
      bodyColor: ColorConstants.textWhite,
      displayColor: ColorConstants.textWhite,
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
