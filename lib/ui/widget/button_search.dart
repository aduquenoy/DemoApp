import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:weatherplay/state/stateNotifier/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weatherplay/config/theme/app_textstyle.dart';
import 'package:weatherplay/ui/search.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:sizer/sizer.dart';

class SearchSwitch extends StatelessWidget {
  
  final GlobalKey showcaseKey1;
  const SearchSwitch({required this.showcaseKey1});

  @override
  Widget build(BuildContext context) {

    final loc = Localizations.localeOf(context).languageCode;

    return AspectRatio(
      aspectRatio: 1,
      child: Flex(
        direction: Axis.vertical,
        children: [
          Expanded(
            child: FittedBox(
              child: IconButton(
                icon: Showcase(
                  key: showcaseKey1,
                  description: AppLocalizations.of(context)!.hSearch,
                  shapeBorder: const CircleBorder(),
                  showcaseBackgroundColor: Theme.of(context).accentColor,
                  descTextStyle: GlobalTextStyles.subtitle,
                  contentPadding: EdgeInsets.all(1.0.h),
                  overlayPadding: EdgeInsets.all(2.0.h),
                  child: const Icon(Icons.search),
                ),
                onPressed: () async {
                  final result = await showSearch(context: context, delegate: PlaceSearch(hintText: AppLocalizations.of(context)!.dTitle));
                  context.read(weatherNotifierProvider).getWeather(city: result!.isEmpty ? null : result, loc: loc);
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

// Hooks permet de rester sur du statelesswidget .. on utilise valuenotifier pour rebuilder le widget
// class SearchSwitch extends HookWidget {
//   @override
//   Widget build(BuildContext context) {
//     final toggleState = useState(false);
//     final loc = Localizations.localeOf(context).languageCode;

//     return Padding(
//       padding: EdgeInsets.only(right: 5.0.w),
//       child: GestureDetector(
//         onTap: () async {
//           toggleState.value = !toggleState.value;
//           final result = await showSearch(context: context, delegate: PlaceSearch());
//           context.read(weatherNotifierProvider).getWeather(city: result!.isEmpty ? null : result, loc: loc);
//         },
//         child: AnimatedSwitcher(
//           duration: const Duration(milliseconds: 400),
//           transitionBuilder: (child, animation) =>
//               ScaleTransition(child: child, scale: animation),
//           child: toggleState.value ? Icon(Icons.search_off, size: 5.0.h, key: const Key("S1")): Icon(Icons.search, size: 5.0.h, key: const Key("S2")),
//         ),
//       ),
//     );
//   }
// }
