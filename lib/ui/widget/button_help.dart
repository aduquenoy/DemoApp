import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';

class HelpSwitch extends StatelessWidget {
  
  final GlobalKey showcaseKey1;
  final GlobalKey showcaseKey2;
  final GlobalKey showcaseKey3;
  final GlobalKey showcaseKey4;
  const HelpSwitch({required this.showcaseKey1, required this.showcaseKey2, required this.showcaseKey3, required this.showcaseKey4,});

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
                icon: Icon(Icons.help_rounded, color: Theme.of(context).primaryColor),
                onPressed: () => ShowCaseWidget.of(context)!.startShowCase([showcaseKey1, showcaseKey2, showcaseKey4, showcaseKey3]),
              ),
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}