import 'package:next_blog/src/features/albums/domain/entities/album.dart';
import 'package:next_blog/src/features/albums/domain/entities/photo.dart';
import 'package:next_blog/src/features/users/domain/entities/user.dart';

const albumId1 = AlbumId(1);

const albumId2 = AlbumId(2);

const album1 = Album(
  id: albumId1,
  userId: UserId(1),
  title: 'quidem molestiae enim',
);

const album2 = Album(
  id: albumId2,
  userId: UserId(1),
  title: 'sunt qui excepturi placeat culpa',
);

final albums = [album1, album2];

const photoId1 = PhotoId(1);

const photoId2 = PhotoId(2);

const photo1 = Photo(
  id: PhotoId(1),
  albumId: AlbumId(1),
  url: 'https://via.placeholder.com/600/92c952',
  title: 'accusamus beatae ad facilis cum similique qui sunt',
  thumbnailUrl: 'https://via.placeholder.com/150/92c952',
);

const photo2 = Photo(
  id: PhotoId(2),
  albumId: AlbumId(1),
  url: 'https://via.placeholder.com/600/771796',
  title: 'reprehenderit est deserunt velit ipsam',
  thumbnailUrl: 'https://via.placeholder.com/150/771796',
  isLiked: true,
);

final photos = [photo1, photo2];
