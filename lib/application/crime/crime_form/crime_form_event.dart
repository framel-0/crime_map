part of 'crime_form_bloc.dart';

@freezed
abstract class CrimeFormEvent with _$CrimeFormEvent {
  const factory CrimeFormEvent.initialized(Option<Crime> initialNoteOption) =
      _Initialized;

  const factory CrimeFormEvent.locationChanged(LatLng location) =
      _LocationChanged;

  const factory CrimeFormEvent.imageChanged(String imagePath) = _ImageChanged;

  const factory CrimeFormEvent.saved() = _Saved;
}
