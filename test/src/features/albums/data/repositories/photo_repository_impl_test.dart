import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';
import 'package:mocktail/mocktail.dart';
import 'package:next_blog/src/features/albums/data/repositories/photo_repository_impl.dart';
import 'package:next_blog/src/features/albums/data/sources/photo_data_source.dart';
import 'package:next_blog/src/features/albums/data/storages/photo_like_data_storage.dart';
import 'package:next_blog/src/features/albums/domain/repositories/photo_repository.dart';

import '../../../../../util/mock_classes.dart';
import '../../domain/albums_domain_test_data.dart';
import '../albums_data_test_data.dart';

void main() {
  late Logger logger;
  late PhotoDataSource dataSource;
  late PhotoLikeDataStorage likeDataStorage;

  late PhotoRepository repository;

  setUp(() {
    logger = LoggerMock();
    dataSource = PhotoDataSourceMock();
    likeDataStorage = PhotoLikeDataStorageMock();

    when(
      () => likeDataStorage.getPhotoLike(photoId: '${photoId1.value}'),
    ).thenAnswer(
      (_) async => false,
    );
    when(
      () => likeDataStorage.getPhotoLike(photoId: '${photoId2.value}'),
    ).thenAnswer(
      (_) async => true,
    );

    repository = PhotoRepositoryImpl(
      logger: logger,
      dataSource: dataSource,
      likeDataStorage: likeDataStorage,
    );
  });

  group(
    '$PhotoRepositoryImpl',
    () {
      test(
        'should return result with photos when getting all photos succeeds',
        () async {
          when(() => dataSource.getAllPhotos()).thenAnswer(
            (_) async => photosModels,
          );

          final result = await repository.getAllPhotos();

          result.when(
            (value) {
              expect(value, photos);
              verifyZeroInteractions(logger);
            },
            failure: (failure) => throw failure,
          );
        },
      );

      test(
        'should return result with liked photos when getting all photos succeeds',
        () async {
          when(() => dataSource.getAllPhotos()).thenAnswer(
            (_) async => photosModels,
          );

          final result = await repository.getAllPhotos();

          result.when(
            (value) {
              expect(value, photos);
              verifyZeroInteractions(logger);
            },
            failure: (failure) => throw failure,
          );
        },
      );

      test(
        'should return result with photos when getting album photos succeeds',
        () async {
          when(
            () => dataSource.getAlbumPhotos(albumId: albumId1.value),
          ).thenAnswer(
            (_) async => photosModels,
          );

          final result = await repository.getAlbumPhotos(albumId1);

          result.when(
            (value) {
              expect(value, photos);
              verifyZeroInteractions(logger);
            },
            failure: (failure) => throw failure,
          );
        },
      );

      test(
        'should return result with failure when getting album photos fails',
        () async {
          when(
            () => dataSource.getAlbumPhotos(albumId: albumId1.value),
          ).thenThrow('Failure');

          final result = await repository.getAlbumPhotos(albumId1);

          result.when(
            (value) => throw value,
            failure: (failure) {
              verify(
                () => logger.e(
                  'Getting photos for album ${albumId1.value} has failed!',
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
        'should return success result for successful setting of photo like',
        () async {
          when(
            () => likeDataStorage.setPhotoLike(
              photoId: '$photoId1',
              like: true,
            ),
          ).thenAnswer(
            (_) async => photosModels,
          );

          final result = await repository.setPhotoLike(photoId1, like: true);

          result.when(
            (value) {
              verify(
                () => likeDataStorage.setPhotoLike(
                  photoId: '$photoId1',
                  like: true,
                ),
              ).called(1);
              verifyNoMoreInteractions(likeDataStorage);
              verifyZeroInteractions(logger);
            },
            failure: (failure) => throw failure,
          );
        },
      );

      test(
        'should return failure result for failed setting of photo like',
        () async {
          when(
            () => likeDataStorage.setPhotoLike(
              photoId: '$photoId1',
              like: true,
            ),
          ).thenThrow('Failure');

          final result = await repository.setPhotoLike(photoId1, like: true);

          result.when(
            (value) => throw Exception('Result should be not be successful'),
            failure: (failure) {
              verify(
                () => logger.e(
                  'Updating photo like for photo ${photoId1.value} with true has failed!',
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
