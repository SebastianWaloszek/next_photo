import 'package:flutter/material.dart';
import 'package:next_blog/src/common/presentation/theme/color/theme_color.dart';

/// Defines theme data for a specific theme mode.
///
/// Primarily for use in [App] widget.
Map<ThemeMode, ThemeData> get appThemes {
  final theme = ThemeData();
  return {
    ThemeMode.light: theme.copyWith(
      colorScheme: theme.colorScheme.copyWith(
        secondary: LightThemeColor.primaryAccent,
      ),
      primaryColor: LightThemeColor.primaryAccent,
      scaffoldBackgroundColor: LightThemeColor.background,
      canvasColor: Colors.transparent,
      brightness: Brightness.light,
    ),
    ThemeMode.dark: theme.copyWith(
      colorScheme: theme.colorScheme.copyWith(
        secondary: DarkThemeColor.primaryAccent,
      ),
      canvasColor: Colors.transparent,
      scaffoldBackgroundColor: DarkThemeColor.background,
      brightness: Brightness.dark,
    ),
  };
}
