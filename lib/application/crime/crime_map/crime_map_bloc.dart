import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:crime_map/domain/crime/crime_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../../domain/crime/crime.dart';
import '../../../domain/crime/i_crime_repository.dart';

part 'crime_map_bloc.freezed.dart';
part 'crime_map_event.dart';
part 'crime_map_state.dart';

@injectable
class CrimeMapBloc extends Bloc<CrimeMapEvent, CrimeMapState> {
  final ICrimeRepository _repository;
  CrimeMapBloc(this._repository) : super(_Initial());

  @override
  Stream<CrimeMapState> mapEventToState(
    CrimeMapEvent event,
  ) async* {
    yield* event.map(
      currentLocationRequested: (e) async* {
        Either<CrimeFailure, KtList<Crime>> failureOrSuccess;
        yield const CrimeMapState.loadInProgress();

        // final perm = await _repository.checkLocationPermission();

        // if (perm) {
        final position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.bestForNavigation,
            forceAndroidLocationManager: true);

        // if (position != null) {
        //   failureOrSuccess = await _repository.getCrimes();
        //   yield failureOrSuccess.fold(
        //     (l) => const CrimeMapState.loadFailure(),
        //     (events) => CrimeMapState.loadSuccess(position, events),
        //   );
        // } else {
        //   yield const CrimeMapState.loadFailure();
        // }
        // } else {
        //   yield const CrimeMapState.locationPermissionFailure();
        // }
      },
      checkPermissionRequested: (e) async* {
        yield const CrimeMapState.loadInProgress();

        LocationPermission permission = await Geolocator.checkPermission();
      },
      requestPermissionRequested: (e) async* {},
    );
  }
}
