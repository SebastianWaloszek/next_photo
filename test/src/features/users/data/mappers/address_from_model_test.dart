import 'package:flutter_test/flutter_test.dart';
import 'package:next_blog/src/features/users/data/mappers/address_from_model.dart';
import 'package:next_blog/src/features/users/data/models/user_model.dart';
import 'package:next_blog/src/features/users/domain/entities/user.dart';

void main() {
  group(
    '$AddressFromModel',
    () {
      test(
        'should map address model to entity',
        () {
          expect(
            AddressFromModel()(_addressModel),
            _address,
          );
        },
      );

      test(
        'should map address model with geolocation to entity',
        () {
          expect(
            AddressFromModel()(_addressModelWihGeoLocation),
            _addressWihGeoLocation,
          );
        },
      );
    },
  );
}

const _addressModel = AddressModel(
  street: 'street',
  suite: 'suite',
  city: 'city',
  zipcode: 'zipCode',
);

final _addressModelWihGeoLocation = _addressModel.copyWith(
  geo: const GeoLocationModel(lat: '-1', lng: '1'),
);

const _address = Address(
  street: 'street',
  suite: 'suite',
  city: 'city',
  zipCode: 'zipCode',
);

final _addressWihGeoLocation = _address.copyWith(
  geoLocation: const GeoLocation(latitude: -1, longitude: 1),
);
