import 'package:freezed_annotation/freezed_annotation.dart';

part 'crime_failure.freezed.dart';

@freezed
abstract class CrimeFailure with _$CrimeFailure {
  const factory CrimeFailure.unexpected() = _CrimeFailure;
  const factory CrimeFailure.insufficientPermission() = _InsufficientPermission;
  const factory CrimeFailure.unableToUpdate() = _UnableToUpdate;
}
