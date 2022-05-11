import 'package:next_blog/src/features/users/domain/entities/user.dart';

const userId1 = UserId(1);

const userId2 = UserId(2);

const user1 = User(
  id: userId1,
  name: 'Leanne Graham',
  username: 'Bret',
  email: 'sincere@april.biz',
);

const user2 = User(
  id: userId2,
  name: 'Ervin Howell',
  username: 'Antonette',
  email: 'shanna@melissa.tv',
);

final users = [user1, user2];
