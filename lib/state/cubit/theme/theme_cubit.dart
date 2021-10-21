import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:weatherplay/config/theme/app_theme.dart';
import 'package:weatherplay/util/helper/helper_userpreferences.dart';
import 'package:weatherplay/util/helper/helper_theme.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit({required ThemeMode theme}) : super(ThemeState(themeMode: theme));

  void updateAppTheme() {
    final user = UserPreferences.getUser();
    final int theme = user.theme;
    final Brightness currentBrightness = AppTheme.currentSystemBrightness;

    //currentBrightness == Brightness.light ? setTheme(ThemeMode.light) : setTheme(ThemeMode.dark);
    if (currentBrightness == Brightness.light && theme == 3) {
      setTheme(ThemeMode.light);
    } else if (currentBrightness == Brightness.dark && theme == 3) {
      setTheme(ThemeMode.dark);
    } else {
      /* final ThemeMode themeMode;
      switch (theme) {
        case 1:
          themeMode = ThemeMode.light;
          break;
        case 2:
          themeMode = ThemeMode.dark;
          break;
        default:
          themeMode = AppTheme.currentSystemBrightness == Brightness.light ? ThemeMode.light : ThemeMode.dark;
      } */
      setTheme(switchTheme(theme));
    }
  }

  void setTheme(ThemeMode themeMode) {
    emit(ThemeState(themeMode: themeMode));
  }
}