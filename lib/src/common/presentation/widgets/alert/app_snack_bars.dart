import 'package:flutter/material.dart';
import 'package:next_photo/common.dart';
import 'package:next_photo/src/common/presentation/localization/generated/l10n.dart';

/// Custom snack bars that can be shown.
abstract class AppSnackBars {
  const AppSnackBars._();

  /// Shows snack bar informing that a feature in not implemented yet.
  static void showUnimplementedMessage(BuildContext context) {
    final snackBar = SnackBar(
      backgroundColor: AppColors.secondaryAccent(context),
      content: Text(
        S.of(context).featureNotImplemented,
        style: AppTextStyles.body2(
          context,
          color: AppColors.background(context),
        ),
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
