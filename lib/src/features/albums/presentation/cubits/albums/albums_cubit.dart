import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:next_blog/src/base/domain/entities/result.dart';
import 'package:next_blog/src/features/albums/domain/entities/album.dart';
import 'package:next_blog/src/features/albums/domain/use_cases/get_all_albums.dart';
import 'package:next_blog/src/features/albums/domain/use_cases/get_user_albums.dart';
import 'package:next_blog/src/features/users/domain/entities/user.dart';

part 'albums_cubit.freezed.dart';
part 'albums_state.dart';

/// The cubit for keeping the state of a list of [Album] objects.
@injectable
class AlbumsCubit extends Cubit<AlbumsState> {
  /// Creates an albums cubit.
  AlbumsCubit({
    required GetAllAlbums getAllAlbums,
    required GetUserAlbums getUserAlbums,
  })  : _getAllAlbums = getAllAlbums,
        _getUserAlbums = getUserAlbums,
        super(const AlbumsState.initial());

  final GetAllAlbums _getAllAlbums;
  final GetUserAlbums _getUserAlbums;

  /// Loads the list of all available albums.
  Future<void> getAllAlbums() async {
    emit(
      const AlbumsState.inProgress(),
    );

    final result = await _getAllAlbums();

    emit(
      result.when(
        AlbumsState.success,
        failure: AlbumsState.failure,
      ),
    );
  }

  /// Loads all available albums.
  Future<void> getUserAlbums(UserId userId) async {
    emit(
      const AlbumsState.inProgress(),
    );

    final result = await _getUserAlbums(
      GetUserAlbumsParams(userId: userId),
    );

    emit(
      result.when(
        AlbumsState.success,
        failure: AlbumsState.failure,
      ),
    );
  }
}
