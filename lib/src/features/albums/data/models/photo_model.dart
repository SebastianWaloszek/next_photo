import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_model.freezed.dart';

/// A photo model that is part of an album.
@freezed
class PhotoModel with _$PhotoModel {
  /// Creates a photo model.
  const factory PhotoModel({
    required int id,
    required int albumId,
    String? title,
    required String url,
    required String thumbnailUrl,
  }) = _PhotoModel;
}
