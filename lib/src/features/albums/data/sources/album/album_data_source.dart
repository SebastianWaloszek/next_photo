import 'package:next_blog/src/features/albums/data/models/album_model.dart';

/// The data source interface for handling album models.
abstract class AlbumDataSource {
  /// Returns list with all available albums models.
  Future<List<AlbumModel>> getAllAlbums();

  /// Returns a single album model.
  Future<AlbumModel> getAlbum({required int albumId});

  /// Returns list with all albums models from a given user.
  Future<List<AlbumModel>> getUserAlbums({required int userId});
}
