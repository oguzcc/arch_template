// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'req_sign_up_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReqSignUpDto _$ReqSignUpDtoFromJson(Map<String, dynamic> json) {
  return _ReqSignUpDto.fromJson(json);
}

/// @nodoc
mixin _$ReqSignUpDto {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this ReqSignUpDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReqSignUpDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReqSignUpDtoCopyWith<ReqSignUpDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqSignUpDtoCopyWith<$Res> {
  factory $ReqSignUpDtoCopyWith(
          ReqSignUpDto value, $Res Function(ReqSignUpDto) then) =
      _$ReqSignUpDtoCopyWithImpl<$Res, ReqSignUpDto>;
  @useResult
  $Res call({String name, String email, String password});
}

/// @nodoc
class _$ReqSignUpDtoCopyWithImpl<$Res, $Val extends ReqSignUpDto>
    implements $ReqSignUpDtoCopyWith<$Res> {
  _$ReqSignUpDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReqSignUpDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReqSignUpDtoImplCopyWith<$Res>
    implements $ReqSignUpDtoCopyWith<$Res> {
  factory _$$ReqSignUpDtoImplCopyWith(
          _$ReqSignUpDtoImpl value, $Res Function(_$ReqSignUpDtoImpl) then) =
      __$$ReqSignUpDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email, String password});
}

/// @nodoc
class __$$ReqSignUpDtoImplCopyWithImpl<$Res>
    extends _$ReqSignUpDtoCopyWithImpl<$Res, _$ReqSignUpDtoImpl>
    implements _$$ReqSignUpDtoImplCopyWith<$Res> {
  __$$ReqSignUpDtoImplCopyWithImpl(
      _$ReqSignUpDtoImpl _value, $Res Function(_$ReqSignUpDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReqSignUpDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$ReqSignUpDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReqSignUpDtoImpl implements _ReqSignUpDto {
  const _$ReqSignUpDtoImpl(
      {required this.name, required this.email, required this.password});

  factory _$ReqSignUpDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReqSignUpDtoImplFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'ReqSignUpDto(name: $name, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReqSignUpDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, password);

  /// Create a copy of ReqSignUpDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReqSignUpDtoImplCopyWith<_$ReqSignUpDtoImpl> get copyWith =>
      __$$ReqSignUpDtoImplCopyWithImpl<_$ReqSignUpDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReqSignUpDtoImplToJson(
      this,
    );
  }
}

abstract class _ReqSignUpDto implements ReqSignUpDto {
  const factory _ReqSignUpDto(
      {required final String name,
      required final String email,
      required final String password}) = _$ReqSignUpDtoImpl;

  factory _ReqSignUpDto.fromJson(Map<String, dynamic> json) =
      _$ReqSignUpDtoImpl.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  String get password;

  /// Create a copy of ReqSignUpDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReqSignUpDtoImplCopyWith<_$ReqSignUpDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
