import 'package:injectable/injectable.dart';
import 'package:next_photo/src/base/domain/entities/result.dart';
import 'package:next_photo/src/base/domain/use_cases/use_case.dart';
import 'package:next_photo/src/features/albums/domain/entities/album.dart';
import 'package:next_photo/src/features/albums/domain/repositories/album_repository.dart';

/// A use case for getting all available photo albums.
@LazySingleton()
class GetAllAlbums extends AsyncUseCaseWithoutParams<List<Album>> {
  /// Creates the use case.
  GetAllAlbums({
    required AlbumRepository repository,
  }) : _repository = repository;

  final AlbumRepository _repository;

  @override
  Future<Result<List<Album>>> call() {
    return _repository.getAllAlbums();
  }
}
