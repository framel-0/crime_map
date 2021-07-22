// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'crime.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CrimeTearOff {
  const _$CrimeTearOff();

  _Crime call(
      {required UniqueId id,
      required CrimeLatitude latitude,
      required CrimeLongitude longitude,
      String? image,
      String? reportNumber}) {
    return _Crime(
      id: id,
      latitude: latitude,
      longitude: longitude,
      image: image,
      reportNumber: reportNumber,
    );
  }
}

/// @nodoc
const $Crime = _$CrimeTearOff();

/// @nodoc
mixin _$Crime {
  UniqueId get id => throw _privateConstructorUsedError;
  CrimeLatitude get latitude => throw _privateConstructorUsedError;
  CrimeLongitude get longitude => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get reportNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CrimeCopyWith<Crime> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrimeCopyWith<$Res> {
  factory $CrimeCopyWith(Crime value, $Res Function(Crime) then) =
      _$CrimeCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      CrimeLatitude latitude,
      CrimeLongitude longitude,
      String? image,
      String? reportNumber});
}

/// @nodoc
class _$CrimeCopyWithImpl<$Res> implements $CrimeCopyWith<$Res> {
  _$CrimeCopyWithImpl(this._value, this._then);

  final Crime _value;
  // ignore: unused_field
  final $Res Function(Crime) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? image = freezed,
    Object? reportNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as CrimeLatitude,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as CrimeLongitude,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      reportNumber: reportNumber == freezed
          ? _value.reportNumber
          : reportNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CrimeCopyWith<$Res> implements $CrimeCopyWith<$Res> {
  factory _$CrimeCopyWith(_Crime value, $Res Function(_Crime) then) =
      __$CrimeCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      CrimeLatitude latitude,
      CrimeLongitude longitude,
      String? image,
      String? reportNumber});
}

/// @nodoc
class __$CrimeCopyWithImpl<$Res> extends _$CrimeCopyWithImpl<$Res>
    implements _$CrimeCopyWith<$Res> {
  __$CrimeCopyWithImpl(_Crime _value, $Res Function(_Crime) _then)
      : super(_value, (v) => _then(v as _Crime));

  @override
  _Crime get _value => super._value as _Crime;

  @override
  $Res call({
    Object? id = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? image = freezed,
    Object? reportNumber = freezed,
  }) {
    return _then(_Crime(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as CrimeLatitude,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as CrimeLongitude,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      reportNumber: reportNumber == freezed
          ? _value.reportNumber
          : reportNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Crime extends _Crime {
  const _$_Crime(
      {required this.id,
      required this.latitude,
      required this.longitude,
      this.image,
      this.reportNumber})
      : super._();

  @override
  final UniqueId id;
  @override
  final CrimeLatitude latitude;
  @override
  final CrimeLongitude longitude;
  @override
  final String? image;
  @override
  final String? reportNumber;

  @override
  String toString() {
    return 'Crime(id: $id, latitude: $latitude, longitude: $longitude, image: $image, reportNumber: $reportNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Crime &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.reportNumber, reportNumber) ||
                const DeepCollectionEquality()
                    .equals(other.reportNumber, reportNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(reportNumber);

  @JsonKey(ignore: true)
  @override
  _$CrimeCopyWith<_Crime> get copyWith =>
      __$CrimeCopyWithImpl<_Crime>(this, _$identity);
}

abstract class _Crime extends Crime {
  const factory _Crime(
      {required UniqueId id,
      required CrimeLatitude latitude,
      required CrimeLongitude longitude,
      String? image,
      String? reportNumber}) = _$_Crime;
  const _Crime._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  CrimeLatitude get latitude => throw _privateConstructorUsedError;
  @override
  CrimeLongitude get longitude => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  String? get reportNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CrimeCopyWith<_Crime> get copyWith => throw _privateConstructorUsedError;
}
