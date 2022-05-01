import 'package:flutter/material.dart';
import 'package:next_blog/src/common/presentation/theme/app_colors.dart';

// ignore_for_file: public_member_api_docs

/// Text style used throughout the app.
class AppTextStyles {
  const AppTextStyles._();

  static TextStyle get _base => const TextStyle(fontFamily: 'Roboto');

  static TextStyle headline1(BuildContext context, {Color? color}) {
    return _base.copyWith(
      color: color ?? AppColors.primaryContent(context),
      fontSize: 35,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle headline2(BuildContext context, {Color? color}) {
    return _base.copyWith(
      color: color ?? AppColors.primaryContent(context),
      fontSize: 30,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle headline3(BuildContext context, {Color? color}) {
    return _base.copyWith(
      color: color ?? AppColors.primaryContent(context),
      fontSize: 25,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle headline4(BuildContext context, {Color? color}) {
    return _base.copyWith(
      color: color ?? AppColors.primaryContent(context),
      fontSize: 20,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle headline5(BuildContext context, {Color? color}) {
    return _base.copyWith(
      color: color ?? AppColors.primaryContent(context),
      fontSize: 20,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle body1(BuildContext context, {Color? color}) {
    return _base.copyWith(
      color: color ?? AppColors.primaryContent(context),
      fontSize: 16,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle body2(BuildContext context, {Color? color}) {
    return _base.copyWith(
      color: color ?? AppColors.primaryContent(context),
      fontSize: 15,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle body3(BuildContext context, {Color? color}) {
    return _base.copyWith(
      color: color ?? AppColors.primaryContent(context),
      fontSize: 15,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle body4(BuildContext context, {Color? color}) {
    return _base.copyWith(
      color: color ?? AppColors.primaryContent(context),
      fontSize: 13,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle subtitle1(BuildContext context, {Color? color}) {
    return _base.copyWith(
      color: color ?? AppColors.primaryContent(context),
      fontSize: 12,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle subtitle2(BuildContext context, {Color? color}) {
    return _base.copyWith(
      color: color ?? AppColors.primaryContent(context),
      fontSize: 12,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle subtitle3(BuildContext context, {Color? color}) {
    return _base.copyWith(
      color: color ?? AppColors.primaryContent(context),
      fontSize: 10,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle subtitle4(BuildContext context, {Color? color}) {
    return _base.copyWith(
      color: color ?? AppColors.primaryContent(context),
      fontSize: 8,
      height: 1.1,
      fontWeight: FontWeight.normal,
    );
  }
}
