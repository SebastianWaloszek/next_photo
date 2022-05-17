import 'package:next_photo/src/features/albums/data/models/photo_model.dart';

/// The data source interface for handling photo models.
abstract class PhotoDataSource {
  /// Returns list with all photo models of a given album.
  Future<List<PhotoModel>> getAlbumPhotos({required int albumId});

  /// Returns list with all available photo models.
  Future<List<PhotoModel>> getAllPhotos();

  /// Returns a single photo model.
  Future<PhotoModel> getPhoto({required int photoId});
}
