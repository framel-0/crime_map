import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crime_map/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/crime/crime.dart';
import '../../domain/crime/value_objects.dart';

part 'crime_dto.freezed.dart';
part 'crime_dto.g.dart';

@freezed
abstract class CrimeDto implements _$CrimeDto {
  @JsonSerializable()
  const factory CrimeDto({
    @JsonKey(ignore: true) String? id,
    String? image,
    required double latitude,
    required double longitude,
    @ServerTimeStampConverter() required FieldValue serverTimeStamp,
  }) = _CrimeDto;

  const CrimeDto._();

  factory CrimeDto.fromDomain(Crime crime) {
    return CrimeDto(
        id: crime.id.getOrCrash(),
        latitude: crime.latitude.getOrCrash(),
        longitude: crime.longitude.getOrCrash(),
        image: crime.image,
        serverTimeStamp: FieldValue.serverTimestamp());
  }

  Crime toDomain() {
    return Crime(
      id: UniqueId(),
      image: image,
      latitude: CrimeLatitude(latitude),
      longitude: CrimeLongitude(longitude),
    );
  }

  factory CrimeDto.fromJson(Map<String, dynamic> json) =>
      _$CrimeDtoFromJson(json);

  factory CrimeDto.fromFirestore(DocumentSnapshot doc) {
    final Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    return CrimeDto.fromJson(data).copyWith(id: doc.id);
  }
}

class ServerTimeStampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimeStampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}
