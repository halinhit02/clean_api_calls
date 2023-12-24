import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_detail.freezed.dart';
part 'user_detail.g.dart';

@Freezed(
  equal: true,
  copyWith: true,
  toJson: true,
)
class UserDetail with _$UserDetail {

  const factory UserDetail({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'profession', defaultValue: '') required String profession,
  }) = _UserDetail;

  factory UserDetail.fromJson(Map<String, dynamic> json) => _$UserDetailFromJson(json);
}