import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:next_photo/src/features/users/data/models/user_model.dart';
import 'package:next_photo/src/features/users/data/sources/user_data_source.dart';

import 'package:retrofit/retrofit.dart';

part 'user_rest_data_source.g.dart';

/// REST implementation of the user data source.
@LazySingleton(as: UserDataSource)
@RestApi()
abstract class UserRestDataSource implements UserDataSource {
  /// Creates user REST data source.
  @factoryMethod
  factory UserRestDataSource(
    Dio dio, {
    @Named("baseUrl") String baseUrl,
  }) = _UserRestDataSource;

  @GET("/users")
  @override
  Future<List<UserModel>> getAllUsers();

  @GET("/users/{userId}")
  @override
  Future<UserModel> getUser({
    @Path("userId") required int userId,
  });
}
