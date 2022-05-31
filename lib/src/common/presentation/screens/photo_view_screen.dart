import 'package:flutter/material.dart';
import 'package:next_photo/src/common/presentation/theme/color/theme_color.dart';
import 'package:next_photo/src/common/presentation/widgets/app_screen.dart';
import 'package:photo_view/photo_view.dart';

/// A screen for viewing a photo in full resolution and with zoom.
class PhotoViewScreen extends StatelessWidget {
  const PhotoViewScreen._({
    Key? key,
    required this.photoUrl,
  }) : super(key: key);

  /// Url of photo to show.
  final String photoUrl;

  /// Opens screens for given [photoUrl].
  static Future<void> open(
    BuildContext context, {
    required String photoUrl,
  }) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PhotoViewScreen._(
          photoUrl: photoUrl,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppScreen(
      backgroundColor: DarkThemeColor.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: DarkThemeColor.primaryContent,
      ),
      body: SafeArea(
        child: PhotoView(
          minScale: PhotoViewComputedScale.contained,
          maxScale: PhotoViewComputedScale.contained * 2,
          imageProvider: NetworkImage(photoUrl),
        ),
      ),
    );
  }
}
