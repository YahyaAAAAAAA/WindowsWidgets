import 'package:flutter/material.dart';
import 'package:windows_widgets/config/extensions/sidebar_extensions.dart';
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
      padding: EdgeInsets.only(
          left: Theme.of(context)
              .extension<SidebarExtensions>()!
              .scaffoldPadding),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).extension<SidebarExtensions>()!.color,
            width: Theme.of(context)
                .extension<SidebarExtensions>()!
                .globalBorderWidth,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(kOuterRadius),
            bottomLeft: Radius.circular(kOuterRadius),
          ),
        ),
        child: Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: Padding(
            padding: const EdgeInsets.all(6),
            child: body,
          ),
        ),
      ),
    );
  }
}
