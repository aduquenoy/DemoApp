import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:weatherplay/state/stateNotifier/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:weatherplay/config/theme/app_textstyle.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'module_card.dart';
import 'package:weatherplay/config/theme/app_theme.dart';
import 'package:sizer/sizer.dart';

class WeatherDisplayBack extends StatefulWidget {
  @override
  _WeatherDisplayBackState createState() => _WeatherDisplayBackState();
}

class _WeatherDisplayBackState extends State<WeatherDisplayBack> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) {
        final state = watch(weatherNotifierProvider.state);

        return state.when(
          loading: () => const CircularProgressIndicator(),
          loaded: (value) => FadeIn(
            delay: const Duration(milliseconds: 200),
            duration: const Duration(seconds: 2),
            child: ResponsiveGridRow(
              children: [
                ResponsiveGridCol(
                  lg: 12,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 2.0.h),
                      child: Container(
                        height: 4.0.h,
                        child: FittedBox(
                          child: Text(
                              "${value.name} | ${value.weather[0].description}",
                              style: GlobalTextStyles.subtitle,
                              overflow: TextOverflow.ellipsis),
                        ),
                      ),
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  xs: 12,
                  md: kIsWeb ? 6 : 12,
                  child: WeatherCard(
                    icon: const Icon(Icons.thermostat_rounded),
                    text: AppLocalizations.of(context)!.wTemp,
                    value: value.main.temp,
                  ),
                ),
                ResponsiveGridCol(
                  xs: 12,
                  md: kIsWeb ? 6 : 12,
                  child: WeatherCard(
                    icon: const Icon(Icons.wb_sunny_rounded),
                    text: AppLocalizations.of(context)!.wMaxTemp,
                    value: value.main.temp_max,
                  ),
                ),
                ResponsiveGridCol(
                  xs: 12,
                  md: kIsWeb ? 6 : 12,
                  child: WeatherCard(
                    icon: const Icon(Icons.wb_shade_rounded),
                    text: AppLocalizations.of(context)!.wMinTemp,
                    value: value.main.temp_min,
                  ),
                ),
                ResponsiveGridCol(
                  xs: 12,
                  md: kIsWeb ? 6 : 12,
                  child: WeatherCard(
                    icon: const Icon(Icons.water_rounded),
                    text: AppLocalizations.of(context)!.wHumidity,
                    value: value.main.humidity.toDouble(),
                  ),
                ),
              ],
            ),
          ),
          error: (_) => Text(AppLocalizations.of(context)!.weatherError, style: GlobalTextStyles.error.copyWith(color: Theme.of(context).logoColor)),
        );
      },
    );
  }
}