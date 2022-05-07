import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:next_blog/src/base/domain/entities/result.dart';
import 'package:next_blog/src/features/albums/data/mappers/photo_from_model.dart';
import 'package:next_blog/src/features/albums/data/sources/photo_data_source.dart';
import 'package:next_blog/src/features/albums/domain/entities/album.dart';
import 'package:next_blog/src/features/albums/domain/entities/photo.dart';
import 'package:next_blog/src/features/albums/domain/repositories/photo_repository.dart';

/// The implementation for the photo repository.
@LazySingleton(as: PhotoRepository)
class PhotoRepositoryImpl implements PhotoRepository {
  /// Creates photo repository implementation.
  PhotoRepositoryImpl({
    required Logger logger,
    required PhotoDataSource dataSource,
  })  : _logger = logger,
        _dataSource = dataSource;

  final Logger _logger;

  final PhotoDataSource _dataSource;

  @override
  Future<Result<List<Photo>>> getAlbumPhotos(AlbumId albumId) async {
    try {
      final photosModels = await _dataSource.getAlbumPhotos(
        albumId: albumId.value,
      );
      final photos = photosModels.map<Photo>(PhotoFromModel()).toList();
      return Result(photos);
    } catch (e, s) {
      _logger.e('Getting photos for album ${albumId.value} has failed!', e, s);
      return Result.failure(Failure(e, s));
    }
  }
}
