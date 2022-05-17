import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:next_blog/src/base/domain/entities/result.dart';
import 'package:next_blog/src/features/albums/domain/entities/photo.dart';
import 'package:next_blog/src/features/albums/domain/use_cases/set_photo_like.dart';

part 'photo_like_cubit.freezed.dart';
part 'photo_like_state.dart';

/// The cubit for keeping the state of the process of liking a [Photo] object.
@injectable
class PhotoLikeCubit extends Cubit<PhotoLikeState> {
  /// Creates the cubit.
  PhotoLikeCubit({
    required SetPhotoLike setPhotoLike,
  })  : _setPhotoLike = setPhotoLike,
        super(
          const PhotoLikeState.initial(),
        );

  final SetPhotoLike _setPhotoLike;

  /// Updates the given photo's like status.
  ///
  /// Returns whether the photo is liked or not.
  Future<bool> setPhotoLike(
    PhotoId photoId, {
    required bool like,
  }) async {
    emit(
      PhotoLikeState.inProgress(like: like),
    );

    final result = await _setPhotoLike(
      SetPhotoLikeParams(
        photoId: photoId,
        like: like,
      ),
    );

    emit(
      result.when(
        (success) => PhotoLikeState.success(like: like),
        failure: PhotoLikeState.failure,
      ),
    );

    return result.when(
      (result) => like,
      failure: (_) => !like,
    );
  }
}
