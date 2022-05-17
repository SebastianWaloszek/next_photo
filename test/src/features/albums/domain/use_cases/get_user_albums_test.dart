import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:next_photo/src/base/domain/entities/result.dart';
import 'package:next_photo/src/features/albums/domain/repositories/album_repository.dart';
import 'package:next_photo/src/features/albums/domain/use_cases/get_user_albums.dart';

import '../../../../../util/mock_classes.dart';
import '../../../users/domain/users_domain_test_data.dart';
import '../albums_domain_test_data.dart';

void main() {
  late AlbumRepository repository;
  late GetUserAlbums getUserAlbums;

  setUp(() {
    repository = AlbumRepositoryMock();
    getUserAlbums = GetUserAlbums(repository: repository);
  });

  group(
    '$GetUserAlbums',
    () {
      test(
        'should return success result',
        () async {
          when(() => repository.getUserAlbums(userId1)).thenAnswer(
            (_) async => Result(albums),
          );

          final result = await getUserAlbums(
            GetUserAlbumsParams(userId: userId1),
          );

          result.when(
            (value) {
              expect(value, albums);
              verify(
                () => repository.getUserAlbums(userId1),
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

          when(() => repository.getUserAlbums(userId1)).thenAnswer(
            (_) async => const Result.failure(errorFailure),
          );

          final result = await getUserAlbums(
            GetUserAlbumsParams(userId: userId1),
          );

          result.when(
            (value) => throw value,
            failure: (failure) {
              expect(failure, errorFailure);
              verify(
                () => repository.getUserAlbums(userId1),
              ).called(1);
              verifyNoMoreInteractions(repository);
            },
          );
        },
      );
    },
  );
}
