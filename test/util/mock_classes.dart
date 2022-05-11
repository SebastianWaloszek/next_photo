import 'package:logger/logger.dart';
import 'package:mocktail/mocktail.dart';
import 'package:next_blog/src/features/users/data/sources/user_data_source.dart';
import 'package:next_blog/src/features/users/domain/repositories/user_repository.dart';
import 'package:next_blog/src/features/users/domain/use_cases/get_all_users.dart';
import 'package:next_blog/src/features/users/domain/use_cases/get_user.dart';

class LoggerMock extends Mock implements Logger {}

class UserDataSourceMock extends Mock implements UserDataSource {}

class UserRepositoryMock extends Mock implements UserRepository {}

class GetUserMock extends Mock implements GetUser {}

class GetUsersMock extends Mock implements GetAllUsers {}
