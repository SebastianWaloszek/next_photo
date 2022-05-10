import 'package:next_blog/src/features/albums/data/models/photo_model.dart';

/// The data source interface for handling photo models.
abstract class PhotoDataSource {
  /// Returns list with all photo models of a given album.
  Future<List<PhotoModel>> getAlbumPhotos({required int albumId});

  /// Returns list with all available photos models.
  Future<List<PhotoModel>> getAllPhotos();
}
