import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:next_photo/src/base/domain/entities/result.dart';
import 'package:next_photo/src/features/albums/domain/entities/album.dart';
import 'package:next_photo/src/features/albums/domain/use_cases/get_all_albums.dart';
import 'package:next_photo/src/features/albums/domain/use_cases/get_user_albums.dart';
import 'package:next_photo/src/features/albums/presentation/cubits/albums/albums_cubit.dart';

import '../../../../../util/fallback_values.dart';
import '../../../../../util/mock_classes.dart';
import '../../../../base/domain/result.dart';
import '../../../users/domain/users_domain_test_data.dart';
import '../../domain/albums_domain_test_data.dart';

void main() {
  late GetAllAlbums getAllAlbums;
  late GetUserAlbums getUserAlbums;

  late AlbumsCubit cubit;

  setUpAll(() {
    registerAllFallbackValues();
  });

  setUp(() {
    getAllAlbums = GetAllAlbumsMock();
    getUserAlbums = GetUserAlbumsMock();
    cubit = AlbumsCubit(
      getAllAlbums: getAllAlbums,
      getUserAlbums: getUserAlbums,
    );
  });

  void whenGetAllAlbums(Result<List<Album>> result) {
    when(
      () => getAllAlbums(),
    ).thenAnswer(
      (_) async => result,
    );
  }

  void whenGetUserAlbums(Result<List<Album>> result) {
    when(
      () => getUserAlbums(any()),
    ).thenAnswer(
      (_) async => result,
    );
  }

  group(
    '$AlbumsCubit',
    () {
      blocTest<AlbumsCubit, AlbumsState>(
        'should emit in progress & success state when getting all albums succeeds',
        build: () {
          whenGetAllAlbums(Result(albums));
          return cubit;
        },
        act: (cubit) => cubit.getAllAlbums(),
        verify: (_) => verify(getAllAlbums).called(1),
        expect: () => [
          const AlbumsState.inProgress(),
          AlbumsState.success(albums),
        ],
      );

      blocTest<AlbumsCubit, AlbumsState>(
        'should emit in progress & failure state when getting all albums fails',
        build: () {
          whenGetAllAlbums(const Result.failure(failure));
          return cubit;
        },
        act: (cubit) => cubit.getAllAlbums(),
        verify: (_) => verify(getAllAlbums).called(1),
        expect: () => [
          const AlbumsState.inProgress(),
          const AlbumsState.failure(failure),
        ],
      );

      blocTest<AlbumsCubit, AlbumsState>(
        'should emit in progress & success state when getting user albums succeeds',
        build: () {
          whenGetUserAlbums(Result(albums));
          return cubit;
        },
        act: (cubit) => cubit.getUserAlbums(userId1),
        verify: (_) => verify(
          () => getUserAlbums(GetUserAlbumsParams(userId: userId1)),
        ).called(1),
        expect: () => [
          const AlbumsState.inProgress(),
          AlbumsState.success(albums),
        ],
      );

      blocTest<AlbumsCubit, AlbumsState>(
        'should emit in progress & failure state when getting user albums fails',
        build: () {
          whenGetUserAlbums(const Result.failure(failure));
          return cubit;
        },
        act: (cubit) => cubit.getUserAlbums(userId1),
        verify: (_) => verify(
          () => getUserAlbums(GetUserAlbumsParams(userId: userId1)),
        ).called(1),
        expect: () => [
          const AlbumsState.inProgress(),
          const AlbumsState.failure(failure),
        ],
      );
    },
  );
}
