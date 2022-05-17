import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:next_photo/src/base/domain/entities/result.dart';
import 'package:next_photo/src/features/albums/domain/repositories/photo_repository.dart';
import 'package:next_photo/src/features/albums/domain/use_cases/get_album_photos.dart';

import '../../../../../util/mock_classes.dart';
import '../albums_domain_test_data.dart';

void main() {
  late PhotoRepository repository;
  late GetAlbumPhotos getAlbumPhotos;

  setUp(() {
    repository = PhotoRepositoryMock();
    getAlbumPhotos = GetAlbumPhotos(repository: repository);
  });

  group(
    '$GetAlbumPhotos',
    () {
      test(
        'should return success result',
        () async {
          when(() => repository.getAlbumPhotos(albumId1)).thenAnswer(
            (_) async => Result(photos),
          );

          final result = await getAlbumPhotos(
            GetAlbumPhotosParams(albumId: albumId1),
          );

          result.when(
            (value) {
              expect(value, photos);
              verify(
                () => repository.getAlbumPhotos(albumId1),
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

          when(() => repository.getAlbumPhotos(albumId1)).thenAnswer(
            (_) async => const Result.failure(errorFailure),
          );

          final result = await getAlbumPhotos(
            GetAlbumPhotosParams(albumId: albumId1),
          );

          result.when(
            (value) => throw value,
            failure: (failure) {
              expect(failure, errorFailure);
              verify(
                () => repository.getAlbumPhotos(albumId1),
              ).called(1);
              verifyNoMoreInteractions(repository);
            },
          );
        },
      );
    },
  );
}
