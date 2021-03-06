// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
class _$UserDtoTearOff {
  const _$UserDtoTearOff();

// ignore: unused_element
  _UserDto call({@required String username, @required String password}) {
    return _UserDto(
      username: username,
      password: password,
    );
  }

// ignore: unused_element
  UserDto fromJson(Map<String, Object> json) {
    return UserDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserDto = _$UserDtoTearOff();

/// @nodoc
mixin _$UserDto {
  String get username;
  String get password;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserDtoCopyWith<UserDto> get copyWith;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res> implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  final UserDto _value;
  // ignore: unused_field
  final $Res Function(UserDto) _then;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
abstract class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) then) =
      __$UserDtoCopyWithImpl<$Res>;
  @override
  $Res call({String username, String password});
}

/// @nodoc
class __$UserDtoCopyWithImpl<$Res> extends _$UserDtoCopyWithImpl<$Res>
    implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(_UserDto _value, $Res Function(_UserDto) _then)
      : super(_value, (v) => _then(v as _UserDto));

  @override
  _UserDto get _value => super._value as _UserDto;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
  }) {
    return _then(_UserDto(
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserDto implements _UserDto {
  const _$_UserDto({@required this.username, @required this.password})
      : assert(username != null),
        assert(password != null);

  factory _$_UserDto.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDtoFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'UserDto(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDto &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDtoToJson(this);
  }
}

abstract class _UserDto implements UserDto {
  const factory _UserDto(
      {@required String username, @required String password}) = _$_UserDto;

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$_UserDto.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$UserDtoCopyWith<_UserDto> get copyWith;
}

TokenDto _$TokenDtoFromJson(Map<String, dynamic> json) {
  return _TokenDto.fromJson(json);
}

/// @nodoc
class _$TokenDtoTearOff {
  const _$TokenDtoTearOff();

// ignore: unused_element
  _TokenDto call({@JsonKey(name: 'token') String value}) {
    return _TokenDto(
      value: value,
    );
  }

// ignore: unused_element
  TokenDto fromJson(Map<String, Object> json) {
    return TokenDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TokenDto = _$TokenDtoTearOff();

/// @nodoc
mixin _$TokenDto {
  @JsonKey(name: 'token')
  String get value;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TokenDtoCopyWith<TokenDto> get copyWith;
}

/// @nodoc
abstract class $TokenDtoCopyWith<$Res> {
  factory $TokenDtoCopyWith(TokenDto value, $Res Function(TokenDto) then) =
      _$TokenDtoCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'token') String value});
}

/// @nodoc
class _$TokenDtoCopyWithImpl<$Res> implements $TokenDtoCopyWith<$Res> {
  _$TokenDtoCopyWithImpl(this._value, this._then);

  final TokenDto _value;
  // ignore: unused_field
  final $Res Function(TokenDto) _then;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed ? _value.value : value as String,
    ));
  }
}

/// @nodoc
abstract class _$TokenDtoCopyWith<$Res> implements $TokenDtoCopyWith<$Res> {
  factory _$TokenDtoCopyWith(_TokenDto value, $Res Function(_TokenDto) then) =
      __$TokenDtoCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'token') String value});
}

/// @nodoc
class __$TokenDtoCopyWithImpl<$Res> extends _$TokenDtoCopyWithImpl<$Res>
    implements _$TokenDtoCopyWith<$Res> {
  __$TokenDtoCopyWithImpl(_TokenDto _value, $Res Function(_TokenDto) _then)
      : super(_value, (v) => _then(v as _TokenDto));

  @override
  _TokenDto get _value => super._value as _TokenDto;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(_TokenDto(
      value: value == freezed ? _value.value : value as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TokenDto implements _TokenDto {
  const _$_TokenDto({@JsonKey(name: 'token') this.value});

  factory _$_TokenDto.fromJson(Map<String, dynamic> json) =>
      _$_$_TokenDtoFromJson(json);

  @override
  @JsonKey(name: 'token')
  final String value;

  @override
  String toString() {
    return 'TokenDto(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TokenDto &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$TokenDtoCopyWith<_TokenDto> get copyWith =>
      __$TokenDtoCopyWithImpl<_TokenDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TokenDtoToJson(this);
  }
}

abstract class _TokenDto implements TokenDto {
  const factory _TokenDto({@JsonKey(name: 'token') String value}) = _$_TokenDto;

  factory _TokenDto.fromJson(Map<String, dynamic> json) = _$_TokenDto.fromJson;

  @override
  @JsonKey(name: 'token')
  String get value;
  @override
  @JsonKey(ignore: true)
  _$TokenDtoCopyWith<_TokenDto> get copyWith;
}
