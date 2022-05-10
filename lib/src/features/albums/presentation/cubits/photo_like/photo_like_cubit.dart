import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:next_blog/src/base/domain/entities/result.dart';
import 'package:next_blog/src/features/albums/domain/entities/photo.dart';
import 'package:next_blog/src/features/albums/domain/use_cases/update_photo_like.dart';

part 'photo_like_cubit.freezed.dart';
part 'photo_like_state.dart';

/// The cubit for keeping the state of the process of liking a [Photo] object.
class PhotoLikeCubit extends Cubit<PhotoLikeState> {
  /// Creates the cubit.
  PhotoLikeCubit({
    required UpdatePhotoLike updatePhotoLike,
  })  : _updatePhotoLike = updatePhotoLike,
        super(
          const PhotoLikeState.initial(),
        );

  final UpdatePhotoLike _updatePhotoLike;

  /// Updates the given photo's like status.
  Future<void> updatePhotoLike(
    Photo photo, {
    required bool like,
  }) async {
    emit(
      PhotoLikeState.inProgress(like: like),
    );

    final result = await _updatePhotoLike(
      UpdatePhotoLikeParams(
        photoId: photo.id,
        like: like,
      ),
    );

    emit(
      result.when(
        (success) => PhotoLikeState.success(like: like),
        failure: PhotoLikeState.failure,
      ),
    );
  }
}
