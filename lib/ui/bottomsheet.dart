import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:weatherplay/ui/widget/_barrel.dart';

class BottomSheetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget makeDismissible({required Widget child}) => GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => Navigator.of(context).pop(),
          child: GestureDetector(onTap: (){}, child: child,)
        );

    return makeDismissible(
      child: DraggableScrollableSheet(
        initialChildSize: 0.85,
        maxChildSize: 1,
        minChildSize: 0.8,
        builder: (_, controller) => Container(
          decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(10.0.w),
            ),
          ),
          padding: EdgeInsets.all(10.0.w),
          child: SettingPage(controller: controller),
        ),
      ),
    );
  }
}