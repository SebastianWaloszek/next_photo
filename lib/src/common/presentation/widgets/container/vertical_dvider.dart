import 'package:flutter/material.dart';
import 'package:next_blog/src/common/presentation/theme/app_colors.dart';

/// A thin horizontal line for dividing content.
class VerticalDivider extends StatelessWidget {
  /// Creates a vertical divider.
  const VerticalDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1,
      color: AppColors.secondaryContent(context).withOpacity(0.25),
    );
  }
}
