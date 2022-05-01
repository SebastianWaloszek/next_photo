import 'package:flutter/material.dart';

/// A color with variants for each theme.
class ThemedColor {
  /// Create a themed color for each of the variants.
  ///
  /// Defines [light] as color to be used in [Theme] with [Brightness.light].
  /// Defines [dark] as color to be used in [Theme] with [Brightness.dark].
  const ThemedColor({
    required Color light,
    required Color dark,
  })  : _light = light,
        _dark = dark;

  final Color _light;
  final Color _dark;

  /// Returns the appropriate [Color] for the current [Brightness] in theme
  /// for [context].
  Color getColor(BuildContext context) {
    switch (Theme.of(context).brightness) {
      case Brightness.light:
        return _light;
      case Brightness.dark:
        return _dark;
    }
  }
}
