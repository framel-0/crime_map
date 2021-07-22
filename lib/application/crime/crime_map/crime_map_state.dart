part of 'crime_map_bloc.dart';

@freezed
abstract class CrimeMapState with _$CrimeMapState {
  const factory CrimeMapState.initial() = _Initial;
  const factory CrimeMapState.loadInProgress() = _LoadInProgress;
  const factory CrimeMapState.loadSuccess(
      Position position, KtList<Crime> events) = _LoadSuccess;
  const factory CrimeMapState.loadFailure() = _LoadFailure;
  const factory CrimeMapState.locationPermissionFailure() =
      _LocationPermissionFailure;
}
