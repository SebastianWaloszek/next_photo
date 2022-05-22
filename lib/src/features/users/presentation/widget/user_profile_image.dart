import 'dart:math';

import 'package:flutter/material.dart';
import 'package:next_photo/src/common/presentation/theme/app_colors.dart';

/// A round user image.
class UserProfileImage extends StatelessWidget {
  /// Creates a user profile image.
  const UserProfileImage({
    Key? key,
    this.radius,
  }) : super(key: key);

  /// The radius of the round image.
  ///
  /// If [radius] is null the images adjusts to the available space.
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: AppColors.secondaryContent(context),
      backgroundImage: NetworkImage(
        // TODO: Replace random image placeholder
        'https://picsum.photos/id/${Random().nextInt(100)}/200/300',
      ),
    );
  }
}
