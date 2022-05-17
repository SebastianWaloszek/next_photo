import 'package:flutter_test/flutter_test.dart';
import 'package:next_photo/src/features/users/data/mappers/geo_location_from_model.dart';
import 'package:next_photo/src/features/users/data/models/user_model.dart';
import 'package:next_photo/src/features/users/domain/entities/user.dart';

void main() {
  group(
    '$GeoLocationFromModel',
    () {
      test(
        'should map geo location model to entity',
        () {
          expect(
            GeoLocationFromModel()(_geoLocationModel),
            _geoLocation,
          );
        },
      );
    },
  );
}

const _geoLocationModel = GeoLocationModel(
  lat: '-21.835',
  lng: '12.654',
);

const _geoLocation = GeoLocation(
  latitude: -21.835,
  longitude: 12.654,
);
