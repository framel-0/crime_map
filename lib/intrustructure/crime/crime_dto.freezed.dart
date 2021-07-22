// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'crime_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CrimeDto _$CrimeDtoFromJson(Map<String, dynamic> json) {
  return _CrimeDto.fromJson(json);
}

/// @nodoc
class _$CrimeDtoTearOff {
  const _$CrimeDtoTearOff();

  _CrimeDto call(
      {@JsonKey(ignore: true) String? id,
      String? image,
      required double latitude,
      required double longitude,
      @ServerTimeStampConverter() required FieldValue serverTimeStamp}) {
    return _CrimeDto(
      id: id,
      image: image,
      latitude: latitude,
      longitude: longitude,
      serverTimeStamp: serverTimeStamp,
    );
  }

  CrimeDto fromJson(Map<String, Object> json) {
    return CrimeDto.fromJson(json);
  }
}

/// @nodoc
const $CrimeDto = _$CrimeDtoTearOff();

/// @nodoc
mixin _$CrimeDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  @ServerTimeStampConverter()
  FieldValue get serverTimeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CrimeDtoCopyWith<CrimeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrimeDtoCopyWith<$Res> {
  factory $CrimeDtoCopyWith(CrimeDto value, $Res Function(CrimeDto) then) =
      _$CrimeDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String? image,
      double latitude,
      double longitude,
      @ServerTimeStampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class _$CrimeDtoCopyWithImpl<$Res> implements $CrimeDtoCopyWith<$Res> {
  _$CrimeDtoCopyWithImpl(this._value, this._then);

  final CrimeDto _value;
  // ignore: unused_field
  final $Res Function(CrimeDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ));
  }
}

/// @nodoc
abstract class _$CrimeDtoCopyWith<$Res> implements $CrimeDtoCopyWith<$Res> {
  factory _$CrimeDtoCopyWith(_CrimeDto value, $Res Function(_CrimeDto) then) =
      __$CrimeDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String? image,
      double latitude,
      double longitude,
      @ServerTimeStampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class __$CrimeDtoCopyWithImpl<$Res> extends _$CrimeDtoCopyWithImpl<$Res>
    implements _$CrimeDtoCopyWith<$Res> {
  __$CrimeDtoCopyWithImpl(_CrimeDto _value, $Res Function(_CrimeDto) _then)
      : super(_value, (v) => _then(v as _CrimeDto));

  @override
  _CrimeDto get _value => super._value as _CrimeDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? serverTimeStamp = freezed,
  }) {
    return _then(_CrimeDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_CrimeDto extends _CrimeDto {
  const _$_CrimeDto(
      {@JsonKey(ignore: true) this.id,
      this.image,
      required this.latitude,
      required this.longitude,
      @ServerTimeStampConverter() required this.serverTimeStamp})
      : super._();

  factory _$_CrimeDto.fromJson(Map<String, dynamic> json) =>
      _$_$_CrimeDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String? image;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  @ServerTimeStampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'CrimeDto(id: $id, image: $image, latitude: $latitude, longitude: $longitude, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CrimeDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @JsonKey(ignore: true)
  @override
  _$CrimeDtoCopyWith<_CrimeDto> get copyWith =>
      __$CrimeDtoCopyWithImpl<_CrimeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CrimeDtoToJson(this);
  }
}

abstract class _CrimeDto extends CrimeDto {
  const factory _CrimeDto(
          {@JsonKey(ignore: true) String? id,
          String? image,
          required double latitude,
          required double longitude,
          @ServerTimeStampConverter() required FieldValue serverTimeStamp}) =
      _$_CrimeDto;
  const _CrimeDto._() : super._();

  factory _CrimeDto.fromJson(Map<String, dynamic> json) = _$_CrimeDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  double get latitude => throw _privateConstructorUsedError;
  @override
  double get longitude => throw _privateConstructorUsedError;
  @override
  @ServerTimeStampConverter()
  FieldValue get serverTimeStamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CrimeDtoCopyWith<_CrimeDto> get copyWith =>
      throw _privateConstructorUsedError;
}
