// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crime_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CrimeDto _$_$_CrimeDtoFromJson(Map<String, dynamic> json) {
  return _$_CrimeDto(
    image: json['image'] as String?,
    latitude: (json['latitude'] as num).toDouble(),
    longitude: (json['longitude'] as num).toDouble(),
    serverTimeStamp: const ServerTimeStampConverter()
        .fromJson(json['serverTimeStamp'] as Object),
  );
}

Map<String, dynamic> _$_$_CrimeDtoToJson(_$_CrimeDto instance) =>
    <String, dynamic>{
      'image': instance.image,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'serverTimeStamp':
          const ServerTimeStampConverter().toJson(instance.serverTimeStamp),
    };
