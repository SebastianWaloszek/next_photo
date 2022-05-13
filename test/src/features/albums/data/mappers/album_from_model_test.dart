import 'package:flutter_test/flutter_test.dart';
import 'package:next_blog/src/features/albums/data/mappers/album_from_model.dart';
import 'package:next_blog/src/features/albums/data/models/album_model.dart';
import 'package:next_blog/src/features/albums/domain/entities/album.dart';
import 'package:next_blog/src/features/users/domain/entities/user.dart';

void main() {
  group(
    '$AlbumFromModel',
    () {
      test(
        'should map album model to entity',
        () {
          expect(
            AlbumFromModel()(_albumModel),
            _album,
          );
        },
      );
    },
  );
}

const _albumModel = AlbumModel(
  id: 1,
  userId: 1,
  title: 'title',
);

const _album = Album(
  id: AlbumId(1),
  userId: UserId(1),
  title: 'title',
);
