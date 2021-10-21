import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:weatherplay/state/stateNotifier/provider.dart';
import 'package:weatherplay/ui/widget/_barrel.dart';
import 'package:weatherplay/util/helper/helper_weathericon.dart';
import 'package:sizer/sizer.dart';

class FrontPage extends StatelessWidget {

  final VoidCallback? onFlip;
  final GlobalKey showcaseKey1;
  final GlobalKey showcaseKey2;
  final GlobalKey showcaseKey3;
  final GlobalKey showcaseKey4;

  FrontPage({
    this.onFlip,
    required this.showcaseKey1,
    required this.showcaseKey2,
    required this.showcaseKey3,
    required this.showcaseKey4,
  });

  @override
  Widget build(BuildContext context) {
    return ShowCaseWidget(
      builder: Builder(
        builder: (context) => Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            leading: MenuSwitch(showcaseKey4: showcaseKey4),
            actions: [
              HelpSwitch(
                showcaseKey1: showcaseKey1,
                showcaseKey2: showcaseKey2,
                showcaseKey3: showcaseKey3,
                showcaseKey4: showcaseKey4,
              ),
              LocSwitch(showcaseKey2: showcaseKey2),
              SearchSwitch(showcaseKey1: showcaseKey1),
            ],
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Theme.of(context).accentColor,
                  Theme.of(context).primaryColor,
                ],
              ),
            ),
            padding: EdgeInsets.all(5.0.w),
            child: Consumer(
              builder: (context, watch, _) {
                
                final state = watch(weatherNotifierProvider.state);

                return state.maybeWhen(
                  loading: () {
                    return Container();
                  },
                  loaded: (value) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Spacer(),
                        FadeIn(
                          animate: true,
                          duration: const Duration(seconds: 2),
                          delay: const Duration(milliseconds: 500),
                          child: getWeatherIcon(value.weather[0].id, context),
                        ),
                        const Spacer(),
                        Padding(padding: EdgeInsets.all(2.0.h), child: WeatherDisplayFront()),
                        BottomFlipIconButton(onFlip: onFlip, showcaseKey3: showcaseKey3),
                      ],
                    );
                  },
                  orElse: () {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Spacer(),
                        FadeIn(
                          animate: true,
                          duration: const Duration(seconds: 2),
                          delay: const Duration(milliseconds: 500),
                          child: getWeatherIcon(900, context),
                        ),
                        const Spacer(),
                        Padding(padding: EdgeInsets.all(2.0.h), child: WeatherDisplayFront()),
                        BottomFlipIconButton(onFlip: null, showcaseKey3: showcaseKey3),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}