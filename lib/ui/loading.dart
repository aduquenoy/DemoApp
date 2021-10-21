import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rive/rive.dart' as rive;
import 'package:weatherplay/state/stateNotifier/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:weatherplay/ui/display.dart';
import 'package:sizer/sizer.dart';
import 'package:weatherplay/config/constant/asset_path.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  rive.SMIInput<double>? _loaderValueInput;
  rive.Artboard? _loaderArtboard;

  @override
  void initState() {
    super.initState();

    rootBundle.load(AppAsset.riveLoading).then((data) {
        // Load the RiveFile from the binary data
        final file = rive.RiveFile.import(data);
        // The artboard is the root of the animation and gets drawn in the Rive widget
        final artBoard = file.mainArtboard;
        var controller = rive.StateMachineController.fromArtboard(artBoard, "Loader");

        if(controller != null){
          artBoard.addController(controller);
          _loaderValueInput = controller.findInput("Level");
        }

        setState(() => _loaderArtboard = artBoard);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, _) {
        final state = watch(locationNotifierProvider.state);
        
        return state.maybeWhen(
          loaded: (_) => Display(),
          orElse: () {

            final String stage = state.maybeWhen(
              splashStart: () {_loaderValueInput?.value = 0; return AppLocalizations.of(context)!.wStart;},
              splashRun: () {_loaderValueInput?.value = 1; return AppLocalizations.of(context)!.wRun;},
              error: () {_loaderValueInput?.value = 2; return AppLocalizations.of(context)!.locateError;},
              orElse: () {_loaderValueInput?.value = 2; return AppLocalizations.of(context)!.locateError;},
            );

            return Scaffold(
              body: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Theme.of(context).primaryColor,
                      Theme.of(context).accentColor,
                    ],
                  ),
                  //backgroundBlendMode: BlendMode.srcOver,
                ),
                child: SafeArea(
                  child: Stack(
                    children: [
                      _loaderArtboard == null ?
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5.0.w),
                              child: Container(
                                height: 60.0.w,
                                width: 60.0.w,
                                child: const Image(image: AssetImage(AppAsset.picLoading)),
                              ),
                            ),
                          ],
                        ),
                      ) :
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5.0.w),
                              child: Container(
                                height: 60.0.w,
                                width: 60.0.w,
                                child: rive.Rive(artboard: _loaderArtboard!),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.all(10.0.w),
                          child: Text(stage),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}