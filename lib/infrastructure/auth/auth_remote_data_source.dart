import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:my_kanban/infrastructure/core/api.dart';
import 'package:my_kanban/infrastructure/core/exceptions.dart';

import 'user_dtos.dart';

const String login = '/users/login/';

const int successCode = 200;

@lazySingleton
class AuthRemoteDataSource {
  final Api api;

  AuthRemoteDataSource(this.api);

  Future<TokenDto> signIn(UserDto userDto) async {
    final response = await api.post(
      path: login,
      body: userDto.toJson(),
    );

    if (response.statusCode == successCode) {
      return TokenDto.fromJson(
        json.decode(response.body) as Map<String, dynamic>,
      );
    } else {
      throw ServerException();
    }
  }
}
