import 'package:flutter/material.dart';
import 'package:next_blog/src/common/presentation/screen/main_screen.dart';

/// The application's top-level routing table.
final Map<String, WidgetBuilder> appNavigationRoutes = <String, WidgetBuilder>{
  '/': (BuildContext context) => const MainScreen()
};
