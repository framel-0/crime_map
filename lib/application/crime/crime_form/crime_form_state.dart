part of 'crime_form_bloc.dart';

@freezed
abstract class CrimeFormState with _$CrimeFormState {
  const factory CrimeFormState({
    required Crime crime,
    required bool showErrorMessage,
    required bool isSaving,
    required bool isEditing,
    required Option<Either<CrimeFailure, Unit>> saveFailureOrSuccessOption,
  }) = _CrimeFormState;

  factory CrimeFormState.initial() => CrimeFormState(
        crime: Crime.empty(),
        showErrorMessage: false,
        isSaving: false,
        isEditing: false,
        saveFailureOrSuccessOption: none(),
      );
}
