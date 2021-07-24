import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/value_failures.dart';
import '../core/value_objects.dart';
import 'value_objects.dart';

part 'crime.freezed.dart';

@freezed
abstract class Crime implements _$Crime {
  const factory Crime({
    required UniqueId id,
    required CrimeLatitude latitude,
    required CrimeLongitude longitude,
    required CrimeImage image,
    @Default(1) int reportNumber,
  }) = _Crime;

  const Crime._();

  factory Crime.empty() => Crime(
        id: UniqueId(),
        latitude: CrimeLatitude(0),
        longitude: CrimeLongitude(0),
        image: CrimeImage(''),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return image.failureOrUnit
        .andThen(latitude.failureOrUnit)
        .andThen(longitude.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
