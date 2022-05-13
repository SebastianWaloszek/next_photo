import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:next_blog/src/base/domain/entities/result.dart';
import 'package:next_blog/src/features/albums/domain/entities/album.dart';
import 'package:next_blog/src/features/albums/domain/use_cases/get_album.dart';

part 'album_cubit.freezed.dart';
part 'album_state.dart';

/// The cubit for keeping the state of a single [Album] object.
@injectable
class AlbumCubit extends Cubit<AlbumState> {
  /// Creates the cubit.
  AlbumCubit({
    required GetAlbum getAlbum,
  })  : _getAlbum = getAlbum,
        super(const AlbumState.initial());

  final GetAlbum _getAlbum;

  /// Loads an album for a given [albumId].
  Future<void> getAlbum(AlbumId albumId) async {
    emit(
      const AlbumState.inProgress(),
    );

    final result = await _getAlbum(
      GetAlbumParams(albumId: albumId),
    );

    emit(
      result.when(
        AlbumState.success,
        failure: AlbumState.failure,
      ),
    );
  }
}
