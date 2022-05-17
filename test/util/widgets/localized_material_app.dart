import 'package:flutter/material.dart';
import 'package:next_photo/src/common/presentation/localization/localization.dart';

class LocalizedMaterialApp extends StatelessWidget {
  const LocalizedMaterialApp({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: supportedLocales,
      home: Material(
        child: child,
      ),
      localizationsDelegates: localizationDelegates,
    );
  }
}
