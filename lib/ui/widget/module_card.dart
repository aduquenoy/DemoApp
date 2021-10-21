import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:weatherplay/config/theme/app_textstyle.dart';
import 'package:sizer/sizer.dart';

class WeatherCard extends StatelessWidget {
  final Icon icon;
  final String text;
  final double value;
  const WeatherCard({required this.icon, required this.text, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15.0.h,
      child: Card(
        semanticContainer: true,
        elevation: 0,
        color: Theme.of(context).cardColor.withOpacity(0.1),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: EdgeInsets.all(4.0.h),
          child: Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlipInX(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(seconds: 1),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Flex(
                      direction: Axis.vertical,
                      children: [
                        Expanded(
                          child: FittedBox(child: icon, fit: BoxFit.fill),
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(text, style: GlobalTextStyles.subtitle),
                    const Spacer(),
                    //Container(height: 3.0.h, child: FittedBox(child: Text(value.toString(),  style: GlobalTextStyles.heading),),)
                    Expanded(
                      child: Container(
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(value.toString()),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}