import 'package:flutter/material.dart';

import 'app_button_theme.dart';
import 'app_colors.dart';
import 'app_text_theme.dart';

ThemeData lightTheme() {
  final TextTheme textTheme = appTextTheme(AppColors.gray5, AppColors.gray4);

  return ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.background,
    primaryColor: AppColors.primaryGreen,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryGreen,
      secondary: AppColors.primaryGreenLight,
      error: AppColors.red,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      foregroundColor: AppColors.gray5,
    ),
    textTheme: textTheme,
    elevatedButtonTheme: primaryButtonTheme(
      background: AppColors.primaryGreen,
      foreground: Colors.white,
    ),
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
  );
}
