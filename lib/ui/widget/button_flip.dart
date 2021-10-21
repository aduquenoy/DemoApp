import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:weatherplay/config/theme/app_textstyle.dart';

class BottomFlipIconButton extends StatelessWidget {
  final VoidCallback? onFlip;
  final GlobalKey? showcaseKey3;
  const BottomFlipIconButton({this.onFlip, this.showcaseKey3});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 5.0.w),
          child: SizedBox(
            width: 10.0.w,
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: showcaseKey3 != null
                  ? Showcase(
                      key: showcaseKey3,
                      description: AppLocalizations.of(context)!.hFlip,
                      shapeBorder: const CircleBorder(),
                      showcaseBackgroundColor: Theme.of(context).accentColor,
                      descTextStyle: GlobalTextStyles.subtitle,
                      contentPadding: EdgeInsets.all(1.0.h),
                      overlayPadding: EdgeInsets.all(2.0.h),
                      child: Icon(Icons.flip, size: 10.0.w),
                    )
                  : Icon(Icons.flip, size: 10.0.w),
              onPressed: onFlip,
            ),
          ),
        ),
      ],
    );
  }
}