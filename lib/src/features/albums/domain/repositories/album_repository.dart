import 'package:next_blog/src/base/domain/entities/result.dart';
import 'package:next_blog/src/features/albums/domain/entities/album.dart';
import 'package:next_blog/src/features/users/domain/entities/user.dart';

/// The repository interface for handling photo albums.
abstract class AlbumRepository {
  /// Returns result with all available photo albums.
  Future<Result<List<Album>>> getAllAlbums();

  /// Returns result with a single album.
  Future<Result<Album>> getAlbum(AlbumId albumId);

  /// Returns result with all photo albums from a given user.
  Future<Result<List<Album>>> getUserAlbums(UserId userId);
}
