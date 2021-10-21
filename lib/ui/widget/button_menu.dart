import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:weatherplay/config/theme/app_textstyle.dart';
import 'package:weatherplay/ui/bottomsheet.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:sizer/sizer.dart';

class MenuSwitch extends StatelessWidget {
  final GlobalKey showcaseKey4;
  const MenuSwitch({required this.showcaseKey4});

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
                  key: showcaseKey4,
                  description: AppLocalizations.of(context)!.hSetup,
                  shapeBorder: const CircleBorder(),
                  showcaseBackgroundColor: Theme.of(context).accentColor,
                  descTextStyle: GlobalTextStyles.subtitle,
                  contentPadding: EdgeInsets.all(1.0.h),
                  overlayPadding: EdgeInsets.all(2.0.h),
                  child: const Icon(Icons.menu_rounded),
                ),
                onPressed: () => showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  builder: (_) => BottomSheetApp(),
                ),
              ),
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );

    // return IconButton(
    //   icon: Icon(
    //     Icons.menu_rounded,
    //     size: 10.0.w,
    //   ),
    //   onPressed: () => showModalBottomSheet(
    //     context: context,
    //     isScrollControlled: true,
    //     backgroundColor: Colors.transparent,
    //     builder: (_) => BottomSheetApp(),
    //   ),
    // );
  }
}

// class MenuSwitch extends HookWidget {
//   @override
//   Widget build(BuildContext context) {

//     final toggleState = useState(false);

//     return Padding(
//       padding: EdgeInsets.only(left: 5.0.w),
//       child: GestureDetector(
//         onTap: () {
//           toggleState.value = !toggleState.value;
//           //Scaffold.of(context).openDrawer();
//         },
//         child: AnimatedSwitcher(
//           duration: const Duration(milliseconds: 400),
//           transitionBuilder: (child, animation) => ScaleTransition(child: child, scale: animation),
//           child: toggleState.value ? Icon(Icons.clear_rounded, size: 5.0.h, key: const Key("M1")) : Icon(Icons.menu_rounded, size: 5.0.h, key: const Key("M2")),
//         ),
//       ),
//     );
//   }
// }
