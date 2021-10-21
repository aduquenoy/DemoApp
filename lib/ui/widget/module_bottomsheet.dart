import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weatherplay/state/cubit/language/language_cubit.dart';
import 'package:weatherplay/state/cubit/theme/theme_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weatherplay/state/stateNotifier/provider.dart';
import 'package:weatherplay/config/theme/app_textstyle.dart';
import 'package:weatherplay/data/model/user.dart';
import 'package:weatherplay/util/helper/helper_userpreferences.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:sizer/sizer.dart';
import 'package:weatherplay/util/helper/helper_theme.dart';

class SettingPage extends StatefulWidget {
  final ScrollController controller;
  const SettingPage({Key? key, required this.controller}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  late User user;

  @override
  void initState() {
    super.initState();
    user = UserPreferences.getUser();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: widget.controller,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppLocalizations.of(context)!.sTitle,
              style: GlobalTextStyles.places,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.highlight_off_rounded,
                size: 5.0.h,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
        SizedBox(height: 3.0.h),
        buildScreenlight(),
        buildLanguage(),
        buildRange(),
        buildUnit(),
      ],
    );
  }

  Widget buildRange() {
    return buildTitle(
      title: AppLocalizations.of(context)!.sPeriod,
      child: CupertinoSlidingSegmentedControl(
        backgroundColor: Theme.of(context).buttonColor,
        children: {
          1: const Text('1'),
          2: const Text('2'),
          3: const Text('3'),
          4: const Text('4'),
          5: const Text('5'),
          6: const Text('6'),
          7: const Text('7'),
        },
        groupValue: user.range,
        onValueChanged: (newValue) {
          setState(() {
            user = user.copy(range: newValue as int);
            UserPreferences.setUser(user);
          });
        },
      ),
    );
  }

  Widget buildScreenlight() {
    return buildTitle(
      title: AppLocalizations.of(context)!.sThemeTitle,
      child: CupertinoSlidingSegmentedControl(
        backgroundColor: Theme.of(context).buttonColor,
        children: {
          1: Text(AppLocalizations.of(context)!.sLight),
          2: Text(AppLocalizations.of(context)!.sDark),
          3: Text(AppLocalizations.of(context)!.sSystem),
        },
        groupValue: user.theme,
        onValueChanged: (newValue) {
          setState(
            () {
              user = user.copy(theme: newValue as int);
              UserPreferences.setUser(user);

              /* late final ThemeMode themeMode;
              switch (newValue) {
                case 1:
                  themeMode = ThemeMode.light;
                  break;
                case 2:
                  themeMode = ThemeMode.dark;
                  break;
                default:
                  themeMode =
                      AppTheme.currentSystemBrightness == Brightness.light
                          ? ThemeMode.light
                          : ThemeMode.dark;
              } */

              ReadContext(context).read<ThemeCubit>().setTheme(switchTheme(newValue));
            },
          );
        },
      ),
    );
  }

  Widget buildUnit() {
    return buildTitle(
      title: AppLocalizations.of(context)!.wTemp,
      child: CupertinoSlidingSegmentedControl(
        backgroundColor: Theme.of(context).buttonColor,
        children: {
          1: Text(AppLocalizations.of(context)!.sUnit1),
          2: Text(AppLocalizations.of(context)!.sUnit2),
        },
        groupValue: user.unit,
        onValueChanged: (newValue) {
          setState(() {
            user = user.copy(unit: newValue as int);
            UserPreferences.setUser(user);
            BuildContextX(context)
                .read(weatherNotifierProvider)
                .getWeather(city: null, loc: user.lang);
          });
        },
      ),
    );
  }

  Widget buildLanguage() {
    return buildTitle(
      title: AppLocalizations.of(context)!.sLangTitle,
      child: CupertinoSlidingSegmentedControl(
        backgroundColor: Theme.of(context).buttonColor,
        children: {
          "en": Text(AppLocalizations.of(context)!.sLangE),
          "fr": Text(AppLocalizations.of(context)!.sLangF),
          "sy": Text(AppLocalizations.of(context)!.sSystem),
        },
        groupValue: user.lang,
        onValueChanged: (newValue) {
          setState(() {
            user = user.copy(lang: newValue as String);
            UserPreferences.setUser(user);
            ReadContext(context)
                .read<LanguageCubit>()
                .setLang(Locale(newValue));
          });
        },
      ),
    );
  }

  Widget buildTitle({
    required String title,
    required Widget child,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Tooltip(
            message: title,
            verticalOffset: 5.0.w,
            preferBelow: false,
            child: Icon(
              Icons.info_outline,
              size: 5.0.w,
            )),
        SizedBox(height: 3.0.h),
        Tooltip(
            message: title,
            child: SizedBox(width: double.infinity, child: child)),
        SizedBox(height: 3.0.h),
      ],
    );
  }
}
