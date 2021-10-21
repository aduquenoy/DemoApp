import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weatherplay/state/stateNotifier/provider.dart';
import 'package:weatherplay/config/theme/app_theme.dart';
import 'package:weatherplay/util/helper/helper_userpreferences.dart';

List<Color> tempColor(BuildContext context, ScopedReader watch) {

  final user = UserPreferences.getUser();

  return watch(weatherNotifierProvider.state).maybeMap(
    loaded: (value) {

      final double temp = user.unit == 1 ? value.forecast.main.temp : (5/9 * (value.forecast.main.temp-32));

      if (temp > 25) {
        return [
          Theme.of(context).primaryColor,
          Theme.of(context).hotColor,
        ];
      } else if (temp > 10) {
        return [
          Theme.of(context).primaryColor,
          Theme.of(context).coldColor,
        ];
      } else {
        return [
          Theme.of(context).primaryColor,
          Theme.of(context).rainColor,
        ];
      }
    },
    orElse: () {
      return [
        Theme.of(context).primaryColor,
        Theme.of(context).rainColor,
      ];
    },
  );
}