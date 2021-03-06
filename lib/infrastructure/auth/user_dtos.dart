import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_kanban/domain/auth/value_objects.dart';

part 'user_dtos.freezed.dart';
part 'user_dtos.g.dart';

@freezed
abstract class UserDto with _$UserDto {
  const factory UserDto({
    @required String username,
    @required String password,
  }) = _UserDto;

  factory UserDto.fromDomain({
    @required Login login,
    @required Password password,
  }) =>
      UserDto(
        username: login.getOrCrash(),
        password: password.getOrCrash(),
      );

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}

@freezed
abstract class TokenDto with _$TokenDto {
  @JsonSerializable()
  const factory TokenDto({
    @JsonKey(name: 'token') String value,
  }) = _TokenDto;

  factory TokenDto.fromJson(Map<String, dynamic> json) =>
      _$TokenDtoFromJson(json);
}
