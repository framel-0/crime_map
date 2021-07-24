import 'package:dartz/dartz.dart';

import 'value_failures.dart';

Either<ValueFailure<int>, int> validateReportNumber(int input) {
  if (input > 0) {
    return right(input);
  } else {
    return left(
      ValueFailure.invalidReportNumber(failureValue: input),
    );
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(
      ValueFailure.empty(failureValue: input),
    );
  }
}

Either<ValueFailure<double>, double> validateCoordinates(double input) {
  if (input != 0) {
    return right(input);
  } else {
    return left(
      ValueFailure.invalidCoordinate(failureValue: input),
    );
  }
}
