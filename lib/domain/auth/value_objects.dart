import 'package:dartz/dartz.dart';
import 'package:my_kanban/domain/core/failures.dart';
import 'package:my_kanban/domain/core/value_objects.dart';
import 'package:my_kanban/domain/core/value_validators.dart';

class Login extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const minLength = 4;

  factory Login(String input) {
    assert(input != null);
    return Login._(
      validateMinLength(input, minLength),
    );
  }

  const Login._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const minLength = 8;

  factory Password(String input) {
    assert(input != null);
    return Password._(
      validateMinLength(input, minLength),
    );
  }

  const Password._(this.value);
}
