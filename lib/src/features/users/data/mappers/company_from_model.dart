import 'package:next_photo/src/base/data/mappers/mapper.dart';
import 'package:next_photo/src/features/users/data/models/user_model.dart';
import 'package:next_photo/src/features/users/domain/entities/user.dart';

/// Mapper for creating a [Company] entity from model.
class CompanyFromModel implements Mapper<CompanyModel, Company> {
  @override
  Company call(CompanyModel addressModel) {
    return Company(
      name: addressModel.name,
      catchPhrase: addressModel.catchPhrase,
      bs: addressModel.bs,
    );
  }
}
