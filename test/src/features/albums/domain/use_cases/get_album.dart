import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:next_blog/src/base/domain/entities/result.dart';
import 'package:next_blog/src/features/albums/domain/repositories/album_repository.dart';
import 'package:next_blog/src/features/albums/domain/use_cases/get_album.dart';

import '../../../../../util/mock_classes.dart';
import '../albums_domain_test_data.dart';

void main() {
  late AlbumRepository repository;
  late GetAlbum getAlbum;

  setUp(() {
    repository = AlbumRepositoryMock();
    getAlbum = GetAlbum(repository: repository);
  });

  group(
    '$GetAlbum',
    () {
      test(
        'should return success result',
        () async {
          when(() => repository.getAlbum(albumId1)).thenAnswer(
            (_) async => const Result(album1),
          );

          final result = await getAlbum(
            GetAlbumParams(albumId: albumId1),
          );

          result.when(
            (value) {
              expect(value, album1);
              verify(() => repository.getAlbum(albumId1)).called(1);
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

          when(() => repository.getAlbum(albumId1)).thenAnswer(
            (_) async => const Result.failure(errorFailure),
          );

          final result = await getAlbum(
            GetAlbumParams(albumId: albumId1),
          );

          result.when(
            (value) => throw value,
            failure: (failure) {
              expect(failure, errorFailure);
              verify(
                () => repository.getAlbum(albumId1),
              ).called(1);
              verifyNoMoreInteractions(repository);
            },
          );
        },
      );
    },
  );
}
