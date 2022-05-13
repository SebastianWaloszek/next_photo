import 'package:injectable/injectable.dart';
import 'package:next_blog/src/base/domain/entities/result.dart';
import 'package:next_blog/src/base/domain/use_cases/use_case.dart';
import 'package:next_blog/src/features/albums/domain/entities/album.dart';
import 'package:next_blog/src/features/albums/domain/repositories/album_repository.dart';

/// A use case for getting a single album.
@LazySingleton()
class GetAlbum extends AsyncUseCaseWithParams<Album, GetAlbumParams> {
  /// Creates the use case.
  GetAlbum({
    required AlbumRepository repository,
  }) : _repository = repository;

  final AlbumRepository _repository;

  @override
  Future<Result<Album>> call(GetAlbumParams params) {
    return _repository.getAlbum(params.albumId);
  }
}

/// Parameters for [GetAlbum] use case.
class GetAlbumParams extends Params {
  /// Creates params.
  GetAlbumParams({
    required this.albumId,
  });

  /// The id of an album.
  final AlbumId albumId;

  @override
  List<Object?> get props => [albumId];
}
