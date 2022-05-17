import 'package:next_photo/src/base/data/mappers/mapper.dart';
import 'package:next_photo/src/features/albums/data/models/album_model.dart';
import 'package:next_photo/src/features/albums/domain/entities/album.dart';
import 'package:next_photo/src/features/users/domain/entities/user.dart';

/// Mapper for creating an [Album] entity from model.
class AlbumFromModel implements Mapper<AlbumModel, Album> {
  @override
  Album call(AlbumModel albumModel) {
    return Album(
      id: AlbumId(albumModel.id),
      userId: UserId(albumModel.userId),
      title: albumModel.title ?? '',
    );
  }
}
