import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:next_blog/src/base/domain/entities/result.dart';
import 'package:next_blog/src/features/albums/domain/entities/photo.dart';
import 'package:next_blog/src/features/albums/domain/use_cases/get_photo.dart';

part 'photo_cubit.freezed.dart';
part 'photo_state.dart';

/// The cubit for keeping the state of a single [Photo] object.
@injectable
class PhotoCubit extends Cubit<PhotoState> {
  /// Creates the cubit.
  PhotoCubit({
    required GetPhoto getPhoto,
  })  : _getPhoto = getPhoto,
        super(const PhotoState.initial());

  final GetPhoto _getPhoto;

  /// Loads a photo for a given [photoId].
  Future<void> getPhoto(PhotoId photoId) async {
    emit(
      const PhotoState.inProgress(),
    );

    final result = await _getPhoto(
      GetPhotoParams(photoId: photoId),
    );

    emit(
      result.when(
        PhotoState.success,
        failure: PhotoState.failure,
      ),
    );
  }
}
