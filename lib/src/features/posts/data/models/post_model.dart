import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

/// The model for a post.
@freezed
class PostModel with _$PostModel {
  /// Creates a post model.
  const factory PostModel({
    required int id,
    required int userId,
    String? title,
    String? body,
  }) = _PostModel;

  /// Creates a post model from json.
  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}
