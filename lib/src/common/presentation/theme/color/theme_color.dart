import 'dart:ui';

import 'package:flutter/material.dart';

// ignore_for_file: public_member_api_docs

/// Colors for use in light theme.
class LightThemeColor {
  const LightThemeColor._();

  static Color get primaryContent => const Color(0xFF222529);
  static Color get secondaryContent => const Color(0xFFBEBDBD);
  static Color get primaryAccent => const Color(0xFF0D47A1);
  static Color get secondaryAccent => const Color(0xFF555555);
  static Color get buttonContent => const Color(0xFFFFFFFF);
  static Color get background => const Color(0xFFFFFFFF);
}

/// Colors for use in dark theme.
class DarkThemeColor {
  const DarkThemeColor._();

  static Color get primaryContent => const Color(0xFFE1E1E1);
  static Color get secondaryContent => const Color(0xFFA5A5A5);
  static Color get primaryAccent => const Color(0xFF0D47A1);
  static Color get secondaryAccent => const Color(0xFF555555);
  static Color get buttonContent => const Color(0xFFFFFFFF);
  static Color get background => const Color(0xFF181818);
}
