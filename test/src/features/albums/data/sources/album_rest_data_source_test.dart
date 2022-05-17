import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:next_photo/src/common/data/http/app_http_client.dart';
import 'package:next_photo/src/features/albums/data/models/album_model.dart';
import 'package:next_photo/src/features/albums/data/sources/album/album_data_source.dart';
import 'package:next_photo/src/features/albums/data/sources/album/album_rest_data_source.dart';

import '../../../../../util/fallback_values.dart';
import '../../../../../util/fixtures/fixture_reader.dart';
import '../../../../../util/mock_classes.dart';

void main() {
  late AppHttpClient appHttpClient;
  late String url;

  late AlbumDataSource dataSource;

  setUpAll(() {
    registerAllFallbackValues();
  });

  setUp(() {
    url = 'baseUrl';
    appHttpClient = AppHttpClientMock();
    when(
      () => appHttpClient.options,
    ).thenReturn(BaseOptions());

    dataSource = AlbumRestDataSource(
      appHttpClient,
      baseUrl: url,
    );
  });

  group(
    '$AlbumRestDataSource',
    () {
      test(
        'should get all album models',
        () async {
          when(
            () => appHttpClient.fetch<List<dynamic>>(any()),
          ).thenAnswer(
            (_) async => Response(
              data: fixture<List<dynamic>>('albums/albums.json'),
              requestOptions: RequestOptions(path: url),
              statusCode: 200,
            ),
          );

          final albumModels = await dataSource.getAllAlbums();

          for (final albumModel in albumModels) {
            expect(albumModel, isA<AlbumModel>());
          }
          expect(albumModels.length, 100);
        },
      );

      test(
        'should get album model',
        () async {
          when(
            () => appHttpClient.fetch<Map<String, dynamic>>(any()),
          ).thenAnswer(
            (_) async => Response(
              data: fixture<Map<String, dynamic>>('albums/album_1.json'),
              requestOptions: RequestOptions(path: url),
              statusCode: 200,
            ),
          );

          final albumModel = await dataSource.getAlbum(albumId: 1);

          expect(
            albumModel,
            const AlbumModel(
              id: 1,
              userId: 1,
              title: "quidem molestiae enim",
            ),
          );
        },
      );

      test(
        'should get album models for album',
        () async {
          when(
            () => appHttpClient.fetch<List<dynamic>>(any()),
          ).thenAnswer(
            (_) async => Response(
              data: fixture<List<dynamic>>('albums/user_1_albums.json'),
              requestOptions: RequestOptions(path: url),
              statusCode: 200,
            ),
          );

          final albumModels = await dataSource.getUserAlbums(userId: 1);

          for (final albumModel in albumModels) {
            expect(albumModel.userId, 1);
          }
          expect(albumModels.length, 10);
        },
      );
    },
  );
}
