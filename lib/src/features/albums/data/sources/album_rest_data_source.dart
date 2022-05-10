import 'package:injectable/injectable.dart';
import 'package:next_blog/src/features/albums/data/models/album_model.dart';
import 'package:next_blog/src/features/albums/data/sources/album_data_source.dart';

/// REST implementation of the album data source.
@LazySingleton(as: AlbumDataSource)
class AlbumRestDataSource implements AlbumDataSource {
  @override
  Future<List<AlbumModel>> getAllAlbums() {
    // TODO: implement getAllAlbums
    throw UnimplementedError();
  }

  @override
  Future<List<AlbumModel>> getUserAlbums({required int userId}) {
    // TODO: implement getUserAlbums
    throw UnimplementedError();
  }
}
