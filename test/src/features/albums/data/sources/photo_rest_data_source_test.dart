import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:next_blog/src/common/data/http/app_http_client.dart';
import 'package:next_blog/src/features/albums/data/models/photo_model.dart';
import 'package:next_blog/src/features/albums/data/sources/photo/photo_data_source.dart';
import 'package:next_blog/src/features/albums/data/sources/photo/photo_rest_data_source.dart';

import '../../../../../util/fallback_values.dart';
import '../../../../../util/fixtures/fixture_reader.dart';
import '../../../../../util/mock_classes.dart';

void main() {
  late AppHttpClient appHttpClient;
  late String url;

  late PhotoDataSource dataSource;

  setUpAll(() {
    registerAllFallbackValues();
  });

  setUp(() {
    url = 'baseUrl';
    appHttpClient = AppHttpClientMock();
    when(
      () => appHttpClient.options,
    ).thenReturn(BaseOptions());

    dataSource = PhotoRestDataSource(
      appHttpClient,
      baseUrl: url,
    );
  });

  group(
    '$PhotoRestDataSource',
    () {
      test(
        'should get all photo models',
        () async {
          when(
            () => appHttpClient.fetch<List<dynamic>>(any()),
          ).thenAnswer(
            (_) async => Response(
              data: fixture<List<dynamic>>('photos/photos.json'),
              requestOptions: RequestOptions(path: url),
              statusCode: 200,
            ),
          );

          final photoModels = await dataSource.getAllPhotos();

          for (final photoModel in photoModels) {
            expect(photoModel, isA<PhotoModel>());
          }
          expect(photoModels.length, 5000);
        },
      );

      test(
        'should get photo model',
        () async {
          when(
            () => appHttpClient.fetch<Map<String, dynamic>>(any()),
          ).thenAnswer(
            (_) async => Response(
              data: fixture<Map<String, dynamic>>('photos/photo_1.json'),
              requestOptions: RequestOptions(path: url),
              statusCode: 200,
            ),
          );

          final photoModel = await dataSource.getPhoto(photoId: 1);

          expect(
            photoModel,
            const PhotoModel(
              id: 1,
              albumId: 1,
              title: "accusamus beatae ad facilis cum similique qui sunt",
              url: "https://via.placeholder.com/600/92c952",
              thumbnailUrl: "https://via.placeholder.com/150/92c952",
            ),
          );
        },
      );

      test(
        'should get photo models for album',
        () async {
          when(
            () => appHttpClient.fetch<List<dynamic>>(any()),
          ).thenAnswer(
            (_) async => Response(
              data: fixture<List<dynamic>>('photos/album_1_photos.json'),
              requestOptions: RequestOptions(path: url),
              statusCode: 200,
            ),
          );

          final photoModels = await dataSource.getAlbumPhotos(albumId: 1);

          for (final photoModel in photoModels) {
            expect(photoModel.albumId, 1);
          }
          expect(photoModels.length, 50);
        },
      );
    },
  );
}
