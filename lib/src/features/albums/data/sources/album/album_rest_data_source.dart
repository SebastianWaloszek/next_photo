import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:next_photo/src/features/albums/data/models/album_model.dart';
import 'package:next_photo/src/features/albums/data/sources/album/album_data_source.dart';
import 'package:retrofit/retrofit.dart';

part 'album_rest_data_source.g.dart';

/// REST implementation of the album data source.
@LazySingleton(as: AlbumDataSource)
@RestApi()
abstract class AlbumRestDataSource extends AlbumDataSource {
  /// Creates album REST data source.
  @factoryMethod
  factory AlbumRestDataSource(
    Dio dio, {
    @Named("baseUrl") String baseUrl,
  }) = _AlbumRestDataSource;

  @GET("/albums/{albumId}")
  @override
  Future<AlbumModel> getAlbum({
    @Path("albumId") required int albumId,
  });

  @GET("/albums")
  @override
  Future<List<AlbumModel>> getAllAlbums();

  @GET("/users/{userId}/albums")
  @override
  Future<List<AlbumModel>> getUserAlbums({
    @Path("userId") required int userId,
  });
}
