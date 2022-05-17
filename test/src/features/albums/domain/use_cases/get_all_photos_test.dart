import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:next_photo/src/base/domain/entities/result.dart';
import 'package:next_photo/src/features/albums/domain/repositories/photo_repository.dart';
import 'package:next_photo/src/features/albums/domain/use_cases/get_all_photos.dart';

import '../../../../../util/mock_classes.dart';
import '../albums_domain_test_data.dart';

void main() {
  late PhotoRepository repository;
  late GetAllPhotos getAllPhotos;

  setUp(() {
    repository = PhotoRepositoryMock();
    getAllPhotos = GetAllPhotos(repository: repository);
  });

  group(
    '$GetAllPhotos',
    () {
      test(
        'should return success result',
        () async {
          when(() => repository.getAllPhotos()).thenAnswer(
            (_) async => Result(photos),
          );

          final result = await getAllPhotos();

          result.when(
            (value) {
              expect(value, photos);
              verify(() => repository.getAllPhotos()).called(1);
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

          when(() => repository.getAllPhotos()).thenAnswer(
            (_) async => const Result.failure(errorFailure),
          );

          final result = await getAllPhotos();

          result.when(
            (value) => throw value,
            failure: (failure) {
              expect(failure, errorFailure);
              verify(
                () => repository.getAllPhotos(),
              ).called(1);
              verifyNoMoreInteractions(repository);
            },
          );
        },
      );
    },
  );
}
