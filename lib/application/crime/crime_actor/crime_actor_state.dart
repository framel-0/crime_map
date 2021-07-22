part of 'crime_actor_bloc.dart';

@freezed
abstract class CrimeActorState with _$CrimeActorState {
  const factory CrimeActorState.initial() = _Initial;
  const factory CrimeActorState.actionInprogress() = _ActionInprogress;
  const factory CrimeActorState.deleteFailure(CrimeFailure failure) =
      _DeleteFailure;
  const factory CrimeActorState.deleteSuccess() = _DeleteSuccess;
}
