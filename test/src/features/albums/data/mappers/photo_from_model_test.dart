import 'package:flutter_test/flutter_test.dart';
import 'package:next_photo/src/features/albums/data/mappers/photo_from_model.dart';
import 'package:next_photo/src/features/albums/data/models/photo_model.dart';
import 'package:next_photo/src/features/albums/domain/entities/album.dart';
import 'package:next_photo/src/features/albums/domain/entities/photo.dart';

void main() {
  group(
    '$PhotoFromModel',
    () {
      test(
        'should map photo model to entity',
        () {
          expect(
            PhotoFromModel()(_photoModel),
            _photo,
          );
        },
      );
    },
  );
}

const _photoModel = PhotoModel(
  id: 1,
  albumId: 1,
  url: 'url',
  title: 'title',
  thumbnailUrl: 'thumbnailUrl',
);

const _photo = Photo(
  id: PhotoId(1),
  albumId: AlbumId(1),
  title: 'title',
  url: 'url',
  thumbnailUrl: 'thumbnailUrl',
  isLiked: false,
);
