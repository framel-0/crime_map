import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/value_objects.dart';
import '../../domain/crime/crime.dart';
import '../../domain/crime/value_objects.dart';

part 'crime_dto.freezed.dart';
part 'crime_dto.g.dart';

@freezed
abstract class CrimeDto implements _$CrimeDto {
  @JsonSerializable()
  const factory CrimeDto({
    @JsonKey(ignore: true) String? id,
    required String image,
    required double latitude,
    required double longitude,
    @Default(1) int reportNumber,
  }) = _CrimeDto;

  const CrimeDto._();

  factory CrimeDto.fromDomain(Crime crime) {
    return CrimeDto(
      id: crime.id.getOrCrash(),
      latitude: crime.latitude.getOrCrash(),
      longitude: crime.longitude.getOrCrash(),
      image: crime.image.getOrCrash(),
      reportNumber: crime.reportNumber,
    );
  }

  Crime toDomain() {
    return Crime(
      id: UniqueId.fromUniqueString(id!),
      latitude: CrimeLatitude(latitude),
      longitude: CrimeLongitude(longitude),
      image: CrimeImage(image),
      reportNumber: reportNumber,
    );
  }

  factory CrimeDto.fromJson(Map<String, dynamic> json) =>
      _$CrimeDtoFromJson(json);

  factory CrimeDto.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return CrimeDto.fromJson(data).copyWith(id: doc.id);
  }
}
