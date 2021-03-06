import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:my_kanban/domain/auth/value_objects.dart';

import 'auth_failure.dart';

abstract class IAuthRepository {
  Future<Option<String>> getToken();
  Future<Either<AuthFailure, Unit>> signIn({
    @required Login login,
    @required Password password,
  });
  Future<void> signOut();
}
