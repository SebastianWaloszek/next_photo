import 'package:flutter/material.dart';
import 'package:next_blog/src/app/app_navigation_routes.dart';
import 'package:next_blog/src/common/presentation/localization/localization.dart';
import 'package:next_blog/src/common/presentation/theme/app_themes.dart';

/// Main widget representing the whole app.
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NextBlog',
      theme: appThemes[ThemeMode.light],
      darkTheme: appThemes[ThemeMode.dark],
      themeMode: ThemeMode.light,
      routes: appNavigationRoutes,
      localizationsDelegates: localizationDelegates,
      supportedLocales: supportedLocales,
    );
  }
}
