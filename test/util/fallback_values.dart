// ignore_for_file: avoid_implementing_value_types

import 'package:mocktail/mocktail.dart';
import 'package:next_blog/src/features/albums/domain/use_cases/get_user_albums.dart';
import 'package:next_blog/src/features/albums/domain/use_cases/set_photo_like.dart';
import 'package:next_blog/src/features/users/domain/use_cases/get_user.dart';

void registerAllFallbackValues() {
  registerFallbackValue(_GetUserParamsFake());
  registerFallbackValue(_GetUserAlbumsParamsFake());
  registerFallbackValue(_SetPhotoLikeParamsFake());
}

class _GetUserParamsFake extends Fake implements GetUserParams {}

class _GetUserAlbumsParamsFake extends Fake implements GetUserAlbumsParams {}

class _SetPhotoLikeParamsFake extends Fake implements SetPhotoLikeParams {}
