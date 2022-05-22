import 'package:next_photo/src/features/albums/domain/entities/album.dart';
import 'package:next_photo/src/features/albums/domain/entities/photo.dart';
import 'package:next_photo/src/features/users/domain/entities/user.dart';

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
  url: 'https://picsum.photos/id/1/1200/1200',
  thumbnailUrl: 'https://picsum.photos/id/1/600/600',
  title: 'accusamus beatae ad facilis cum similique qui sunt',
);

const photo2 = Photo(
  id: PhotoId(2),
  albumId: AlbumId(1),
  url: 'https://picsum.photos/id/2/1200/1200',
  thumbnailUrl: 'https://picsum.photos/id/2/600/600',
  title: 'reprehenderit est deserunt velit ipsam',
  isLiked: true,
);

final photos = [photo1, photo2];
