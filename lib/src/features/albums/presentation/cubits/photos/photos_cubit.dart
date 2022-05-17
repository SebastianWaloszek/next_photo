import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:next_blog/src/base/domain/entities/result.dart';
import 'package:next_blog/src/features/albums/domain/entities/album.dart';
import 'package:next_blog/src/features/albums/domain/entities/photo.dart';
import 'package:next_blog/src/features/albums/domain/use_cases/get_album_photos.dart';
import 'package:next_blog/src/features/albums/domain/use_cases/get_all_photos.dart';

part 'photos_cubit.freezed.dart';
part 'photos_state.dart';

/// The cubit for keeping the state of a list of [Photo] objects.
@injectable
class PhotosCubit extends Cubit<PhotosState> {
  /// Creates the cubit.
  PhotosCubit({
    required GetAlbumPhotos getAlbumPhotos,
    required GetAllPhotos getAllPhotos,
  })  : _getAlbumPhotos = getAlbumPhotos,
        _getAllPhotos = getAllPhotos,
        super(const PhotosState.initial());

  final GetAlbumPhotos _getAlbumPhotos;
  final GetAllPhotos _getAllPhotos;

  /// Loads the list of photos for a given [albumId].
  Future<void> getAlbumPhotos(AlbumId albumId) async {
    emit(
      PhotosState.inProgress(
        currentPhotos: state.whenOrNull(success: (photos) => photos),
      ),
    );

    final result = await _getAlbumPhotos(
      GetAlbumPhotosParams(albumId: albumId),
    );

    emit(
      result.when(
        PhotosState.success,
        failure: PhotosState.failure,
      ),
    );
  }

  /// Loads all available photos.
  Future<void> getAllPhotos() async {
    emit(
      PhotosState.inProgress(
        currentPhotos: state.whenOrNull(success: (photos) => photos),
      ),
    );

    final result = await _getAllPhotos();

    emit(
      result.when(
        PhotosState.success,
        failure: PhotosState.failure,
      ),
    );
  }
}
