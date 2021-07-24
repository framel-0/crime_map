// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'value_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  InvalidReportNumber<T> invalidReportNumber<T>({required T failureValue}) {
    return InvalidReportNumber<T>(
      failureValue: failureValue,
    );
  }

  Empty<T> empty<T>({required T failureValue}) {
    return Empty<T>(
      failureValue: failureValue,
    );
  }

  InvalidCoordinate<T> invalidCoordinate<T>({required T failureValue}) {
    return InvalidCoordinate<T>(
      failureValue: failureValue,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  T get failureValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failureValue) invalidReportNumber,
    required TResult Function(T failureValue) empty,
    required TResult Function(T failureValue) invalidCoordinate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failureValue)? invalidReportNumber,
    TResult Function(T failureValue)? empty,
    TResult Function(T failureValue)? invalidCoordinate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidReportNumber<T> value) invalidReportNumber,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidCoordinate<T> value) invalidCoordinate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidReportNumber<T> value)? invalidReportNumber,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidCoordinate<T> value)? invalidCoordinate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failureValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object? failureValue = freezed,
  }) {
    return _then(_value.copyWith(
      failureValue: failureValue == freezed
          ? _value.failureValue
          : failureValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class $InvalidReportNumberCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidReportNumberCopyWith(InvalidReportNumber<T> value,
          $Res Function(InvalidReportNumber<T>) then) =
      _$InvalidReportNumberCopyWithImpl<T, $Res>;
  @override
  $Res call({T failureValue});
}

/// @nodoc
class _$InvalidReportNumberCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidReportNumberCopyWith<T, $Res> {
  _$InvalidReportNumberCopyWithImpl(InvalidReportNumber<T> _value,
      $Res Function(InvalidReportNumber<T>) _then)
      : super(_value, (v) => _then(v as InvalidReportNumber<T>));

  @override
  InvalidReportNumber<T> get _value => super._value as InvalidReportNumber<T>;

  @override
  $Res call({
    Object? failureValue = freezed,
  }) {
    return _then(InvalidReportNumber<T>(
      failureValue: failureValue == freezed
          ? _value.failureValue
          : failureValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidReportNumber<T> implements InvalidReportNumber<T> {
  const _$InvalidReportNumber({required this.failureValue});

  @override
  final T failureValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidReportNumber(failureValue: $failureValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidReportNumber<T> &&
            (identical(other.failureValue, failureValue) ||
                const DeepCollectionEquality()
                    .equals(other.failureValue, failureValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureValue);

  @JsonKey(ignore: true)
  @override
  $InvalidReportNumberCopyWith<T, InvalidReportNumber<T>> get copyWith =>
      _$InvalidReportNumberCopyWithImpl<T, InvalidReportNumber<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failureValue) invalidReportNumber,
    required TResult Function(T failureValue) empty,
    required TResult Function(T failureValue) invalidCoordinate,
  }) {
    return invalidReportNumber(failureValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failureValue)? invalidReportNumber,
    TResult Function(T failureValue)? empty,
    TResult Function(T failureValue)? invalidCoordinate,
    required TResult orElse(),
  }) {
    if (invalidReportNumber != null) {
      return invalidReportNumber(failureValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidReportNumber<T> value) invalidReportNumber,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidCoordinate<T> value) invalidCoordinate,
  }) {
    return invalidReportNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidReportNumber<T> value)? invalidReportNumber,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidCoordinate<T> value)? invalidCoordinate,
    required TResult orElse(),
  }) {
    if (invalidReportNumber != null) {
      return invalidReportNumber(this);
    }
    return orElse();
  }
}

abstract class InvalidReportNumber<T> implements ValueFailure<T> {
  const factory InvalidReportNumber({required T failureValue}) =
      _$InvalidReportNumber<T>;

  @override
  T get failureValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InvalidReportNumberCopyWith<T, InvalidReportNumber<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({T failureValue});
}

/// @nodoc
class _$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;

  @override
  $Res call({
    Object? failureValue = freezed,
  }) {
    return _then(Empty<T>(
      failureValue: failureValue == freezed
          ? _value.failureValue
          : failureValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Empty<T> implements Empty<T> {
  const _$Empty({required this.failureValue});

  @override
  final T failureValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failureValue: $failureValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Empty<T> &&
            (identical(other.failureValue, failureValue) ||
                const DeepCollectionEquality()
                    .equals(other.failureValue, failureValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureValue);

  @JsonKey(ignore: true)
  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failureValue) invalidReportNumber,
    required TResult Function(T failureValue) empty,
    required TResult Function(T failureValue) invalidCoordinate,
  }) {
    return empty(failureValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failureValue)? invalidReportNumber,
    TResult Function(T failureValue)? empty,
    TResult Function(T failureValue)? invalidCoordinate,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failureValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidReportNumber<T> value) invalidReportNumber,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidCoordinate<T> value) invalidCoordinate,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidReportNumber<T> value)? invalidReportNumber,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidCoordinate<T> value)? invalidCoordinate,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({required T failureValue}) = _$Empty<T>;

  @override
  T get failureValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidCoordinateCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidCoordinateCopyWith(InvalidCoordinate<T> value,
          $Res Function(InvalidCoordinate<T>) then) =
      _$InvalidCoordinateCopyWithImpl<T, $Res>;
  @override
  $Res call({T failureValue});
}

/// @nodoc
class _$InvalidCoordinateCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidCoordinateCopyWith<T, $Res> {
  _$InvalidCoordinateCopyWithImpl(
      InvalidCoordinate<T> _value, $Res Function(InvalidCoordinate<T>) _then)
      : super(_value, (v) => _then(v as InvalidCoordinate<T>));

  @override
  InvalidCoordinate<T> get _value => super._value as InvalidCoordinate<T>;

  @override
  $Res call({
    Object? failureValue = freezed,
  }) {
    return _then(InvalidCoordinate<T>(
      failureValue: failureValue == freezed
          ? _value.failureValue
          : failureValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidCoordinate<T> implements InvalidCoordinate<T> {
  const _$InvalidCoordinate({required this.failureValue});

  @override
  final T failureValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidCoordinate(failureValue: $failureValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidCoordinate<T> &&
            (identical(other.failureValue, failureValue) ||
                const DeepCollectionEquality()
                    .equals(other.failureValue, failureValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureValue);

  @JsonKey(ignore: true)
  @override
  $InvalidCoordinateCopyWith<T, InvalidCoordinate<T>> get copyWith =>
      _$InvalidCoordinateCopyWithImpl<T, InvalidCoordinate<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failureValue) invalidReportNumber,
    required TResult Function(T failureValue) empty,
    required TResult Function(T failureValue) invalidCoordinate,
  }) {
    return invalidCoordinate(failureValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failureValue)? invalidReportNumber,
    TResult Function(T failureValue)? empty,
    TResult Function(T failureValue)? invalidCoordinate,
    required TResult orElse(),
  }) {
    if (invalidCoordinate != null) {
      return invalidCoordinate(failureValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidReportNumber<T> value) invalidReportNumber,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidCoordinate<T> value) invalidCoordinate,
  }) {
    return invalidCoordinate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidReportNumber<T> value)? invalidReportNumber,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidCoordinate<T> value)? invalidCoordinate,
    required TResult orElse(),
  }) {
    if (invalidCoordinate != null) {
      return invalidCoordinate(this);
    }
    return orElse();
  }
}

abstract class InvalidCoordinate<T> implements ValueFailure<T> {
  const factory InvalidCoordinate({required T failureValue}) =
      _$InvalidCoordinate<T>;

  @override
  T get failureValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InvalidCoordinateCopyWith<T, InvalidCoordinate<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
