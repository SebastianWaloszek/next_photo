import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A structure for a single screen.
class AppScreen extends StatelessWidget {
  /// Creates an app screen.
  const AppScreen({
    Key? key,
    required this.body,
    this.backgroundColor,
    this.systemOverlayStyle,
    this.appBar,
    this.bottomNavigationBar,
  }) : super(key: key);

  /// The body of the screen.
  final Widget body;

  /// The color of the Scaffold's background.
  final Color? backgroundColor;

  /// The preference for the style of the system overlays.
  final SystemUiOverlayStyle? systemOverlayStyle;

  /// An app bar to display at the top of the screen.
  final PreferredSizeWidget? appBar;

  /// A bottom navigation bar to display at the bottom of the screen.
  final Widget? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: systemOverlayStyle ??
          (Theme.of(context).brightness == Brightness.light
              ? SystemUiOverlayStyle.dark
              : SystemUiOverlayStyle.light),
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: appBar,
        bottomNavigationBar: bottomNavigationBar,
        body: SafeArea(
          child: body,
        ),
      ),
    );
  }
}
