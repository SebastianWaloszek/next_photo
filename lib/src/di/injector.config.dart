// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i3;

import '../features/albums/data/repositories/album_repository_impl.dart'
    as _i14;
import '../features/albums/data/repositories/photo_repository_impl.dart' as _i5;
import '../features/albums/data/sources/album_data_source.dart' as _i15;
import '../features/albums/data/sources/photo_data_source.dart' as _i6;
import '../features/albums/domain/repositories/album_repository.dart' as _i13;
import '../features/albums/domain/repositories/photo_repository.dart' as _i4;
import '../features/albums/domain/use_cases/get_album_photos.dart' as _i16;
import '../features/albums/domain/use_cases/get_all_albums.dart' as _i17;
import '../features/albums/domain/use_cases/get_user_albums.dart' as _i22;
import '../features/albums/presentation/cubits/albums/albums_cubit.dart'
    as _i29;
import '../features/albums/presentation/cubits/photos/photos_cubit.dart'
    as _i24;
import '../features/posts/data/repositories/post_repository_impl.dart' as _i8;
import '../features/posts/data/sources/post_data_source.dart' as _i9;
import '../features/posts/domain/repositories/post_repository.dart' as _i7;
import '../features/posts/domain/use_cases/get_all_posts.dart' as _i18;
import '../features/posts/domain/use_cases/get_post.dart' as _i20;
import '../features/posts/domain/use_cases/get_user_posts.dart' as _i23;
import '../features/posts/presentation/cubits/post/post_cubit.dart' as _i25;
import '../features/posts/presentation/cubits/posts/posts_cubit.dart' as _i26;
import '../features/users/data/repositories/user_repository_impl.dart' as _i11;
import '../features/users/data/sources/user_data_source.dart' as _i12;
import '../features/users/domain/repositories/user_repository.dart' as _i10;
import '../features/users/domain/use_cases/get_all_users.dart' as _i19;
import '../features/users/domain/use_cases/get_user.dart' as _i21;
import '../features/users/presentation/cubits/user/user_cubit.dart' as _i27;
import '../features/users/presentation/cubits/users/users_cubit.dart' as _i28;
import 'injector_module.dart' as _i30; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// an extension to register the provided dependencies inside of [GetIt]
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of provided dependencies inside of [GetIt]
  _i1.GetIt init(
      {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
    final gh = _i2.GetItHelper(this, environment, environmentFilter);
    final injectorModule = _$InjectorModule();
    gh.lazySingleton<_i3.Logger>(() => injectorModule.logger);
    gh.lazySingleton<_i4.PhotoRepository>(() => _i5.PhotoRepositoryImpl(
        logger: get<_i3.Logger>(), dataSource: get<_i6.PhotoDataSource>()));
    gh.lazySingleton<_i7.PostRepository>(() => _i8.PostRepositoryImpl(
        logger: get<_i3.Logger>(), dataSource: get<_i9.PostDataSource>()));
    gh.lazySingleton<_i10.UserRepository>(() => _i11.UserRepositoryImpl(
        logger: get<_i3.Logger>(), dataSource: get<_i12.UserDataSource>()));
    gh.lazySingleton<_i13.AlbumRepository>(() => _i14.AlbumRepositoryImpl(
        logger: get<_i3.Logger>(), dataSource: get<_i15.AlbumDataSource>()));
    gh.lazySingleton<_i16.GetAlbumPhotos>(
        () => _i16.GetAlbumPhotos(repository: get<_i4.PhotoRepository>()));
    gh.lazySingleton<_i17.GetAllAlbums>(
        () => _i17.GetAllAlbums(repository: get<_i13.AlbumRepository>()));
    gh.lazySingleton<_i18.GetAllPosts>(
        () => _i18.GetAllPosts(repository: get<_i7.PostRepository>()));
    gh.lazySingleton<_i19.GetAllUsers>(
        () => _i19.GetAllUsers(repository: get<_i10.UserRepository>()));
    gh.lazySingleton<_i20.GetPost>(
        () => _i20.GetPost(repository: get<_i7.PostRepository>()));
    gh.lazySingleton<_i21.GetUser>(
        () => _i21.GetUser(repository: get<_i10.UserRepository>()));
    gh.lazySingleton<_i22.GetUserAlbums>(
        () => _i22.GetUserAlbums(repository: get<_i13.AlbumRepository>()));
    gh.lazySingleton<_i23.GetUserPosts>(
        () => _i23.GetUserPosts(repository: get<_i7.PostRepository>()));
    gh.factory<_i24.PhotosCubit>(
        () => _i24.PhotosCubit(getAlbumPhotos: get<_i16.GetAlbumPhotos>()));
    gh.factory<_i25.PostCubit>(
        () => _i25.PostCubit(getPost: get<_i20.GetPost>()));
    gh.factory<_i26.PostsCubit>(() => _i26.PostsCubit(
        getAllPosts: get<_i18.GetAllPosts>(),
        getUserPosts: get<_i23.GetUserPosts>()));
    gh.factory<_i27.UserCubit>(
        () => _i27.UserCubit(getUser: get<_i21.GetUser>()));
    gh.factory<_i28.UsersCubit>(
        () => _i28.UsersCubit(getAllUsers: get<_i19.GetAllUsers>()));
    gh.factory<_i29.AlbumsCubit>(() => _i29.AlbumsCubit(
        getAllAlbums: get<_i17.GetAllAlbums>(),
        getUserAlbums: get<_i22.GetUserAlbums>()));
    return this;
  }
}

class _$InjectorModule extends _i30.InjectorModule {}
