import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:weatherplay/observer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weatherplay/state/cubit/googleplace/googleplace_cubit.dart';
import 'package:weatherplay/state/cubit/language/language_cubit.dart';
import 'package:weatherplay/state/cubit/theme/theme_cubit.dart';

import 'package:weatherplay/ui/loading.dart';
import 'package:weatherplay/config/theme/app_theme.dart';
import 'package:weatherplay/util/helper/helper_userpreferences.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:weatherplay/l10n/l10n.dart';

import 'package:sizer/sizer.dart';
import 'package:device_preview/device_preview.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = StateObserver();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await UserPreferences.init();

  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => ProviderScope(child: App()),
    ),
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = UserPreferences.getUser();
    final ThemeMode theme = user.theme == 1 ? ThemeMode.light : user.theme == 2 ? ThemeMode.dark : ThemeMode.system;
    final Locale language = Locale(user.lang);

    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(create: (context) => ThemeCubit(theme: theme)),
        BlocProvider<LanguageCubit>(create: (context) => LanguageCubit(locale: language)),
        BlocProvider<GoogleplaceCubit>(create: (context) => GoogleplaceCubit()),
      ],
      child: Weather(),
    );
  }
}

class Weather extends StatefulWidget {
  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance!.addObserver(this);
    super.initState();
  }

  @override
  void didChangePlatformBrightness() {
    ReadContext(context).read<ThemeCubit>().updateAppTheme();
    super.didChangePlatformBrightness();
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            return Sizer(
              builder: (context, constraints, orientation) {
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  supportedLocales: L10n.all,
                  localizationsDelegates: [
                    AppLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                  ],
                  locale: context.select((LanguageCubit languageCubit) => languageCubit.state.locale),
                  //locale: DevicePreview.locale(context),
                  builder: DevicePreview.appBuilder,
                  theme: AppTheme.lightTheme,
                  darkTheme: AppTheme.darkTheme,
                  themeMode: context.select((ThemeCubit themeCubit) => themeCubit.state.themeMode),
                  home: LoadingScreen(),
                );
              },
            );
          },
        );
      },
    );
  }
}