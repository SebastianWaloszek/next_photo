import 'package:flutter_test/flutter_test.dart';
import 'package:next_blog/src/features/users/data/mappers/user_from_model.dart';
import 'package:next_blog/src/features/users/data/models/user_model.dart';
import 'package:next_blog/src/features/users/domain/entities/user.dart';

void main() {
  group(
    '$UserFromModel',
    () {
      test(
        'should map user model to entity',
        () {
          expect(
            UserFromModel()(_userModel),
            _user,
          );
        },
      );

      test(
        'should map user model with address to entity',
        () {
          expect(
            UserFromModel()(_userModelWithAddress),
            _userWithAddress,
          );
        },
      );

      test(
        'should map user model with company to entity',
        () {
          expect(
            UserFromModel()(_userModelWithCompany),
            _userWithCompany,
          );
        },
      );
    },
  );
}

const _userModel = UserModel(
  id: 1,
  name: 'name',
  username: 'username',
  email: 'email',
  phone: 'phone',
  website: 'website',
);

final _userModelWithAddress = _userModel.copyWith(
  address: const AddressModel(
    street: 'street',
    suite: 'suite',
    city: 'city',
    zipcode: 'zipCode',
  ),
);

final _userModelWithCompany = _userModel.copyWith(
  company: const CompanyModel(
    name: 'name',
  ),
);

const _user = User(
  id: UserId(1),
  name: 'name',
  username: 'username',
  email: 'email',
  phone: 'phone',
  websiteUrl: 'website',
);

final _userWithAddress = _user.copyWith(
  address: const Address(
    street: 'street',
    suite: 'suite',
    city: 'city',
    zipCode: 'zipCode',
  ),
);

final _userWithCompany = _user.copyWith(
  company: const Company(
    name: 'name',
  ),
);
