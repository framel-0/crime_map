part of 'crime_watcher_bloc.dart';

@freezed
abstract class CrimeWatcherEvent with _$CrimeWatcherEvent {
  const factory CrimeWatcherEvent.watchAllCrimeStarted() =
      _WatchAllCrimeStarted;
  const factory CrimeWatcherEvent.crimesRecieved(
      Either<CrimeFailure, KtList<Crime>> failureOrNotes) = _CrimesRecieved;
}
