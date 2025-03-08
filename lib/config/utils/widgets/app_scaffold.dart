import 'package:flutter/material.dart';
import 'package:windows_widgets/config/extensions/theme_extensions.dart';
import 'package:windows_widgets/config/utils/constants.dart';

class AppScaffold extends StatelessWidget {
  final Widget body;
  final Widget? bottomNavigationBar;
  final PreferredSizeWidget? appBar;
  final Color? backgroundColor;

  const AppScaffold({
    super.key,
    required this.body,
    this.appBar,
    this.backgroundColor,
    this.bottomNavigationBar,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).extension<BorderExtension>()!.color,
            width: Theme.of(context)
                .extension<BorderExtension>()!
                .globalBorderWidth,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(kOuterRadius),
            bottomLeft: Radius.circular(kOuterRadius),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(kOuterRadius),
            bottomLeft: Radius.circular(kOuterRadius),
          ),
          child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(6),
              child: body,
            ),
          ),
        ),
      ),
    );
    // return Scaffold(
    //   appBar: appBar,
    //   body: MeshGradient(
    //     options: MeshGradientOptions(
    //       noiseIntensity: 0,
    //     ),
    //     points: points,
    //     child: body,
    //   ),
    //   backgroundColor: backgroundColor,
    //   bottomNavigationBar: bottomNavigationBar,
    // );
  }
}
