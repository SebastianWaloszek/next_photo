import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:next_photo/src/base/domain/entities/result.dart';
import 'package:next_photo/src/features/albums/domain/entities/album.dart';
import 'package:next_photo/src/features/albums/domain/use_cases/get_album.dart';
import 'package:next_photo/src/features/albums/presentation/cubits/album/album_cubit.dart';

import '../../../../../util/fallback_values.dart';
import '../../../../../util/mock_classes.dart';
import '../../../../base/domain/result.dart';
import '../../domain/albums_domain_test_data.dart';

void main() {
  late GetAlbum getAlbum;
  late AlbumCubit cubit;

  setUpAll(() {
    registerAllFallbackValues();
  });

  setUp(() {
    getAlbum = GetAlbumMock();
    cubit = AlbumCubit(getAlbum: getAlbum);
  });

  void whenGetAlbum(Result<Album> result) {
    when(
      () => getAlbum(any()),
    ).thenAnswer(
      (_) async => result,
    );
  }

  group(
    '$AlbumCubit',
    () {
      blocTest<AlbumCubit, AlbumState>(
        'should emit in progress & success state when getting album succeeds',
        build: () {
          whenGetAlbum(const Result(album1));
          return cubit;
        },
        act: (cubit) => cubit.getAlbum(albumId1),
        verify: (_) => verify(
          () => getAlbum(GetAlbumParams(albumId: albumId1)),
        ).called(1),
        expect: () => [
          const AlbumState.inProgress(),
          const AlbumState.success(album1),
        ],
      );

      blocTest<AlbumCubit, AlbumState>(
        'should emit in progress & failure state when getting album fails',
        build: () {
          whenGetAlbum(const Result.failure(failure));
          return cubit;
        },
        act: (cubit) => cubit.getAlbum(albumId1),
        verify: (_) => verify(
          () => getAlbum(GetAlbumParams(albumId: albumId1)),
        ).called(1),
        expect: () => [
          const AlbumState.inProgress(),
          const AlbumState.failure(failure),
        ],
      );
    },
  );
}
