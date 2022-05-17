import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:next_blog/src/base/domain/entities/result.dart';
import 'package:next_blog/src/features/albums/domain/entities/photo.dart';
import 'package:next_blog/src/features/albums/domain/use_cases/get_album_photos.dart';
import 'package:next_blog/src/features/albums/domain/use_cases/get_all_photos.dart';
import 'package:next_blog/src/features/albums/presentation/cubits/photos/photos_cubit.dart';

import '../../../../../util/fallback_values.dart';
import '../../../../../util/mock_classes.dart';
import '../../../../base/domain/result.dart';
import '../../domain/albums_domain_test_data.dart';

void main() {
  late GetAllPhotos getAllPhotos;
  late GetAlbumPhotos getAlbumPhotos;

  late PhotosCubit cubit;

  setUpAll(() {
    registerAllFallbackValues();
  });

  setUp(() {
    getAllPhotos = GetAllPhotosMock();
    getAlbumPhotos = GetAlbumPhotosMock();
    cubit = PhotosCubit(
      getAllPhotos: getAllPhotos,
      getAlbumPhotos: getAlbumPhotos,
    );
  });

  void whenGetAllPhotos(Result<List<Photo>> result) {
    when(
      () => getAllPhotos(),
    ).thenAnswer(
      (_) async => result,
    );
  }

  void whenGetAlbumPhotos(Result<List<Photo>> result) {
    when(
      () => getAlbumPhotos(any()),
    ).thenAnswer(
      (_) async => result,
    );
  }

  group(
    '$PhotosCubit',
    () {
      blocTest<PhotosCubit, PhotosState>(
        'should emit in progress & success state when getting all photos succeeds',
        build: () {
          whenGetAllPhotos(Result(photos));
          return cubit;
        },
        act: (cubit) => cubit.getAllPhotos(),
        verify: (_) => verify(getAllPhotos).called(1),
        expect: () => [
          const PhotosState.inProgress(),
          PhotosState.success(photos),
        ],
      );

      blocTest<PhotosCubit, PhotosState>(
        'should emit in progress (with current photos) & success state'
        ' when getting new all photos succeeds',
        build: () {
          whenGetAllPhotos(Result(photos));
          return cubit;
        },
        act: (cubit) async {
          await cubit.getAllPhotos();
          return cubit.getAllPhotos();
        },
        verify: (_) => verify(getAllPhotos).called(2),
        expect: () => [
          const PhotosState.inProgress(),
          PhotosState.success(photos),
          PhotosState.inProgress(currentPhotos: photos),
          PhotosState.success(photos),
        ],
      );

      blocTest<PhotosCubit, PhotosState>(
        'should emit in progress & failure state when getting all photos fails',
        build: () {
          whenGetAllPhotos(const Result.failure(failure));
          return cubit;
        },
        act: (cubit) => cubit.getAllPhotos(),
        verify: (_) => verify(getAllPhotos).called(1),
        expect: () => [
          const PhotosState.inProgress(),
          const PhotosState.failure(failure),
        ],
      );

      blocTest<PhotosCubit, PhotosState>(
        'should emit in progress & success state when getting album photos succeeds',
        build: () {
          whenGetAlbumPhotos(Result(photos));
          return cubit;
        },
        act: (cubit) => cubit.getAlbumPhotos(albumId1),
        verify: (_) => verify(
          () => getAlbumPhotos(GetAlbumPhotosParams(albumId: albumId1)),
        ).called(1),
        expect: () => [
          const PhotosState.inProgress(),
          PhotosState.success(photos),
        ],
      );

      blocTest<PhotosCubit, PhotosState>(
        'should emit in progress (with current photos) & success state '
        'when getting new album photos succeeds',
        build: () {
          whenGetAlbumPhotos(Result(photos));
          return cubit;
        },
        act: (cubit) async {
          await cubit.getAlbumPhotos(albumId1);
          return cubit.getAlbumPhotos(albumId1);
        },
        verify: (_) => verify(
          () => getAlbumPhotos(GetAlbumPhotosParams(albumId: albumId1)),
        ).called(2),
        expect: () => [
          const PhotosState.inProgress(),
          PhotosState.success(photos),
          PhotosState.inProgress(currentPhotos: photos),
          PhotosState.success(photos),
        ],
      );

      blocTest<PhotosCubit, PhotosState>(
        'should emit in progress & failure state when getting album photos fails',
        build: () {
          whenGetAlbumPhotos(const Result.failure(failure));
          return cubit;
        },
        act: (cubit) => cubit.getAlbumPhotos(albumId1),
        verify: (_) => verify(
          () => getAlbumPhotos(GetAlbumPhotosParams(albumId: albumId1)),
        ).called(1),
        expect: () => [
          const PhotosState.inProgress(),
          const PhotosState.failure(failure),
        ],
      );
    },
  );
}
