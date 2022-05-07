import 'package:freezed_annotation/freezed_annotation.dart';

part 'album_model.freezed.dart';

/// Model for a photo album.
@freezed
class AlbumModel with _$AlbumModel {
  /// Creates an album model.
  const factory AlbumModel({
    required int id,
    required int userId,
    String? title,
  }) = _AlbumModel;
}
