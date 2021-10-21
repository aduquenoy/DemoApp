import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:weatherplay/config/theme/app_color.dart';

class AppTheme {

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColor.lightPrimaryColor,
    accentColor: AppColor.lightAccentColor,
    cardColor: AppColor.darkPrimaryColor,
    backgroundColor: AppColor.lightBackgroundColor,
    fontFamily: 'WeatherIcons',
    visualDensity: VisualDensity.adaptivePlatformDensity,
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    hoverColor: Colors.transparent,
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColor.darkPrimaryColor,
    accentColor: AppColor.darkAccentColor,
    cardColor: AppColor.lightPrimaryColor,
    buttonColor: AppColor.hotColor,
    backgroundColor: AppColor.darkBackgroundColor,
    fontFamily: 'WeatherIcons',
    visualDensity: VisualDensity.adaptivePlatformDensity,
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    hoverColor: Colors.transparent,
  );

  static Brightness get currentSystemBrightness => SchedulerBinding.instance!.window.platformBrightness;

  static setStatusBarAndNavigationBarColors(ThemeMode themeMode) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness:
            themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
        systemNavigationBarIconBrightness:
            themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
        systemNavigationBarColor: themeMode == ThemeMode.light
            ? AppColor.lightBackgroundColor
            : AppColor.darkBackgroundColor,
        systemNavigationBarDividerColor: Colors.transparent,
      ),
    );
  }
}

extension ThemeExtras on ThemeData {
  Color get logoColor => AppColor.logoColor;
  Color get hotColor => AppColor.hotColor;
  Color get coldColor => AppColor.coldColor;
  Color get rainColor => AppColor.rainColor;
}