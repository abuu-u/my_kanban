import 'package:dartz/dartz.dart';

import 'failures.dart';

Either<ValueFailure<String>, String> validateMinLength(
  String input,
  int minLength,
) {
  if (input.length < minLength) {
    return left(
      ValueFailure.tooShort(failedValue: input, minLength: minLength),
    );
  } else {
    return right(input);
  }
}
