import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:next_photo/src/base/domain/entities/id.dart';

part 'user.freezed.dart';

/// A user in the application.
@freezed
class User with _$User {
  /// Creates a user.
  const factory User({
    required UserId id,
    required String name,
    required String username,
    required String email,
    Address? address,
    String? phone,
    String? websiteUrl,
    Company? company,
  }) = _User;
}

/// The id of a user.
class UserId extends Id<int> {
  /// Creates a user id for a specific [value].
  const UserId(int value) : super(value);
}

/// An address for a location.
@freezed
class Address with _$Address {
  /// Creates an address.
  const factory Address({
    required String street,
    required String suite,
    required String city,
    required String zipCode,
    GeoLocation? geoLocation,
  }) = _Address;
}

/// A geographic location.
@freezed
class GeoLocation with _$GeoLocation {
  /// Creates a geographic location for given [latitude] and [longitude].
  const factory GeoLocation({
    required double latitude,
    required double longitude,
  }) = _GeoLocation;
}

/// A company that a user can be part of.
@freezed
class Company with _$Company {
  /// Creates a company.
  const factory Company({
    required String name,
    String? catchPhrase,
    String? bs,
  }) = _Company;
}
