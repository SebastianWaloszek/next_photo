import 'package:injectable/injectable.dart';
import 'package:next_blog/src/base/domain/entities/result.dart';
import 'package:next_blog/src/base/domain/use_cases/use_case.dart';
import 'package:next_blog/src/features/albums/domain/entities/photo.dart';
import 'package:next_blog/src/features/albums/domain/repositories/photo_repository.dart';

/// A use case for liking or unliking a photo.
@LazySingleton()
class UpdatePhotoLike
    extends AsyncUseCaseWithParams<void, UpdatePhotoLikeParams> {
  /// Creates the use case.
  UpdatePhotoLike({
    required PhotoRepository repository,
  }) : _repository = repository;

  final PhotoRepository _repository;

  @override
  Future<Result<void>> call(UpdatePhotoLikeParams params) {
    return _repository.updatePhotoLike(
      params.photoId,
      like: params.like,
    );
  }
}

/// Parameters for [UpdatePhotoLike] use case.
class UpdatePhotoLikeParams extends Params {
  /// Creates params.
  UpdatePhotoLikeParams({
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
