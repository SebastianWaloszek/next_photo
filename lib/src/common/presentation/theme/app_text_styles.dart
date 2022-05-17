import 'package:flutter/material.dart';
import 'package:next_photo/src/common/presentation/theme/app_colors.dart';

// ignore_for_file: public_member_api_docs

/// Text style used throughout the app.
class AppTextStyles {
  const AppTextStyles._();

  static TextStyle get _base => const TextStyle(fontFamily: 'Roboto');

  static TextStyle headline1(BuildContext context, {Color? color}) {
    return _base.copyWith(
      color: color ?? AppColors.primaryContent(context),
      fontSize: 14,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle headline2(BuildContext context, {Color? color}) {
    return _base.copyWith(
      color: color ?? AppColors.primaryContent(context),
      fontSize: 14,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle body1(BuildContext context, {Color? color}) {
    return _base.copyWith(
      color: color ?? AppColors.primaryContent(context),
      fontSize: 12,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle body2(BuildContext context, {Color? color}) {
    return _base.copyWith(
      color: color ?? AppColors.primaryContent(context),
      fontSize: 12,
      fontWeight: FontWeight.normal,
    );
  }
}
