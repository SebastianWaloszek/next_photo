import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:next_photo/src/base/domain/entities/result.dart';
import 'package:next_photo/src/features/albums/domain/entities/photo.dart';
import 'package:next_photo/src/features/albums/domain/use_cases/get_photo.dart';
import 'package:next_photo/src/features/albums/presentation/cubits/photo/photo_cubit.dart';

import '../../../../../util/fallback_values.dart';
import '../../../../../util/mock_classes.dart';
import '../../../../base/domain/result.dart';
import '../../domain/albums_domain_test_data.dart';

void main() {
  late GetPhoto getPhoto;
  late PhotoCubit cubit;

  setUpAll(() {
    registerAllFallbackValues();
  });

  setUp(() {
    getPhoto = GetPhotoMock();
    cubit = PhotoCubit(getPhoto: getPhoto);
  });

  void whenGetPhoto(Result<Photo> result) {
    when(
      () => getPhoto(any()),
    ).thenAnswer(
      (_) async => result,
    );
  }

  group(
    '$PhotoCubit',
    () {
      blocTest<PhotoCubit, PhotoState>(
        'should emit in progress & success state when getting photo succeeds',
        build: () {
          whenGetPhoto(const Result(photo1));
          return cubit;
        },
        act: (cubit) => cubit.getPhoto(photoId1),
        verify: (_) => verify(
          () => getPhoto(GetPhotoParams(photoId: photoId1)),
        ).called(1),
        expect: () => [
          const PhotoState.inProgress(),
          const PhotoState.success(photo1),
        ],
      );

      blocTest<PhotoCubit, PhotoState>(
        'should emit in progress & failure state when getting photo fails',
        build: () {
          whenGetPhoto(const Result.failure(failure));
          return cubit;
        },
        act: (cubit) => cubit.getPhoto(photoId1),
        verify: (_) => verify(
          () => getPhoto(GetPhotoParams(photoId: photoId1)),
        ).called(1),
        expect: () => [
          const PhotoState.inProgress(),
          const PhotoState.failure(failure),
        ],
      );
    },
  );
}
