import 'package:injectable/injectable.dart';
import 'package:next_photo/src/base/domain/entities/result.dart';
import 'package:next_photo/src/base/domain/use_cases/use_case.dart';
import 'package:next_photo/src/features/albums/domain/entities/album.dart';
import 'package:next_photo/src/features/albums/domain/repositories/album_repository.dart';
import 'package:next_photo/src/features/users/domain/entities/user.dart';

/// A use case for getting all photos albums belonging to a user.
@LazySingleton()
class GetUserAlbums
    extends AsyncUseCaseWithParams<List<Album>, GetUserAlbumsParams> {
  /// Creates the use case.
  GetUserAlbums({
    required AlbumRepository repository,
  }) : _repository = repository;

  final AlbumRepository _repository;

  @override
  Future<Result<List<Album>>> call(GetUserAlbumsParams params) {
    return _repository.getUserAlbums(params.userId);
  }
}

/// Parameters for [GetUserAlbums] use case.
class GetUserAlbumsParams extends Params {
  /// Creates params.
  GetUserAlbumsParams({
    required this.userId,
  });

  /// The id of a user.
  final UserId userId;

  @override
  List<Object?> get props => [userId];
}
