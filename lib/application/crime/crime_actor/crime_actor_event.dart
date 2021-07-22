part of 'crime_actor_bloc.dart';

@freezed
abstract class CrimeActorEvent with _$CrimeActorEvent {
  const factory CrimeActorEvent.deleted(Crime crime) = _Deleted;
}
