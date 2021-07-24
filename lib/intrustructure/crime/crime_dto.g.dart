// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crime_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CrimeDto _$_$_CrimeDtoFromJson(Map<String, dynamic> json) {
  return _$_CrimeDto(
    image: json['image'] as String,
    latitude: (json['latitude'] as num).toDouble(),
    longitude: (json['longitude'] as num).toDouble(),
    reportNumber: json['reportNumber'] as int? ?? 1,
  );
}

Map<String, dynamic> _$_$_CrimeDtoToJson(_$_CrimeDto instance) =>
    <String, dynamic>{
      'image': instance.image,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'reportNumber': instance.reportNumber,
    };
