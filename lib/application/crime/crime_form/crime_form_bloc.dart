import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/crime/crime.dart';
import '../../../domain/crime/crime_failure.dart';
import '../../../domain/crime/i_crime_repository.dart';
import '../../../domain/crime/value_objects.dart';

part 'crime_form_bloc.freezed.dart';
part 'crime_form_event.dart';
part 'crime_form_state.dart';

@injectable
class CrimeFormBloc extends Bloc<CrimeFormEvent, CrimeFormState> {
  final ICrimeRepository _eventRepository;
  CrimeFormBloc(this._eventRepository) : super(CrimeFormState.initial());

  @override
  Stream<CrimeFormState> mapEventToState(
    CrimeFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialNoteOption.fold(
            () => state,
            (initialNote) => state.copyWith(
                  crime: initialNote,
                  isEditing: true,
                ));
      },
      locationChanged: (e) async* {
        yield state.copyWith(
            crime: state.crime.copyWith(
          latitude: CrimeLatitude(e.location.latitude),
          longitude: CrimeLongitude(e.location.longitude),
        ));
      },
      imageChanged: (e) async* {
        yield state.copyWith(
            crime: state.crime.copyWith(
          image: e.imagePath,
        ));
      },
      saved: (e) async* {
        Either<CrimeFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        final isDescriptionValid = state.crime.failureOption.isNone();

        // if (isDescriptionValid) {
        failureOrSuccess = state.isEditing
            ? await _eventRepository.update(state.crime)
            : await _eventRepository.create(state.crime);
        // }

        yield state.copyWith(
          isSaving: false,
          showErrorMessage: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
