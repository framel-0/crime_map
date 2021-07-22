import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../../domain/crime/crime.dart';
import '../../../domain/crime/crime_failure.dart';
import '../../../domain/crime/i_crime_repository.dart';

part 'crime_watcher_bloc.freezed.dart';
part 'crime_watcher_event.dart';
part 'crime_watcher_state.dart';

@injectable
class CrimeWatcherBloc extends Bloc<CrimeWatcherEvent, CrimeWatcherState> {
  final ICrimeRepository _crimeRepository;

  CrimeWatcherBloc(this._crimeRepository) : super(const _Initial());

  StreamSubscription<Either<CrimeFailure, KtList<Crime>>>?
      _crimeStreamSubscription;

  @override
  Stream<CrimeWatcherState> mapEventToState(
    CrimeWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllCrimeStarted: (e) async* {
        yield const CrimeWatcherState.loadInProgress();
        await _crimeStreamSubscription?.cancel();
        _crimeStreamSubscription = _crimeRepository.watchAllCrimes().listen(
            (failureOrNotes) =>
                add(CrimeWatcherEvent.crimesRecieved(failureOrNotes)));
      },
      crimesRecieved: (e) async* {
        yield e.failureOrNotes.fold(
          (f) => CrimeWatcherState.loadFailure(f),
          (crimes) => CrimeWatcherState.loadSuccess(crimes),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _crimeStreamSubscription?.cancel();
    return super.close();
  }
}
