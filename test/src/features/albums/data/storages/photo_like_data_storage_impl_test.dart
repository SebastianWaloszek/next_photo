import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:next_photo/src/features/albums/data/storages/photo_like_data_storage.dart';
import 'package:next_photo/src/features/albums/data/storages/photo_like_data_storage_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../util/mock_classes.dart';

void main() {
  late SharedPreferences sharedPreferences;
  late PhotoLikeDataStorage dataStorage;

  setUp(() {
    sharedPreferences = SharedPreferencesMock();

    dataStorage = PhotoLikeDataStorageImpl(
      sharedPreferences: sharedPreferences,
    );
  });

  group(
    '$PhotoLikeDataStorageImpl',
    () {
      test(
        'should set photo like successfully',
        () {
          when(
            () => sharedPreferences.getStringList('likedPhotosIds'),
          ).thenAnswer((_) => ['1']);
          when(
            () => sharedPreferences.setStringList(
              'likedPhotosIds',
              ['1', '2'],
            ),
          ).thenAnswer((_) async => true);

          dataStorage.setPhotoLike(
            photoId: '2',
            like: true,
          );

          verify(
            () => sharedPreferences.setStringList(
              'likedPhotosIds',
              ['1', '2'],
            ),
          ).called(1);
          verify(
            () => sharedPreferences.getStringList('likedPhotosIds'),
          ).called(1);
          verifyNoMoreInteractions(sharedPreferences);
        },
      );

      test(
        'should set photo no like successfully',
        () {
          when(
            () => sharedPreferences.getStringList('likedPhotosIds'),
          ).thenAnswer((_) => ['1', '2']);
          when(
            () => sharedPreferences.setStringList(
              'likedPhotosIds',
              ['1'],
            ),
          ).thenAnswer((_) async => true);

          dataStorage.setPhotoLike(
            photoId: '2',
            like: false,
          );

          verify(
            () => sharedPreferences.setStringList(
              'likedPhotosIds',
              ['1'],
            ),
          ).called(1);
          verify(
            () => sharedPreferences.getStringList('likedPhotosIds'),
          ).called(1);
          verifyNoMoreInteractions(sharedPreferences);
        },
      );

      test(
        'should throw exception when getting stored photo like fails',
        () {
          when(
            () => sharedPreferences.getStringList('likedPhotosIds'),
          ).thenAnswer((_) => ['1', '2']);
          when(
            () => sharedPreferences.setStringList(
              'likedPhotosIds',
              ['1'],
            ),
          ).thenAnswer((_) async => false);

          expect(
            () => dataStorage.setPhotoLike(
              photoId: '2',
              like: false,
            ),
            throwsA(isA<Exception>()),
          );

          verify(
            () => sharedPreferences.setStringList(
              'likedPhotosIds',
              ['1'],
            ),
          ).called(1);
          verify(
            () => sharedPreferences.getStringList('likedPhotosIds'),
          ).called(1);
          verifyNoMoreInteractions(sharedPreferences);
        },
      );

      test(
        'should get stored photo like successfully',
        () async {
          when(
            () => sharedPreferences.getStringList('likedPhotosIds'),
          ).thenAnswer((_) => ['1', '2']);

          final result = await dataStorage.getPhotoLike(
            photoId: '1',
          );

          expect(result, true);
          verify(
            () => sharedPreferences.getStringList('likedPhotosIds'),
          ).called(1);
          verifyNoMoreInteractions(sharedPreferences);
        },
      );

      test(
        'should get no stored photo like successfully',
        () async {
          when(
            () => sharedPreferences.getStringList('likedPhotosIds'),
          ).thenAnswer((_) => ['1', '2']);

          final result = await dataStorage.getPhotoLike(
            photoId: '3',
          );

          expect(result, false);
          verify(
            () => sharedPreferences.getStringList('likedPhotosIds'),
          ).called(1);
          verifyNoMoreInteractions(sharedPreferences);
        },
      );

      test(
        'should throw exception when getting stored photo like throws',
        () {
          when(
            () => sharedPreferences.getStringList('likedPhotosIds'),
          ).thenThrow(Exception('Failure'));

          expect(
            () => dataStorage.getPhotoLike(
              photoId: '1',
            ),
            throwsA(isA<Exception>()),
          );

          verify(
            () => sharedPreferences.getStringList('likedPhotosIds'),
          ).called(1);
          verifyNoMoreInteractions(sharedPreferences);
        },
      );
    },
  );
}
