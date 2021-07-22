part of 'crime_map_bloc.dart';

@freezed
abstract class CrimeMapEvent with _$CrimeMapEvent {
  const factory CrimeMapEvent.currentLocationRequested() =
      CurrentLocationRequested;
  const factory CrimeMapEvent.checkPermissionRequested() =
      CheckPermissionRequested;
  const factory CrimeMapEvent.requestPermissionRequested() =
      RequestPermissionRequested;
}
