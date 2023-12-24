// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDetail _$UserDetailFromJson(Map<String, dynamic> json) {
  return _UserDetail.fromJson(json);
}

/// @nodoc
mixin _$UserDetail {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'profession', defaultValue: '')
  String get profession => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailCopyWith<UserDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailCopyWith<$Res> {
  factory $UserDetailCopyWith(
          UserDetail value, $Res Function(UserDetail) then) =
      _$UserDetailCopyWithImpl<$Res, UserDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'profession', defaultValue: '') String profession});
}

/// @nodoc
class _$UserDetailCopyWithImpl<$Res, $Val extends UserDetail>
    implements $UserDetailCopyWith<$Res> {
  _$UserDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? profession = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profession: null == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDetailImplCopyWith<$Res>
    implements $UserDetailCopyWith<$Res> {
  factory _$$UserDetailImplCopyWith(
          _$UserDetailImpl value, $Res Function(_$UserDetailImpl) then) =
      __$$UserDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'profession', defaultValue: '') String profession});
}

/// @nodoc
class __$$UserDetailImplCopyWithImpl<$Res>
    extends _$UserDetailCopyWithImpl<$Res, _$UserDetailImpl>
    implements _$$UserDetailImplCopyWith<$Res> {
  __$$UserDetailImplCopyWithImpl(
      _$UserDetailImpl _value, $Res Function(_$UserDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? profession = null,
  }) {
    return _then(_$UserDetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profession: null == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDetailImpl implements _UserDetail {
  const _$UserDetailImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'profession', defaultValue: '') required this.profession});

  factory _$UserDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDetailImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'profession', defaultValue: '')
  final String profession;

  @override
  String toString() {
    return 'UserDetail(id: $id, name: $name, profession: $profession)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profession, profession) ||
                other.profession == profession));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, profession);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailImplCopyWith<_$UserDetailImpl> get copyWith =>
      __$$UserDetailImplCopyWithImpl<_$UserDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDetailImplToJson(
      this,
    );
  }
}

abstract class _UserDetail implements UserDetail {
  const factory _UserDetail(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'profession', defaultValue: '')
      required final String profession}) = _$UserDetailImpl;

  factory _UserDetail.fromJson(Map<String, dynamic> json) =
      _$UserDetailImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'profession', defaultValue: '')
  String get profession;
  @override
  @JsonKey(ignore: true)
  _$$UserDetailImplCopyWith<_$UserDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
