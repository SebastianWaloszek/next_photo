import 'package:injectable/injectable.dart';
import 'package:next_blog/src/features/albums/data/storages/photo_like_data_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Shared preferences implementation of the photo like data storage.
@LazySingleton(as: PhotoLikeDataStorage)
class PhotoLikeDataStorageImpl implements PhotoLikeDataStorage {
  /// Creates photo like data storage implementation.
  PhotoLikeDataStorageImpl({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences;

  final SharedPreferences _sharedPreferences;

  static const _likedPhotoIdsKey = 'likedPhotosIds';

  @override
  Future<bool> getPhotoLike({required String photoId}) async {
    return _getLikedPhotoIds().contains(photoId);
  }

  @override
  Future<void> updatePhotoLike({
    required String photoId,
    required bool like,
  }) async {
    final likedPhotoIds = _getLikedPhotoIds();

    if (like) {
      if (!likedPhotoIds.contains(photoId)) {
        likedPhotoIds.add(photoId);
      }
    } else {
      likedPhotoIds.remove(photoId);
    }

    final result = await _sharedPreferences.setStringList(
      _likedPhotoIdsKey,
      likedPhotoIds,
    );

    if (!result) {
      throw Exception('Setting likes for photo ids was unsuccessful');
    }
  }

  List<String> _getLikedPhotoIds() {
    return _sharedPreferences.getStringList(_likedPhotoIdsKey) ?? [];
  }
}
