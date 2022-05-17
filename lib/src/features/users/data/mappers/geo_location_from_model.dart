import 'package:next_photo/src/base/data/mappers/mapper.dart';
import 'package:next_photo/src/features/users/data/models/user_model.dart';
import 'package:next_photo/src/features/users/domain/entities/user.dart';

/// Mapper for creating a [GeoLocation] entity from model.
class GeoLocationFromModel implements Mapper<GeoLocationModel, GeoLocation> {
  @override
  GeoLocation call(GeoLocationModel geoLocationModel) {
    return GeoLocation(
      longitude: double.parse(geoLocationModel.lng),
      latitude: double.parse(geoLocationModel.lat),
    );
  }
}
