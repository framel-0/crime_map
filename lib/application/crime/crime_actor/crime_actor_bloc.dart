import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/crime/crime.dart';
import '../../../domain/crime/crime_failure.dart';
import '../../../domain/crime/i_crime_repository.dart';

part 'crime_actor_bloc.freezed.dart';
part 'crime_actor_event.dart';
part 'crime_actor_state.dart';

@injectable
class CrimeActorBloc extends Bloc<CrimeActorEvent, CrimeActorState> {
  final ICrimeRepository _crimeRepository;
  CrimeActorBloc(this._crimeRepository) : super(const _Initial());

  @override
  Stream<CrimeActorState> mapEventToState(
    CrimeActorEvent event,
  ) async* {
    yield const CrimeActorState.actionInprogress();
    final posibleFailure = await _crimeRepository.delete(event.crime);
    yield posibleFailure.fold(
      (l) => CrimeActorState.deleteFailure(l),
      (_) => const CrimeActorState.deleteSuccess(),
    );
  }
}
