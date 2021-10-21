import 'package:flutter/material.dart';
import 'package:weatherplay/config/theme/app_theme.dart';

ThemeMode switchTheme(int value) {
    switch (value) {
      case 1:
        return ThemeMode.light;
      case 2:
        return ThemeMode.dark;
      default:
        return AppTheme.currentSystemBrightness == Brightness.light ? ThemeMode.light : ThemeMode.dark;
    }
  }