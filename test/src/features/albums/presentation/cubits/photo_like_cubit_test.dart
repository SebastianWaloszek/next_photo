import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:next_blog/src/base/domain/entities/result.dart';
import 'package:next_blog/src/features/albums/domain/use_cases/set_photo_like.dart';
import 'package:next_blog/src/features/albums/presentation/cubits/photo_like/photo_like_cubit.dart';

import '../../../../../util/fallback_values.dart';
import '../../../../../util/mock_classes.dart';
import '../../../../base/domain/result.dart';
import '../../domain/albums_domain_test_data.dart';

void main() {
  late SetPhotoLike setPhotoLike;

  late PhotoLikeCubit cubit;

  setUpAll(() {
    registerAllFallbackValues();
  });

  setUp(() {
    setPhotoLike = SetPhotoLikeMock();
    cubit = PhotoLikeCubit(
      setPhotoLike: setPhotoLike,
    );
  });

  void whenSetPhotoLike(Result<void> result) {
    when(
      () => setPhotoLike(any()),
    ).thenAnswer(
      (_) async => result,
    );
  }

  group(
    '$PhotoLikeCubit',
    () {
      blocTest<PhotoLikeCubit, PhotoLikeState>(
        'should emit in progress & success state when liking a photo succeeds',
        build: () {
          whenSetPhotoLike(const Result(null));
          return cubit;
        },
        act: (cubit) => cubit.setPhotoLike(
          photoId1,
          like: true,
        ),
        verify: (_) => verify(
          () => setPhotoLike(
            SetPhotoLikeParams(photoId: photoId1, like: true),
          ),
        ).called(1),
        expect: () => [
          const PhotoLikeState.inProgress(like: true),
          const PhotoLikeState.success(like: true),
        ],
      );

      blocTest<PhotoLikeCubit, PhotoLikeState>(
        'should emit in progress & failure state when liking a photo fails',
        build: () {
          whenSetPhotoLike(const Result.failure(failure));
          return cubit;
        },
        act: (cubit) => cubit.setPhotoLike(
          photoId1,
          like: true,
        ),
        verify: (_) => verify(
          () => setPhotoLike(
            SetPhotoLikeParams(photoId: photoId1, like: true),
          ),
        ).called(1),
        expect: () => [
          const PhotoLikeState.inProgress(like: true),
          const PhotoLikeState.failure(failure),
        ],
      );

      blocTest<PhotoLikeCubit, PhotoLikeState>(
        'should emit in progress & success state when unliking a photo succeeds',
        build: () {
          whenSetPhotoLike(const Result(null));
          return cubit;
        },
        act: (cubit) => cubit.setPhotoLike(
          photoId1,
          like: false,
        ),
        verify: (_) => verify(
          () => setPhotoLike(
            SetPhotoLikeParams(photoId: photoId1, like: false),
          ),
        ).called(1),
        expect: () => [
          const PhotoLikeState.inProgress(like: false),
          const PhotoLikeState.success(like: false),
        ],
      );

      blocTest<PhotoLikeCubit, PhotoLikeState>(
        'should emit in progress & failure state when unliking a photo fails',
        build: () {
          whenSetPhotoLike(const Result.failure(failure));
          return cubit;
        },
        act: (cubit) => cubit.setPhotoLike(
          photoId1,
          like: false,
        ),
        verify: (_) => verify(
          () => setPhotoLike(
            SetPhotoLikeParams(photoId: photoId1, like: false),
          ),
        ).called(1),
        expect: () => [
          const PhotoLikeState.inProgress(like: false),
          const PhotoLikeState.failure(failure),
        ],
      );
    },
  );
}
