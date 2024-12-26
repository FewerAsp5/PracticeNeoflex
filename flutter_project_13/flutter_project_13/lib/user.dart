import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String login,
    required String firstName,
    required String lastName,
    DateTime? birthday,
    String? photo,
    @Default([])List<UserModel> users,
  }) = _UserModel;
  
  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson();
}