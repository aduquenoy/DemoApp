import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:weatherplay/state/stateNotifier/provider.dart';
import 'package:weatherplay/config/theme/app_textstyle.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:weatherplay/config/theme/app_theme.dart';
import 'package:sizer/sizer.dart';

class WeatherDisplayFront extends StatefulWidget {
  @override
  _WeatherDisplayFrontState createState() => _WeatherDisplayFrontState();
}

class _WeatherDisplayFrontState extends State<WeatherDisplayFront> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, _) {

        final state = watch(weatherNotifierProvider.state);

        return state.when(
          loading: () => CircularProgressIndicator(color: Theme.of(context).accentColor),
          loaded: (value) => BounceInDown(
            animate: true,
            delay: const Duration(milliseconds: 500),
            child: ResponsiveGridRow(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ResponsiveGridCol(
                  xs: 12,
                  md: 6,
                  child: Container(height: 5.0.h, child: FittedBox(child: Text("${value.name} | ${value.weather[0].description}", style: GlobalTextStyles.subtitle, overflow: TextOverflow.ellipsis),),),
                ),
                ResponsiveGridCol(
                  xs: 12,
                  md: 1,
                  child: Container(height: 2.0.h,),
                ),
                ResponsiveGridCol(
                  xs: 12,
                  md: 5,
                  child: Container(height: 8.0.h, child: FittedBox(child: Text("${value.main.temp.toString()}°",  style: GlobalTextStyles.heading),),),
                ),
              ]),
            
          ),
          error: (_) => Text(AppLocalizations.of(context)!.weatherError, style: GlobalTextStyles.error.copyWith(color: Theme.of(context).logoColor)),
        );
      },
    );
  }
}