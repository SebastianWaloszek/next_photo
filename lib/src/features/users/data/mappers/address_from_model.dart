import 'package:next_blog/src/base/data/mappers/mapper.dart';
import 'package:next_blog/src/features/users/data/models/user_model.dart';
import 'package:next_blog/src/features/users/domain/entities/user.dart';

/// Mapper for creating an [Address] entity from model.
class AddressFromModel implements Mapper<AddressModel, Address> {
  @override
  Address call(AddressModel addressModel) {
    return Address(
      street: addressModel.street,
      suite: addressModel.suite,
      city: addressModel.city,
      zipCode: addressModel.zipCode,
      geoLocation: addressModel.geo != null
          ? GeoLocation(
              longitude: addressModel.geo!.lng,
              latitude: addressModel.geo!.lat,
            )
          : null,
    );
  }
}
