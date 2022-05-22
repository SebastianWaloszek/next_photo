import 'package:flutter/material.dart';
import 'package:next_photo/src/common/presentation/screens/main_screen.dart';

/// The application's top-level routing table.
final Map<String, WidgetBuilder> appNavigationRoutes = <String, WidgetBuilder>{
  '/': (BuildContext context) => const MainScreen()
};
