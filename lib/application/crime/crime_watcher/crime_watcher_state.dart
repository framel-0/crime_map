part of 'crime_watcher_bloc.dart';

@freezed
abstract class CrimeWatcherState with _$CrimeWatcherState {
  const factory CrimeWatcherState.initial() = _Initial;
  const factory CrimeWatcherState.loadInProgress() = _LoadInProgress;
  const factory CrimeWatcherState.loadSuccess(KtList<Crime> crimes) =
      _LoadSuccess;
  const factory CrimeWatcherState.loadFailure(CrimeFailure failure) =
      _LoadFailure;
}
