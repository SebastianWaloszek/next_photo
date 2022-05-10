/// Interface for storing photo likes.
abstract class PhotoLikeDataStorage {
  /// Updates stored like value for a given photo id.
  Future<void> updatePhotoLike({
    required String photoId,
    required bool like,
  });

  /// Returns if a given photo has been liked by the user.
  Future<bool> getPhotoLike({
    required String photoId,
  });
}
