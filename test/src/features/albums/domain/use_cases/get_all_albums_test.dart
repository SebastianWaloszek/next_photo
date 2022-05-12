import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:next_blog/src/base/domain/entities/result.dart';
import 'package:next_blog/src/features/albums/domain/repositories/album_repository.dart';
import 'package:next_blog/src/features/albums/domain/use_cases/get_all_albums.dart';

import '../../../../../util/mock_classes.dart';
import '../albums_domain_test_data.dart';

void main() {
  late AlbumRepository repository;
  late GetAllAlbums getAllAlbums;

  setUp(() {
    repository = AlbumRepositoryMock();
    getAllAlbums = GetAllAlbums(repository: repository);
  });

  group(
    '$GetAllAlbums',
    () {
      test(
        'should return success result',
        () async {
          when(() => repository.getAllAlbums()).thenAnswer(
            (_) async => Result(albums),
          );

          final result = await getAllAlbums();

          result.when(
            (value) {
              expect(value, albums);
              verify(() => repository.getAllAlbums()).called(1);
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

          when(() => repository.getAllAlbums()).thenAnswer(
            (_) async => const Result.failure(errorFailure),
          );

          final result = await getAllAlbums();

          result.when(
            (value) => throw value,
            failure: (failure) {
              expect(failure, errorFailure);
              verify(
                () => repository.getAllAlbums(),
              ).called(1);
              verifyNoMoreInteractions(repository);
            },
          );
        },
      );
    },
  );
}
