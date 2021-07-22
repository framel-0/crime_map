import 'package:dartz/dartz.dart';

import '../core/value_failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';

class CrimeLatitude extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory CrimeLatitude(double input) {
    assert(input != null);
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
    assert(input != null);
    return CrimeLongitude._(
      validateCoordinates(input),
    );
  }

  const CrimeLongitude._(this.value);
}
