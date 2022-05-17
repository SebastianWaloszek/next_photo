import 'package:flutter/material.dart';
import 'package:next_blog/src/common/presentation/theme/app_colors.dart';

/// The logo of the application.
class AppLogo extends StatelessWidget {
  /// Creates app logo.
  const AppLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'NextPhoto',
      style: TextStyle(
        fontSize: 36,
        fontFamily: 'Billabong',
        color: AppColors.primaryContent(context),
      ),
    );
  }
}
