import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_kanban/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:my_kanban/domain/auth/i_auth_repository.dart';
import 'package:my_kanban/domain/auth/value_objects.dart';
import 'package:my_kanban/infrastructure/core/exceptions.dart';

import 'auth_local_repository.dart';
import 'auth_remote_data_source.dart';
import 'user_dtos.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource;
  final AuthLocaleDataSource _authLocaleDataSource;

  AuthRepository(
    this._authRemoteDataSource,
    this._authLocaleDataSource,
  );

  @override
  Future<Option<String>> getToken() async {
    return _authLocaleDataSource.getToken().then(id);
  }

  @override
  Future<Either<AuthFailure, Unit>> signIn({
    @required Login login,
    @required Password password,
  }) async {
    try {
      final token = await _authRemoteDataSource.signIn(
        UserDto.fromDomain(
          login: login,
          password: password,
        ),
      );

      _authLocaleDataSource.setToken(token.value);

      return right(unit);
    } on ServerException {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() async {
    await _authLocaleDataSource.deleteToken();
  }
}
