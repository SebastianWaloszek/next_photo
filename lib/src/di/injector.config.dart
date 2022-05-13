// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i5;
import 'package:shared_preferences/shared_preferences.dart' as _i8;

import '../features/albums/data/repositories/album_repository_impl.dart'
    as _i14;
import '../features/albums/data/repositories/photo_repository_impl.dart'
    as _i23;
import '../features/albums/data/sources/album_data_source.dart' as _i3;
import '../features/albums/data/sources/album_rest_data_source.dart' as _i4;
import '../features/albums/data/sources/photo_data_source.dart' as _i6;
import '../features/albums/data/sources/photo_rest_data_source.dart' as _i7;
import '../features/albums/data/storages/photo_like_data_storage.dart' as _i20;
import '../features/albums/data/storages/photo_like_data_storage_impl.dart'
    as _i21;
import '../features/albums/domain/repositories/album_repository.dart' as _i13;
import '../features/albums/domain/repositories/photo_repository.dart' as _i22;
import '../features/albums/domain/use_cases/get_album.dart' as _i15;
import '../features/albums/domain/use_cases/get_album_photos.dart' as _i29;
import '../features/albums/domain/use_cases/get_all_albums.dart' as _i16;
import '../features/albums/domain/use_cases/get_all_photos.dart' as _i30;
import '../features/albums/domain/use_cases/get_photo.dart' as _i31;
import '../features/albums/domain/use_cases/get_user_albums.dart' as _i19;
import '../features/albums/domain/use_cases/set_photo_like.dart' as _i24;
import '../features/albums/presentation/cubits/album/album_cubit.dart' as _i27;
import '../features/albums/presentation/cubits/albums/albums_cubit.dart'
    as _i28;
import '../features/albums/presentation/cubits/photo/photo_cubit.dart' as _i32;
import '../features/albums/presentation/cubits/photos/photos_cubit.dart'
    as _i33;
import '../features/users/data/repositories/user_repository_impl.dart' as _i12;
import '../features/users/data/sources/user_data_source.dart' as _i9;
import '../features/users/data/sources/user_rest_data_source.dart' as _i10;
import '../features/users/domain/repositories/user_repository.dart' as _i11;
import '../features/users/domain/use_cases/get_all_users.dart' as _i17;
import '../features/users/domain/use_cases/get_user.dart' as _i18;
import '../features/users/presentation/cubits/user/user_cubit.dart' as _i25;
import '../features/users/presentation/cubits/users/users_cubit.dart' as _i26;
import 'injector_module.dart' as _i34; // ignore_for_file: unnecessary_lambdas

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
    await gh.factoryAsync<_i8.SharedPreferences>(() => injectorModule.prefs,
        preResolve: true);
    gh.lazySingleton<_i9.UserDataSource>(() => _i10.UserRestDataSource());
    gh.lazySingleton<_i11.UserRepository>(() => _i12.UserRepositoryImpl(
        logger: get<_i5.Logger>(), dataSource: get<_i9.UserDataSource>()));
    gh.lazySingleton<_i13.AlbumRepository>(() => _i14.AlbumRepositoryImpl(
        logger: get<_i5.Logger>(), dataSource: get<_i3.AlbumDataSource>()));
    gh.lazySingleton<_i15.GetAlbum>(
        () => _i15.GetAlbum(repository: get<_i13.AlbumRepository>()));
    gh.lazySingleton<_i16.GetAllAlbums>(
        () => _i16.GetAllAlbums(repository: get<_i13.AlbumRepository>()));
    gh.lazySingleton<_i17.GetAllUsers>(
        () => _i17.GetAllUsers(repository: get<_i11.UserRepository>()));
    gh.lazySingleton<_i18.GetUser>(
        () => _i18.GetUser(repository: get<_i11.UserRepository>()));
    gh.lazySingleton<_i19.GetUserAlbums>(
        () => _i19.GetUserAlbums(repository: get<_i13.AlbumRepository>()));
    gh.lazySingleton<_i20.PhotoLikeDataStorage>(() =>
        _i21.PhotoLikeDataStorageImpl(
            sharedPreferences: get<_i8.SharedPreferences>()));
    gh.lazySingleton<_i22.PhotoRepository>(() => _i23.PhotoRepositoryImpl(
        logger: get<_i5.Logger>(),
        dataSource: get<_i6.PhotoDataSource>(),
        likeDataStorage: get<_i20.PhotoLikeDataStorage>()));
    gh.lazySingleton<_i24.SetPhotoLike>(
        () => _i24.SetPhotoLike(repository: get<_i22.PhotoRepository>()));
    gh.factory<_i25.UserCubit>(
        () => _i25.UserCubit(getUser: get<_i18.GetUser>()));
    gh.factory<_i26.UsersCubit>(
        () => _i26.UsersCubit(getAllUsers: get<_i17.GetAllUsers>()));
    gh.factory<_i27.AlbumCubit>(
        () => _i27.AlbumCubit(getAlbum: get<_i15.GetAlbum>()));
    gh.factory<_i28.AlbumsCubit>(() => _i28.AlbumsCubit(
        getAllAlbums: get<_i16.GetAllAlbums>(),
        getUserAlbums: get<_i19.GetUserAlbums>()));
    gh.lazySingleton<_i29.GetAlbumPhotos>(
        () => _i29.GetAlbumPhotos(repository: get<_i22.PhotoRepository>()));
    gh.lazySingleton<_i30.GetAllPhotos>(
        () => _i30.GetAllPhotos(repository: get<_i22.PhotoRepository>()));
    gh.lazySingleton<_i31.GetPhoto>(
        () => _i31.GetPhoto(repository: get<_i22.PhotoRepository>()));
    gh.factory<_i32.PhotoCubit>(
        () => _i32.PhotoCubit(getPhoto: get<_i31.GetPhoto>()));
    gh.factory<_i33.PhotosCubit>(() => _i33.PhotosCubit(
        getAlbumPhotos: get<_i29.GetAlbumPhotos>(),
        getAllPhotos: get<_i30.GetAllPhotos>()));
    return this;
  }
}

class _$InjectorModule extends _i34.InjectorModule {}
