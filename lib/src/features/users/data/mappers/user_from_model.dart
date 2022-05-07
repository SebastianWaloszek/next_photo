import 'package:next_blog/src/base/data/mappers/mapper.dart';
import 'package:next_blog/src/features/users/data/mappers/address_from_model.dart';
import 'package:next_blog/src/features/users/data/mappers/company_from_model.dart';
import 'package:next_blog/src/features/users/data/models/user_model.dart';
import 'package:next_blog/src/features/users/domain/entities/user.dart';

/// Mapper for creating an [User] entity from model.
class UserMapper implements Mapper<UserModel, User> {
  @override
  User call(UserModel userModel) {
    return User(
      id: UserId(userModel.id),
      name: userModel.name,
      username: userModel.username,
      email: userModel.email,
      address: AddressFromModel()(userModel.address!),
      phone: userModel.phone,
      websiteUrl: userModel.website,
      company: CompanyFromModel()(userModel.company!),
    );
  }
}
