import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

/// A model for a user.
@freezed
class UserModel with _$UserModel {
  /// Creates a user model.
  const factory UserModel({
    required int id,
    required String name,
    required String username,
    required String email,
    AddressModel? address,
    String? phone,
    String? website,
    CompanyModel? company,
  }) = _UserModel;

  /// Creates a user model from json.
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

/// A model for an address.
@freezed
class AddressModel with _$AddressModel {
  /// Creates an address model.
  const factory AddressModel({
    required String street,
    required String suite,
    required String city,
    required String zipcode,
    GeoLocationModel? geo,
  }) = _AddressModel;

  /// Creates an address model from json.
  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}

/// A model for a geo location.
@freezed
class GeoLocationModel with _$GeoLocationModel {
  /// Creates a geo location model.
  const factory GeoLocationModel({
    required String lat,
    required String lng,
  }) = _GeoLocationModel;

  /// Creates a geo location model from json.
  factory GeoLocationModel.fromJson(Map<String, dynamic> json) =>
      _$GeoLocationModelFromJson(json);
}

/// A model for a company.
@freezed
class CompanyModel with _$CompanyModel {
  /// Creates a company model.
  const factory CompanyModel({
    required String name,
    String? catchPhrase,
    String? bs,
  }) = _CompanyModel;

  /// Creates a company model from json.
  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);
}
