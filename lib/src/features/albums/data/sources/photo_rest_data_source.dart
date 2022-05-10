import 'package:injectable/injectable.dart';
import 'package:next_blog/src/features/albums/data/models/photo_model.dart';
import 'package:next_blog/src/features/albums/data/sources/photo_data_source.dart';

/// REST implementation of the photo data source.
@LazySingleton(as: PhotoDataSource)
class PhotoRestDataSource implements PhotoDataSource {
  @override
  Future<List<PhotoModel>> getAlbumPhotos({required int albumId}) {
    // TODO: implement getAlbumPhotos
    throw UnimplementedError();
  }

  @override
  Future<List<PhotoModel>> getAllPhotos() {
    // TODO: implement getAllPhotos
    throw UnimplementedError();
  }
}
