import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';
import 'package:mocktail/mocktail.dart';
import 'package:next_blog/src/features/albums/data/repositories/album_repository_impl.dart';
import 'package:next_blog/src/features/albums/data/sources/album_data_source.dart';
import 'package:next_blog/src/features/albums/domain/repositories/album_repository.dart';

import '../../../../../util/mock_classes.dart';
import '../../../users/domain/users_domain_test_data.dart';
import '../../domain/albums_domain_test_data.dart';
import '../albums_data_test_data.dart';

void main() {
  late Logger logger;
  late AlbumDataSource dataSource;

  late AlbumRepository repository;

  setUp(() {
    logger = LoggerMock();
    dataSource = AlbumDataSourceMock();

    repository = AlbumRepositoryImpl(
      logger: logger,
      dataSource: dataSource,
    );
  });

  group(
    '$AlbumRepositoryImpl',
    () {
      test(
        'should return result with albums when getting all albums succeeds',
        () async {
          when(() => dataSource.getAllAlbums()).thenAnswer(
            (_) async => albumsModels,
          );

          final result = await repository.getAllAlbums();

          result.when(
            (value) {
              expect(value, albums);
              verifyZeroInteractions(logger);
            },
            failure: (failure) => throw failure,
          );
        },
      );

      test(
        'should return result with failure when getting all albums fails',
        () async {
          when(() => dataSource.getAllAlbums()).thenThrow('Failure');

          final result = await repository.getAllAlbums();

          result.when(
            (value) => throw value,
            failure: (failure) {
              verify(
                () => logger.e(
                  'Getting all albums has failed!',
                  'Failure',
                  any(),
                ),
              ).called(1);
              verifyNoMoreInteractions(logger);
            },
          );
        },
      );

      test(
        'should return result with albums when getting user albums succeeds',
        () async {
          when(
            () => dataSource.getUserAlbums(userId: userId1.value),
          ).thenAnswer(
            (_) async => albumsModels,
          );

          final result = await repository.getUserAlbums(userId1);

          result.when(
            (value) {
              expect(value, albums);
              verifyZeroInteractions(logger);
            },
            failure: (failure) => throw failure,
          );
        },
      );

      test(
        'should return result with failure when getting user albums fails',
        () async {
          when(
            () => dataSource.getUserAlbums(userId: userId1.value),
          ).thenThrow('Failure');

          final result = await repository.getUserAlbums(userId1);

          result.when(
            (value) => throw value,
            failure: (failure) {
              verify(
                () => logger.e(
                  'Getting albums for user ${userId1.value} has failed!',
                  'Failure',
                  any(),
                ),
              ).called(1);
              verifyNoMoreInteractions(logger);
            },
          );
        },
      );
    },
  );
}
