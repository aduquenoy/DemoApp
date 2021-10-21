import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:weatherplay/state/stateNotifier/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:sizer/sizer.dart';
import 'package:weatherplay/config/theme/app_textstyle.dart';

class LocSwitch extends StatelessWidget {

  final GlobalKey showcaseKey2;
  const LocSwitch({required this.showcaseKey2});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Flex(
        direction: Axis.vertical,
        children: [
          Expanded(
            child: FittedBox(
              child: IconButton(
                icon: Showcase(
                  key: showcaseKey2,
                  description: AppLocalizations.of(context)!.hLoc,
                  shapeBorder: const CircleBorder(),
                  showcaseBackgroundColor: Theme.of(context).accentColor,
                  descTextStyle: GlobalTextStyles.subtitle,
                  contentPadding: EdgeInsets.all(1.0.h),
                  overlayPadding: EdgeInsets.all(2.0.h),
                  child: Icon(Icons.gps_fixed_rounded, color: Theme.of(context).primaryColor),
                ),
                onPressed: () async {
                  await context.read(locationNotifierProvider).getLocation(splash: false);
                  await context.read(weatherNotifierProvider).getWeather(city: null, loc: Localizations.localeOf(context).languageCode);
                },
              ),
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}