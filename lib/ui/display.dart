import 'package:flutter/material.dart';
import 'package:weatherplay/ui/widget/_barrel.dart';
import 'package:weatherplay/util/helper/helper_pageflip.dart';

class Display extends StatefulWidget {
  @override
  _DisplayState createState() => _DisplayState();
}

class _DisplayState extends State<Display> {

  final pageFlipKey = GlobalKey<PageFlipBuilderState>();
  final showcaseKey1 = GlobalKey();
  final showcaseKey2 = GlobalKey();
  final showcaseKey3 = GlobalKey();
  final showcaseKey4 = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: PageFlipBuilder(
        key: pageFlipKey,
        frontBuilder: (_) => FrontPage(
          onFlip: () => pageFlipKey.currentState?.flip(),
          showcaseKey1: showcaseKey1,
          showcaseKey2: showcaseKey2,
          showcaseKey3: showcaseKey3,
          showcaseKey4: showcaseKey4,
        ),
        backBuilder: (_) => BackPage(
          onFlip: () => pageFlipKey.currentState?.flip(),
        ),
        maxTilt: 0.003,
        maxScale: 0.2,
      ),
    );
  }
}