import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:next_photo/src/features/albums/data/models/photo_model.dart';
import 'package:next_photo/src/features/albums/data/sources/photo/photo_data_source.dart';
import 'package:retrofit/retrofit.dart';

part 'photo_rest_data_source.g.dart';

/// REST implementation of the photo data source.
@LazySingleton(as: PhotoDataSource)
@RestApi()
abstract class PhotoRestDataSource implements PhotoDataSource {
  /// Creates photo REST data source.
  @factoryMethod
  factory PhotoRestDataSource(
    Dio dio, {
    @Named("baseUrl") String baseUrl,
  }) = _PhotoRestDataSource;

  @GET("/albums/{albumId}/photos")
  @override
  Future<List<PhotoModel>> getAlbumPhotos({
    @Path("albumId") required int albumId,
  });

  @GET("/photos")
  @override
  Future<List<PhotoModel>> getAllPhotos();

  @GET("/photos/{photoId}")
  @override
  Future<PhotoModel> getPhoto({
    @Path("photoId") required int photoId,
  });
}
