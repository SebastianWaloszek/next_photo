import 'package:next_blog/src/base/domain/entities/result.dart';
import 'package:next_blog/src/features/albums/domain/entities/album.dart';
import 'package:next_blog/src/features/albums/domain/entities/photo.dart';

/// The repository interface for handling photos.
abstract class PhotoRepository {
  /// Returns result with all available photos in an album.
  Future<Result<List<Photo>>> getAlbumPhotos(AlbumId albumId);

  /// Returns result with all available photos.
  Future<Result<List<Photo>>> getAllPhotos();

  /// Updates whether a given photo is liked or unliked.
  Future<Result<void>> setPhotoLike(
    PhotoId id, {
    required bool like,
  });
}
