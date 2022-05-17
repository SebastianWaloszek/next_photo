import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:next_photo/src/base/domain/entities/result.dart';
import 'package:next_photo/src/features/albums/domain/repositories/photo_repository.dart';
import 'package:next_photo/src/features/albums/domain/use_cases/get_photo.dart';

import '../../../../../util/mock_classes.dart';
import '../albums_domain_test_data.dart';

void main() {
  late PhotoRepository repository;
  late GetPhoto getPhoto;

  setUp(() {
    repository = PhotoRepositoryMock();
    getPhoto = GetPhoto(repository: repository);
  });

  group(
    '$GetPhoto',
    () {
      test(
        'should return success result',
        () async {
          when(() => repository.getPhoto(photoId1)).thenAnswer(
            (_) async => const Result(photo1),
          );

          final result = await getPhoto(
            GetPhotoParams(photoId: photoId1),
          );

          result.when(
            (value) {
              expect(value, photo1);
              verify(() => repository.getPhoto(photoId1)).called(1);
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

          when(() => repository.getPhoto(photoId1)).thenAnswer(
            (_) async => const Result.failure(errorFailure),
          );

          final result = await getPhoto(
            GetPhotoParams(photoId: photoId1),
          );

          result.when(
            (value) => throw value,
            failure: (failure) {
              expect(failure, errorFailure);
              verify(
                () => repository.getPhoto(photoId1),
              ).called(1);
              verifyNoMoreInteractions(repository);
            },
          );
        },
      );
    },
  );
}
