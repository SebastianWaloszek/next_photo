import 'package:flutter/material.dart';
import 'package:next_photo/common.dart';

/// A refresh indicator with custom styling.
class AppRefreshIndicator extends StatelessWidget {
  /// Creates a refresh indicator.
  const AppRefreshIndicator({
    Key? key,
    required this.onRefresh,
    required this.child,
  }) : super(key: key);

  /// A callback that's called when the user has dragged the refresh indicator.
  final RefreshCallback onRefresh;

  /// The widget below this widget in the tree.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      color: AppColors.primaryContent(context),
      backgroundColor: AppColors.background(context),
      child: child,
    );
  }
}
