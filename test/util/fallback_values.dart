// ignore_for_file: avoid_implementing_value_types

import 'package:mocktail/mocktail.dart';
import 'package:next_blog/src/features/users/domain/use_cases/get_user.dart';

void registerAllFallbackValues() {
  registerFallbackValue(_GetUserParamsFake());
}

class _GetUserParamsFake extends Fake implements GetUserParams {}
