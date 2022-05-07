import 'package:injectable/injectable.dart';
import 'package:next_blog/src/base/domain/entities/result.dart';
import 'package:next_blog/src/base/domain/use_cases/use_case.dart';
import 'package:next_blog/src/features/albums/domain/entities/album.dart';
import 'package:next_blog/src/features/albums/domain/entities/photo.dart';
import 'package:next_blog/src/features/albums/domain/repositories/photo_repository.dart';

/// A use case for getting all photos belonging to an album.
@LazySingleton()
class GetAlbumPhotos
    extends AsyncUseCaseWithParams<List<Photo>, GetAlbumPhotosParams> {
  /// Creates the use case.
  GetAlbumPhotos({
    required PhotoRepository repository,
  }) : _repository = repository;

  final PhotoRepository _repository;

  @override
  Future<Result<List<Photo>>> call(GetAlbumPhotosParams params) {
    return _repository.getAlbumPhotos(params.albumId);
  }
}

/// Parameters for [GetAlbumPhotos] use case.
class GetAlbumPhotosParams extends Params {
  /// Creates params.
  GetAlbumPhotosParams({
    required this.albumId,
  });

  /// The id of an album.
  final AlbumId albumId;

  @override
  List<Object?> get props => [albumId];
}
