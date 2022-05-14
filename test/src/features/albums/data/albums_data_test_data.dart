import 'package:next_blog/src/features/albums/data/models/album_model.dart';
import 'package:next_blog/src/features/albums/data/models/photo_model.dart';

const albumModel1 = AlbumModel(
  id: 1,
  userId: 1,
  title: 'quidem molestiae enim',
);

const albumModel2 = AlbumModel(
  id: 2,
  userId: 1,
  title: 'sunt qui excepturi placeat culpa',
);

final albumModels = [albumModel1, albumModel2];

const photoModel1 = PhotoModel(
  id: 1,
  albumId: 1,
  url: 'https://via.placeholder.com/600/92c952',
  title: 'accusamus beatae ad facilis cum similique qui sunt',
  thumbnailUrl: 'https://via.placeholder.com/150/92c952',
);

const photoModel2 = PhotoModel(
  id: 2,
  albumId: 1,
  url: 'https://via.placeholder.com/600/771796',
  title: 'reprehenderit est deserunt velit ipsam',
  thumbnailUrl: 'https://via.placeholder.com/150/771796',
);

final photoModels = [photoModel1, photoModel2];
