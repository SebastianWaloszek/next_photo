import 'package:next_photo/src/base/data/mappers/mapper.dart';
import 'package:next_photo/src/features/albums/data/models/photo_model.dart';
import 'package:next_photo/src/features/albums/domain/entities/album.dart';
import 'package:next_photo/src/features/albums/domain/entities/photo.dart';

/// Mapper for creating an [Photo] entity from model.
class PhotoFromModel implements Mapper<PhotoModel, Photo> {
  @override
  Photo call(PhotoModel photoModel) {
    return Photo(
      id: PhotoId(photoModel.id),
      albumId: AlbumId(photoModel.albumId),
      title: photoModel.title ?? '',
      url: 'https://picsum.photos/id/${photoModel.id}/1200/1200',
      thumbnailUrl: 'https://picsum.photos/id/${photoModel.id}/600/600',
    );
  }
}
