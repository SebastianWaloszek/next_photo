import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:next_blog/src/common/data/http/app_http_client.dart';
import 'package:next_blog/src/features/users/data/models/user_model.dart';
import 'package:next_blog/src/features/users/data/sources/user_data_source.dart';
import 'package:next_blog/src/features/users/data/sources/user_rest_data_source.dart';

import '../../../../../util/fallback_values.dart';
import '../../../../../util/fixtures/fixture_reader.dart';
import '../../../../../util/mock_classes.dart';

void main() {
  late AppHttpClient appHttpClient;
  late String url;

  late UserDataSource dataSource;

  setUpAll(() {
    registerAllFallbackValues();
  });

  setUp(() {
    url = 'baseUrl';
    appHttpClient = AppHttpClientMock();
    when(
      () => appHttpClient.options,
    ).thenReturn(BaseOptions());

    dataSource = UserRestDataSource(
      appHttpClient,
      baseUrl: url,
    );
  });

  group(
    '$UserRestDataSource',
    () {
      test(
        'should get all user models',
        () async {
          when(
            () => appHttpClient.fetch<List<dynamic>>(any()),
          ).thenAnswer(
            (_) async => Response(
              data: fixture<List<dynamic>>('users/users.json'),
              requestOptions: RequestOptions(path: url),
              statusCode: 200,
            ),
          );

          final userModels = await dataSource.getAllUsers();

          for (final userModel in userModels) {
            expect(userModel, isA<UserModel>());
          }
          expect(userModels.length, 10);
        },
      );

      test(
        'should get user model',
        () async {
          when(
            () => appHttpClient.fetch<Map<String, dynamic>>(any()),
          ).thenAnswer(
            (_) async => Response(
              data: fixture<Map<String, dynamic>>('users/user_1.json'),
              requestOptions: RequestOptions(path: url),
              statusCode: 200,
            ),
          );

          final userModel = await dataSource.getUser(userId: 1);

          expect(
            userModel,
            const UserModel(
              id: 1,
              name: "Leanne Graham",
              username: "Bret",
              email: "Sincere@april.biz",
              address: AddressModel(
                street: "Kulas Light",
                suite: "Apt. 556",
                city: "Gwenborough",
                zipcode: "92998-3874",
                geo: GeoLocationModel(lat: "-37.3159", lng: "81.1496"),
              ),
              phone: "1-770-736-8031 x56442",
              website: "hildegard.org",
              company: CompanyModel(
                name: "Romaguera-Crona",
                catchPhrase: "Multi-layered client-server neural-net",
                bs: "harness real-time e-markets",
              ),
            ),
          );
        },
      );
    },
  );
}
