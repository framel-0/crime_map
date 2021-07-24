import 'package:dartz/dartz.dart';

import '../core/value_failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';

class CrimeLatitude extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory CrimeLatitude(double input) {
    return CrimeLatitude._(
      validateCoordinates(input),
    );
  }

  const CrimeLatitude._(this.value);
}

class CrimeLongitude extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory CrimeLongitude(double input) {
    return CrimeLongitude._(
      validateCoordinates(input),
    );
  }

  const CrimeLongitude._(this.value);
}

class CrimeReportNumber extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory CrimeReportNumber(int input) {
    return CrimeReportNumber._(
      validateReportNumber(input),
    );
  }

  const CrimeReportNumber._(this.value);
}

class CrimeImage extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory CrimeImage(String input) {
    return CrimeImage._(
      validateStringNotEmpty(input),
    );
  }

  const CrimeImage._(this.value);
}
