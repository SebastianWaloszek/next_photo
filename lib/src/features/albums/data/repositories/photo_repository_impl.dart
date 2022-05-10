import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:next_blog/src/base/domain/entities/result.dart';
import 'package:next_blog/src/features/albums/data/mappers/photo_from_model.dart';
import 'package:next_blog/src/features/albums/data/models/photo_model.dart';
import 'package:next_blog/src/features/albums/data/sources/photo_data_source.dart';
import 'package:next_blog/src/features/albums/data/storages/photo_like_data_storage.dart';
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
    required PhotoLikeDataStorage likeDataStorage,
  })  : _logger = logger,
        _dataSource = dataSource,
        _likeDataStorage = likeDataStorage;

  final Logger _logger;

  final PhotoDataSource _dataSource;
  final PhotoLikeDataStorage _likeDataStorage;

  @override
  Future<Result<List<Photo>>> getAlbumPhotos(AlbumId albumId) async {
    try {
      final photosModels = await _dataSource.getAlbumPhotos(
        albumId: albumId.value,
      );
      final photos = await _mapPhotosFromModels(photosModels);

      return Result(photos);
    } catch (e, s) {
      _logger.e('Getting photos for album ${albumId.value} has failed!', e, s);

      return Result.failure(Failure(e, s));
    }
  }

  @override
  Future<Result<void>> updatePhotoLike(
    PhotoId id, {
    required bool like,
  }) async {
    try {
      final success = await _likeDataStorage.updatePhotoLike(
        photoId: '${id.value}',
        like: like,
      );

      return Result(success);
    } catch (e, s) {
      _logger.e(
        'Updating photo like for photo ${id.value} with $like has failed!',
        e,
        s,
      );

      return Result.failure(Failure(e, s));
    }
  }

  Future<List<Photo>> _mapPhotosFromModels(List<PhotoModel> photoModels) =>
      Future.wait(photoModels.map(_mapPhotoFromModel).toList());

  // Supplements photo model with stored like.
  Future<Photo> _mapPhotoFromModel(PhotoModel photoModel) async {
    final isPhotoLiked = await _likeDataStorage.getPhotoLike(
      photoId: '${photoModel.id}',
    );
    final photo = PhotoFromModel()(photoModel);

    return photo.copyWith(isLiked: isPhotoLiked);
  }
}
