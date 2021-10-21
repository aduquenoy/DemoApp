import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weatherplay/ui/widget/_barrel.dart';
import 'package:sizer/sizer.dart';
import 'package:weatherplay/util/helper/helper_colorbg.dart';

class BackPage extends ConsumerWidget {

  final VoidCallback? onFlip;
  const BackPage({this.onFlip});

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: tempColor(context, watch),
          ),
        ),
        padding: EdgeInsets.all(5.0.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            WeatherDisplayBack(),
            SizedBox(height: 3.0.h),
            BottomFlipIconButton(onFlip: onFlip, showcaseKey3: null,),
          ],
        ),
      ),
    );
  }
}