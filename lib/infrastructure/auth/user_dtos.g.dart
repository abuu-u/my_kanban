// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$_$_UserDtoFromJson(Map<String, dynamic> json) {
  return _$_UserDto(
    username: json['username'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$_$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

_$_TokenDto _$_$_TokenDtoFromJson(Map<String, dynamic> json) {
  return _$_TokenDto(
    value: json['token'] as String,
  );
}

Map<String, dynamic> _$_$_TokenDtoToJson(_$_TokenDto instance) =>
    <String, dynamic>{
      'token': instance.value,
    };
