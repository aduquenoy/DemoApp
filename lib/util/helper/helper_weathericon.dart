import 'package:flutter/material.dart';
import 'package:weatherplay/config/theme/app_theme.dart';
import 'package:sizer/sizer.dart';

Icon getWeatherIcon(int condition, BuildContext context) {
    if (condition < 300) {
      return Icon(Icons.flash_on_rounded, size: 25.0.h, color: Theme.of(context).hotColor);
    }  else if (condition < 600) {
      return Icon(Icons.shower_rounded, size: 25.0.h, color: Theme.of(context).rainColor);
    } else if (condition < 700) {
      return Icon(Icons.ac_unit_rounded, size: 25.0.h, color: Theme.of(context).rainColor);
    } else if (condition < 800) {
      return Icon(Icons.wb_cloudy_rounded, size: 25.0.h, color: Theme.of(context).accentColor);
    } else if (condition == 800) {
      return Icon(Icons.wb_sunny_rounded, size: 25.0.h, color: Theme.of(context).hotColor);
    } else if (condition <= 804) {
      return Icon(Icons.wb_cloudy_rounded, size: 25.0.h, color: Theme.of(context).accentColor);
    }  else if (condition <= 850) {
      return Icon(Icons.update_rounded, size: 25.0.h, color: Theme.of(context).accentColor);
    } else {
      return Icon(Icons.error_outline_rounded, size: 25.0.h, color: Theme.of(context).logoColor);
    }
  }