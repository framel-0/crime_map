import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidReportNumber({
    required T failureValue,
  }) = InvalidReportNumber<T>;

  const factory ValueFailure.empty({
    required T failureValue,
  }) = Empty<T>;

  const factory ValueFailure.invalidCoordinate({
    required T failureValue,
  }) = InvalidCoordinate<T>;
}
