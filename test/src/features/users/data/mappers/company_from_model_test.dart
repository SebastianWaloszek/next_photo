import 'package:flutter_test/flutter_test.dart';
import 'package:next_blog/src/features/users/data/mappers/company_from_model.dart';
import 'package:next_blog/src/features/users/data/models/user_model.dart';
import 'package:next_blog/src/features/users/domain/entities/user.dart';

void main() {
  group(
    '$CompanyFromModel',
    () {
      test(
        'Should map company model to entity',
        () {
          expect(
            CompanyFromModel()(_companyModel),
            _company,
          );
        },
      );
    },
  );
}

const _companyModel = CompanyModel(
  name: 'name',
  bs: 'bs',
  catchPhrase: 'catchPhrase',
);

const _company = Company(
  name: 'name',
  bs: 'bs',
  catchPhrase: 'catchPhrase',
);
