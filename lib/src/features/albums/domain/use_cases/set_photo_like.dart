import 'package:injectable/injectable.dart';
import 'package:next_blog/src/base/domain/entities/result.dart';
import 'package:next_blog/src/base/domain/use_cases/use_case.dart';
import 'package:next_blog/src/features/albums/domain/entities/photo.dart';
import 'package:next_blog/src/features/albums/domain/repositories/photo_repository.dart';

/// A use case for liking or unliking a photo.
@LazySingleton()
class SetPhotoLike extends AsyncUseCaseWithParams<void, SetPhotoLikeParams> {
  /// Creates the use case.
  SetPhotoLike({
    required PhotoRepository repository,
  }) : _repository = repository;

  final PhotoRepository _repository;

  @override
  Future<Result<void>> call(SetPhotoLikeParams params) {
    return _repository.setPhotoLike(
      params.photoId,
      like: params.like,
    );
  }
}

/// Parameters for [SetPhotoLike] use case.
class SetPhotoLikeParams extends Params {
  /// Creates params.
  SetPhotoLikeParams({
    required this.photoId,
    required this.like,
  });

  /// The id of a photo.
  final PhotoId photoId;

  /// Whether the photo should be liked or unliked.
  final bool like;

  @override
  List<Object?> get props => [photoId];
}
