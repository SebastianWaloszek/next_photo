// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i5;
import 'package:shared_preferences/shared_preferences.dart' as _i12;

import '../features/albums/data/repositories/album_repository_impl.dart'
    as _i18;
import '../features/albums/data/repositories/photo_repository_impl.dart'
    as _i29;
import '../features/albums/data/sources/album_data_source.dart' as _i3;
import '../features/albums/data/sources/album_rest_data_source.dart' as _i4;
import '../features/albums/data/sources/photo_data_source.dart' as _i6;
import '../features/albums/data/sources/photo_rest_data_source.dart' as _i7;
import '../features/albums/data/storages/photo_like_data_storage.dart' as _i26;
import '../features/albums/data/storages/photo_like_data_storage_impl.dart'
    as _i27;
import '../features/albums/domain/repositories/album_repository.dart' as _i17;
import '../features/albums/domain/repositories/photo_repository.dart' as _i28;
import '../features/albums/domain/use_cases/get_album_photos.dart' as _i36;
import '../features/albums/domain/use_cases/get_all_albums.dart' as _i19;
import '../features/albums/domain/use_cases/get_user_albums.dart' as _i24;
import '../features/albums/domain/use_cases/update_photo_like.dart' as _i32;
import '../features/albums/presentation/cubits/albums/albums_cubit.dart'
    as _i35;
import '../features/albums/presentation/cubits/photos/photos_cubit.dart'
    as _i37;
import '../features/posts/data/repositories/post_repository_impl.dart' as _i11;
import '../features/posts/data/sources/post_data_source.dart' as _i8;
import '../features/posts/data/sources/post_rest_data_source.dart' as _i9;
import '../features/posts/domain/repositories/post_repository.dart' as _i10;
import '../features/posts/domain/use_cases/get_all_posts.dart' as _i20;
import '../features/posts/domain/use_cases/get_post.dart' as _i22;
import '../features/posts/domain/use_cases/get_user_posts.dart' as _i25;
import '../features/posts/presentation/cubits/post/post_cubit.dart' as _i30;
import '../features/posts/presentation/cubits/posts/posts_cubit.dart' as _i31;
import '../features/users/data/repositories/user_repository_impl.dart' as _i16;
import '../features/users/data/sources/user_data_source.dart' as _i13;
import '../features/users/data/sources/user_rest_data_source.dart' as _i14;
import '../features/users/domain/repositories/user_repository.dart' as _i15;
import '../features/users/domain/use_cases/get_all_users.dart' as _i21;
import '../features/users/domain/use_cases/get_user.dart' as _i23;
import '../features/users/presentation/cubits/user/user_cubit.dart' as _i33;
import '../features/users/presentation/cubits/users/users_cubit.dart' as _i34;
import 'injector_module.dart' as _i38; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// an extension to register the provided dependencies inside of [GetIt]
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of provided dependencies inside of [GetIt]
  Future<_i1.GetIt> init(
      {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
    final gh = _i2.GetItHelper(this, environment, environmentFilter);
    final injectorModule = _$InjectorModule();
    gh.lazySingleton<_i3.AlbumDataSource>(() => _i4.AlbumRestDataSource());
    gh.lazySingleton<_i5.Logger>(() => injectorModule.logger);
    gh.lazySingleton<_i6.PhotoDataSource>(() => _i7.PhotoRestDataSource());
    gh.lazySingleton<_i8.PostDataSource>(() => _i9.PostRestDataSource());
    gh.lazySingleton<_i10.PostRepository>(() => _i11.PostRepositoryImpl(
        logger: get<_i5.Logger>(), dataSource: get<_i8.PostDataSource>()));
    await gh.factoryAsync<_i12.SharedPreferences>(() => injectorModule.prefs,
        preResolve: true);
    gh.lazySingleton<_i13.UserDataSource>(() => _i14.UserRestDataSource());
    gh.lazySingleton<_i15.UserRepository>(() => _i16.UserRepositoryImpl(
        logger: get<_i5.Logger>(), dataSource: get<_i13.UserDataSource>()));
    gh.lazySingleton<_i17.AlbumRepository>(() => _i18.AlbumRepositoryImpl(
        logger: get<_i5.Logger>(), dataSource: get<_i3.AlbumDataSource>()));
    gh.lazySingleton<_i19.GetAllAlbums>(
        () => _i19.GetAllAlbums(repository: get<_i17.AlbumRepository>()));
    gh.lazySingleton<_i20.GetAllPosts>(
        () => _i20.GetAllPosts(repository: get<_i10.PostRepository>()));
    gh.lazySingleton<_i21.GetAllUsers>(
        () => _i21.GetAllUsers(repository: get<_i15.UserRepository>()));
    gh.lazySingleton<_i22.GetPost>(
        () => _i22.GetPost(repository: get<_i10.PostRepository>()));
    gh.lazySingleton<_i23.GetUser>(
        () => _i23.GetUser(repository: get<_i15.UserRepository>()));
    gh.lazySingleton<_i24.GetUserAlbums>(
        () => _i24.GetUserAlbums(repository: get<_i17.AlbumRepository>()));
    gh.lazySingleton<_i25.GetUserPosts>(
        () => _i25.GetUserPosts(repository: get<_i10.PostRepository>()));
    gh.lazySingleton<_i26.PhotoLikeDataStorage>(() =>
        _i27.PhotoLikeDataStorageImpl(
            sharedPreferences: get<_i12.SharedPreferences>()));
    gh.lazySingleton<_i28.PhotoRepository>(() => _i29.PhotoRepositoryImpl(
        logger: get<_i5.Logger>(),
        dataSource: get<_i6.PhotoDataSource>(),
        likeDataStorage: get<_i26.PhotoLikeDataStorage>()));
    gh.factory<_i30.PostCubit>(
        () => _i30.PostCubit(getPost: get<_i22.GetPost>()));
    gh.factory<_i31.PostsCubit>(() => _i31.PostsCubit(
        getAllPosts: get<_i20.GetAllPosts>(),
        getUserPosts: get<_i25.GetUserPosts>()));
    gh.lazySingleton<_i32.UpdatePhotoLike>(
        () => _i32.UpdatePhotoLike(repository: get<_i28.PhotoRepository>()));
    gh.factory<_i33.UserCubit>(
        () => _i33.UserCubit(getUser: get<_i23.GetUser>()));
    gh.factory<_i34.UsersCubit>(
        () => _i34.UsersCubit(getAllUsers: get<_i21.GetAllUsers>()));
    gh.factory<_i35.AlbumsCubit>(() => _i35.AlbumsCubit(
        getAllAlbums: get<_i19.GetAllAlbums>(),
        getUserAlbums: get<_i24.GetUserAlbums>()));
    gh.lazySingleton<_i36.GetAlbumPhotos>(
        () => _i36.GetAlbumPhotos(repository: get<_i28.PhotoRepository>()));
    gh.factory<_i37.PhotosCubit>(
        () => _i37.PhotosCubit(getAlbumPhotos: get<_i36.GetAlbumPhotos>()));
    return this;
  }
}

class _$InjectorModule extends _i38.InjectorModule {}
