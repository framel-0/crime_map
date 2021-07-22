import 'package:crime_map/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/value_failures.dart';
import 'value_objects.dart';

part 'crime.freezed.dart';

@freezed
abstract class Crime implements _$Crime {
  const factory Crime({
    required UniqueId id,
    required CrimeLatitude latitude,
    required CrimeLongitude longitude,
    String? image,
    String? reportNumber,
  }) = _Crime;

  const Crime._();

  factory Crime.empty() => Crime(
        id: UniqueId(),
        latitude: CrimeLatitude(0),
        longitude: CrimeLongitude(0),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return longitude.failureOrUnit
        .andThen(latitude.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
