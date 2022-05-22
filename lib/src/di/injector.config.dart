// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i5;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import '../common/presentation/cubits/bottom_navigation_cubit.dart' as _i3;
import '../features/albums/data/repositories/album_repository_impl.dart'
    as _i14;
import '../features/albums/data/repositories/photo_repository_impl.dart'
    as _i25;
import '../features/albums/data/sources/album/album_data_source.dart' as _i11;
import '../features/albums/data/sources/album/album_rest_data_source.dart'
    as _i12;
import '../features/albums/data/sources/photo/photo_data_source.dart' as _i20;
import '../features/albums/data/sources/photo/photo_rest_data_source.dart'
    as _i21;
import '../features/albums/data/storages/photo_like_data_storage.dart' as _i22;
import '../features/albums/data/storages/photo_like_data_storage_impl.dart'
    as _i23;
import '../features/albums/domain/repositories/album_repository.dart' as _i13;
import '../features/albums/domain/repositories/photo_repository.dart' as _i24;
import '../features/albums/domain/use_cases/get_album.dart' as _i15;
import '../features/albums/domain/use_cases/get_album_photos.dart' as _i31;
import '../features/albums/domain/use_cases/get_all_albums.dart' as _i16;
import '../features/albums/domain/use_cases/get_all_photos.dart' as _i32;
import '../features/albums/domain/use_cases/get_photo.dart' as _i33;
import '../features/albums/domain/use_cases/get_user_albums.dart' as _i19;
import '../features/albums/domain/use_cases/set_photo_like.dart' as _i26;
import '../features/albums/presentation/cubits/album/album_cubit.dart' as _i29;
import '../features/albums/presentation/cubits/albums/albums_cubit.dart'
    as _i30;
import '../features/albums/presentation/cubits/photo/photo_cubit.dart' as _i34;
import '../features/albums/presentation/cubits/photo_like/photo_like_cubit.dart'
    as _i35;
import '../features/albums/presentation/cubits/photos/photos_cubit.dart'
    as _i36;
import '../features/users/data/repositories/user_repository_impl.dart' as _i10;
import '../features/users/data/sources/user_data_source.dart' as _i7;
import '../features/users/data/sources/user_rest_data_source.dart' as _i8;
import '../features/users/domain/repositories/user_repository.dart' as _i9;
import '../features/users/domain/use_cases/get_all_users.dart' as _i17;
import '../features/users/domain/use_cases/get_user.dart' as _i18;
import '../features/users/presentation/cubits/user/user_cubit.dart' as _i27;
import '../features/users/presentation/cubits/users/users_cubit.dart' as _i28;
import 'injector_module.dart' as _i37; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// an extension to register the provided dependencies inside of [GetIt]
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of provided dependencies inside of [GetIt]
  Future<_i1.GetIt> init(
      {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
    final gh = _i2.GetItHelper(this, environment, environmentFilter);
    final injectorModule = _$InjectorModule();
    gh.lazySingleton<_i3.BottomNavigationCubit>(
        () => _i3.BottomNavigationCubit());
    gh.lazySingleton<_i4.Dio>(() => injectorModule.appHttpClient);
    gh.lazySingleton<_i5.Logger>(() => injectorModule.logger);
    await gh.factoryAsync<_i6.SharedPreferences>(() => injectorModule.prefs,
        preResolve: true);
    gh.factory<String>(() => injectorModule.baseUrl, instanceName: 'baseUrl');
    gh.lazySingleton<_i7.UserDataSource>(() => _i8.UserRestDataSource(
        get<_i4.Dio>(),
        baseUrl: get<String>(instanceName: 'baseUrl')));
    gh.lazySingleton<_i9.UserRepository>(() => _i10.UserRepositoryImpl(
        logger: get<_i5.Logger>(), dataSource: get<_i7.UserDataSource>()));
    gh.lazySingleton<_i11.AlbumDataSource>(() => _i12.AlbumRestDataSource(
        get<_i4.Dio>(),
        baseUrl: get<String>(instanceName: 'baseUrl')));
    gh.lazySingleton<_i13.AlbumRepository>(() => _i14.AlbumRepositoryImpl(
        logger: get<_i5.Logger>(), dataSource: get<_i11.AlbumDataSource>()));
    gh.lazySingleton<_i15.GetAlbum>(
        () => _i15.GetAlbum(repository: get<_i13.AlbumRepository>()));
    gh.lazySingleton<_i16.GetAllAlbums>(
        () => _i16.GetAllAlbums(repository: get<_i13.AlbumRepository>()));
    gh.lazySingleton<_i17.GetAllUsers>(
        () => _i17.GetAllUsers(repository: get<_i9.UserRepository>()));
    gh.lazySingleton<_i18.GetUser>(
        () => _i18.GetUser(repository: get<_i9.UserRepository>()));
    gh.lazySingleton<_i19.GetUserAlbums>(
        () => _i19.GetUserAlbums(repository: get<_i13.AlbumRepository>()));
    gh.lazySingleton<_i20.PhotoDataSource>(() => _i21.PhotoRestDataSource(
        get<_i4.Dio>(),
        baseUrl: get<String>(instanceName: 'baseUrl')));
    gh.lazySingleton<_i22.PhotoLikeDataStorage>(() =>
        _i23.PhotoLikeDataStorageImpl(
            sharedPreferences: get<_i6.SharedPreferences>()));
    gh.lazySingleton<_i24.PhotoRepository>(() => _i25.PhotoRepositoryImpl(
        logger: get<_i5.Logger>(),
        dataSource: get<_i20.PhotoDataSource>(),
        likeDataStorage: get<_i22.PhotoLikeDataStorage>()));
    gh.lazySingleton<_i26.SetPhotoLike>(
        () => _i26.SetPhotoLike(repository: get<_i24.PhotoRepository>()));
    gh.factory<_i27.UserCubit>(
        () => _i27.UserCubit(getUser: get<_i18.GetUser>()));
    gh.factory<_i28.UsersCubit>(
        () => _i28.UsersCubit(getAllUsers: get<_i17.GetAllUsers>()));
    gh.factory<_i29.AlbumCubit>(
        () => _i29.AlbumCubit(getAlbum: get<_i15.GetAlbum>()));
    gh.factory<_i30.AlbumsCubit>(() => _i30.AlbumsCubit(
        getAllAlbums: get<_i16.GetAllAlbums>(),
        getUserAlbums: get<_i19.GetUserAlbums>()));
    gh.lazySingleton<_i31.GetAlbumPhotos>(
        () => _i31.GetAlbumPhotos(repository: get<_i24.PhotoRepository>()));
    gh.lazySingleton<_i32.GetAllPhotos>(
        () => _i32.GetAllPhotos(repository: get<_i24.PhotoRepository>()));
    gh.lazySingleton<_i33.GetPhoto>(
        () => _i33.GetPhoto(repository: get<_i24.PhotoRepository>()));
    gh.factory<_i34.PhotoCubit>(
        () => _i34.PhotoCubit(getPhoto: get<_i33.GetPhoto>()));
    gh.factory<_i35.PhotoLikeCubit>(
        () => _i35.PhotoLikeCubit(setPhotoLike: get<_i26.SetPhotoLike>()));
    gh.factory<_i36.PhotosCubit>(() => _i36.PhotosCubit(
        getAlbumPhotos: get<_i31.GetAlbumPhotos>(),
        getAllPhotos: get<_i32.GetAllPhotos>()));
    return this;
  }
}

class _$InjectorModule extends _i37.InjectorModule {}
