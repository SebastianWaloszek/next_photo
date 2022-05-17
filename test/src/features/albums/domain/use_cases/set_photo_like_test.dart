import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:next_photo/src/base/domain/entities/result.dart';
import 'package:next_photo/src/features/albums/domain/repositories/photo_repository.dart';
import 'package:next_photo/src/features/albums/domain/use_cases/set_photo_like.dart';

import '../../../../../util/mock_classes.dart';
import '../albums_domain_test_data.dart';

void main() {
  late PhotoRepository repository;
  late SetPhotoLike setPhotoLike;

  setUp(() {
    repository = PhotoRepositoryMock();
    setPhotoLike = SetPhotoLike(repository: repository);
  });

  group(
    '$SetPhotoLike',
    () {
      test(
        'should return success result for liking photo',
        () async {
          when(() => repository.setPhotoLike(photoId1, like: true)).thenAnswer(
            (_) async => const Result(null),
          );

          final result = await setPhotoLike(
            SetPhotoLikeParams(photoId: photoId1, like: true),
          );

          result.when(
            (value) {
              verify(
                () => repository.setPhotoLike(photoId1, like: true),
              ).called(1);
              verifyNoMoreInteractions(repository);
            },
            failure: (failure) => throw failure,
          );
        },
      );

      test(
        'should return success result for unliking photo',
        () async {
          when(() => repository.setPhotoLike(photoId1, like: false)).thenAnswer(
            (_) async => const Result(null),
          );

          final result = await setPhotoLike(
            SetPhotoLikeParams(photoId: photoId1, like: false),
          );

          result.when(
            (value) {
              verify(
                () => repository.setPhotoLike(photoId1, like: false),
              ).called(1);
              verifyNoMoreInteractions(repository);
            },
            failure: (failure) => throw failure,
          );
        },
      );

      test(
        'should return failure result',
        () async {
          const errorFailure = Failure('Error');

          when(() => repository.setPhotoLike(photoId1, like: true)).thenAnswer(
            (_) async => const Result.failure(errorFailure),
          );

          final result = await setPhotoLike(
            SetPhotoLikeParams(photoId: photoId1, like: true),
          );

          result.when(
            (value) => throw Exception('Result should be not be successful'),
            failure: (failure) {
              expect(failure, errorFailure);
              verify(
                () => repository.setPhotoLike(photoId1, like: true),
              ).called(1);
              verifyNoMoreInteractions(repository);
            },
          );
        },
      );
    },
  );
}
