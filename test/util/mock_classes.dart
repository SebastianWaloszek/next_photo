import 'package:logger/logger.dart';
import 'package:mocktail/mocktail.dart';
import 'package:next_blog/src/features/albums/data/sources/album/album_data_source.dart';
import 'package:next_blog/src/features/albums/data/sources/photo/photo_data_source.dart';
import 'package:next_blog/src/features/albums/data/storages/photo_like_data_storage.dart';
import 'package:next_blog/src/features/albums/domain/repositories/album_repository.dart';
import 'package:next_blog/src/features/albums/domain/repositories/photo_repository.dart';
import 'package:next_blog/src/features/albums/domain/use_cases/get_album.dart';
import 'package:next_blog/src/features/albums/domain/use_cases/get_album_photos.dart';
import 'package:next_blog/src/features/albums/domain/use_cases/get_all_albums.dart';
import 'package:next_blog/src/features/albums/domain/use_cases/get_all_photos.dart';
import 'package:next_blog/src/features/albums/domain/use_cases/get_photo.dart';
import 'package:next_blog/src/features/albums/domain/use_cases/get_user_albums.dart';
import 'package:next_blog/src/features/albums/domain/use_cases/set_photo_like.dart';
import 'package:next_blog/src/features/users/data/sources/user_data_source.dart';
import 'package:next_blog/src/features/users/domain/repositories/user_repository.dart';
import 'package:next_blog/src/features/users/domain/use_cases/get_all_users.dart';
import 'package:next_blog/src/features/users/domain/use_cases/get_user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoggerMock extends Mock implements Logger {}

class SharedPreferencesMock extends Mock implements SharedPreferences {}

class UserDataSourceMock extends Mock implements UserDataSource {}

class UserRepositoryMock extends Mock implements UserRepository {}

class GetUserMock extends Mock implements GetUser {}

class GetUsersMock extends Mock implements GetAllUsers {}

class AlbumDataSourceMock extends Mock implements AlbumDataSource {}

class AlbumRepositoryMock extends Mock implements AlbumRepository {}

class GetAlbumPhotosMock extends Mock implements GetAlbumPhotos {}

class GetAllAlbumsMock extends Mock implements GetAllAlbums {}

class GetAlbumMock extends Mock implements GetAlbum {}

class GetUserAlbumsMock extends Mock implements GetUserAlbums {}

class PhotoDataSourceMock extends Mock implements PhotoDataSource {}

class PhotoLikeDataStorageMock extends Mock implements PhotoLikeDataStorage {}

class PhotoRepositoryMock extends Mock implements PhotoRepository {}

class GetAllPhotosMock extends Mock implements GetAllPhotos {}

class GetPhotoMock extends Mock implements GetPhoto {}

class SetPhotoLikeMock extends Mock implements SetPhotoLike {}
