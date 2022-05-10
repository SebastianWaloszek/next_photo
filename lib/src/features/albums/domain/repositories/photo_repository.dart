import 'package:next_blog/src/base/domain/entities/result.dart';
import 'package:next_blog/src/features/albums/domain/entities/album.dart';
import 'package:next_blog/src/features/albums/domain/entities/photo.dart';

/// The repository interface for handling photos.
abstract class PhotoRepository {
  /// Returns result with all available photos in an album.
  Future<Result<List<Photo>>> getAlbumPhotos(AlbumId albumId);

  /// Updates whether a given photo is liked or unliked.
  Future<Result<void>> updatePhotoLike(
    PhotoId id, {
    required bool like,
  });
}
