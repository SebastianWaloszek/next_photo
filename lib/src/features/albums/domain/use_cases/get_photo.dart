import 'package:injectable/injectable.dart';
import 'package:next_blog/src/base/domain/entities/result.dart';
import 'package:next_blog/src/base/domain/use_cases/use_case.dart';
import 'package:next_blog/src/features/albums/domain/entities/photo.dart';
import 'package:next_blog/src/features/albums/domain/repositories/photo_repository.dart';

/// A use case for getting a single photo.
@LazySingleton()
class GetPhoto extends AsyncUseCaseWithParams<Photo, GetPhotoParams> {
  /// Creates the use case.
  GetPhoto({
    required PhotoRepository repository,
  }) : _repository = repository;

  final PhotoRepository _repository;

  @override
  Future<Result<Photo>> call(GetPhotoParams params) {
    return _repository.getPhoto(params.photoId);
  }
}

/// Parameters for [GetPhoto] use case.
class GetPhotoParams extends Params {
  /// Creates params.
  GetPhotoParams({
    required this.photoId,
  });

  /// The id of an photo.
  final PhotoId photoId;

  @override
  List<Object?> get props => [photoId];
}
