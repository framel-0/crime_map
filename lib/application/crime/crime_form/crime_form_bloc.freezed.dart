// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'crime_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CrimeFormEventTearOff {
  const _$CrimeFormEventTearOff();

  _Initialized initialized(Option<Crime> initialNoteOption) {
    return _Initialized(
      initialNoteOption,
    );
  }

  _LocationChanged locationChanged(LatLng location) {
    return _LocationChanged(
      location,
    );
  }

  _ImageChanged imageChanged(String imagePath) {
    return _ImageChanged(
      imagePath,
    );
  }

  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
const $CrimeFormEvent = _$CrimeFormEventTearOff();

/// @nodoc
mixin _$CrimeFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Crime> initialNoteOption) initialized,
    required TResult Function(LatLng location) locationChanged,
    required TResult Function(String imagePath) imageChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Crime> initialNoteOption)? initialized,
    TResult Function(LatLng location)? locationChanged,
    TResult Function(String imagePath)? imageChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrimeFormEventCopyWith<$Res> {
  factory $CrimeFormEventCopyWith(
          CrimeFormEvent value, $Res Function(CrimeFormEvent) then) =
      _$CrimeFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CrimeFormEventCopyWithImpl<$Res>
    implements $CrimeFormEventCopyWith<$Res> {
  _$CrimeFormEventCopyWithImpl(this._value, this._then);

  final CrimeFormEvent _value;
  // ignore: unused_field
  final $Res Function(CrimeFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Crime> initialNoteOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$CrimeFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? initialNoteOption = freezed,
  }) {
    return _then(_Initialized(
      initialNoteOption == freezed
          ? _value.initialNoteOption
          : initialNoteOption // ignore: cast_nullable_to_non_nullable
              as Option<Crime>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialNoteOption);

  @override
  final Option<Crime> initialNoteOption;

  @override
  String toString() {
    return 'CrimeFormEvent.initialized(initialNoteOption: $initialNoteOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialNoteOption, initialNoteOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialNoteOption, initialNoteOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialNoteOption);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Crime> initialNoteOption) initialized,
    required TResult Function(LatLng location) locationChanged,
    required TResult Function(String imagePath) imageChanged,
    required TResult Function() saved,
  }) {
    return initialized(initialNoteOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Crime> initialNoteOption)? initialized,
    TResult Function(LatLng location)? locationChanged,
    TResult Function(String imagePath)? imageChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialNoteOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements CrimeFormEvent {
  const factory _Initialized(Option<Crime> initialNoteOption) = _$_Initialized;

  Option<Crime> get initialNoteOption => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LocationChangedCopyWith<$Res> {
  factory _$LocationChangedCopyWith(
          _LocationChanged value, $Res Function(_LocationChanged) then) =
      __$LocationChangedCopyWithImpl<$Res>;
  $Res call({LatLng location});
}

/// @nodoc
class __$LocationChangedCopyWithImpl<$Res>
    extends _$CrimeFormEventCopyWithImpl<$Res>
    implements _$LocationChangedCopyWith<$Res> {
  __$LocationChangedCopyWithImpl(
      _LocationChanged _value, $Res Function(_LocationChanged) _then)
      : super(_value, (v) => _then(v as _LocationChanged));

  @override
  _LocationChanged get _value => super._value as _LocationChanged;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_LocationChanged(
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$_LocationChanged implements _LocationChanged {
  const _$_LocationChanged(this.location);

  @override
  final LatLng location;

  @override
  String toString() {
    return 'CrimeFormEvent.locationChanged(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationChanged &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  _$LocationChangedCopyWith<_LocationChanged> get copyWith =>
      __$LocationChangedCopyWithImpl<_LocationChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Crime> initialNoteOption) initialized,
    required TResult Function(LatLng location) locationChanged,
    required TResult Function(String imagePath) imageChanged,
    required TResult Function() saved,
  }) {
    return locationChanged(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Crime> initialNoteOption)? initialized,
    TResult Function(LatLng location)? locationChanged,
    TResult Function(String imagePath)? imageChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (locationChanged != null) {
      return locationChanged(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return locationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (locationChanged != null) {
      return locationChanged(this);
    }
    return orElse();
  }
}

abstract class _LocationChanged implements CrimeFormEvent {
  const factory _LocationChanged(LatLng location) = _$_LocationChanged;

  LatLng get location => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LocationChangedCopyWith<_LocationChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ImageChangedCopyWith<$Res> {
  factory _$ImageChangedCopyWith(
          _ImageChanged value, $Res Function(_ImageChanged) then) =
      __$ImageChangedCopyWithImpl<$Res>;
  $Res call({String imagePath});
}

/// @nodoc
class __$ImageChangedCopyWithImpl<$Res>
    extends _$CrimeFormEventCopyWithImpl<$Res>
    implements _$ImageChangedCopyWith<$Res> {
  __$ImageChangedCopyWithImpl(
      _ImageChanged _value, $Res Function(_ImageChanged) _then)
      : super(_value, (v) => _then(v as _ImageChanged));

  @override
  _ImageChanged get _value => super._value as _ImageChanged;

  @override
  $Res call({
    Object? imagePath = freezed,
  }) {
    return _then(_ImageChanged(
      imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ImageChanged implements _ImageChanged {
  const _$_ImageChanged(this.imagePath);

  @override
  final String imagePath;

  @override
  String toString() {
    return 'CrimeFormEvent.imageChanged(imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageChanged &&
            (identical(other.imagePath, imagePath) ||
                const DeepCollectionEquality()
                    .equals(other.imagePath, imagePath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(imagePath);

  @JsonKey(ignore: true)
  @override
  _$ImageChangedCopyWith<_ImageChanged> get copyWith =>
      __$ImageChangedCopyWithImpl<_ImageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Crime> initialNoteOption) initialized,
    required TResult Function(LatLng location) locationChanged,
    required TResult Function(String imagePath) imageChanged,
    required TResult Function() saved,
  }) {
    return imageChanged(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Crime> initialNoteOption)? initialized,
    TResult Function(LatLng location)? locationChanged,
    TResult Function(String imagePath)? imageChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (imageChanged != null) {
      return imageChanged(imagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return imageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (imageChanged != null) {
      return imageChanged(this);
    }
    return orElse();
  }
}

abstract class _ImageChanged implements CrimeFormEvent {
  const factory _ImageChanged(String imagePath) = _$_ImageChanged;

  String get imagePath => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ImageChangedCopyWith<_ImageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$CrimeFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'CrimeFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Crime> initialNoteOption) initialized,
    required TResult Function(LatLng location) locationChanged,
    required TResult Function(String imagePath) imageChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Crime> initialNoteOption)? initialized,
    TResult Function(LatLng location)? locationChanged,
    TResult Function(String imagePath)? imageChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements CrimeFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$CrimeFormStateTearOff {
  const _$CrimeFormStateTearOff();

  _CrimeFormState call(
      {required Crime crime,
      required bool showErrorMessage,
      required bool isSaving,
      required bool isEditing,
      required Option<Either<CrimeFailure, Unit>> saveFailureOrSuccessOption}) {
    return _CrimeFormState(
      crime: crime,
      showErrorMessage: showErrorMessage,
      isSaving: isSaving,
      isEditing: isEditing,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $CrimeFormState = _$CrimeFormStateTearOff();

/// @nodoc
mixin _$CrimeFormState {
  Crime get crime => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  Option<Either<CrimeFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CrimeFormStateCopyWith<CrimeFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrimeFormStateCopyWith<$Res> {
  factory $CrimeFormStateCopyWith(
          CrimeFormState value, $Res Function(CrimeFormState) then) =
      _$CrimeFormStateCopyWithImpl<$Res>;
  $Res call(
      {Crime crime,
      bool showErrorMessage,
      bool isSaving,
      bool isEditing,
      Option<Either<CrimeFailure, Unit>> saveFailureOrSuccessOption});

  $CrimeCopyWith<$Res> get crime;
}

/// @nodoc
class _$CrimeFormStateCopyWithImpl<$Res>
    implements $CrimeFormStateCopyWith<$Res> {
  _$CrimeFormStateCopyWithImpl(this._value, this._then);

  final CrimeFormState _value;
  // ignore: unused_field
  final $Res Function(CrimeFormState) _then;

  @override
  $Res call({
    Object? crime = freezed,
    Object? showErrorMessage = freezed,
    Object? isSaving = freezed,
    Object? isEditing = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      crime: crime == freezed
          ? _value.crime
          : crime // ignore: cast_nullable_to_non_nullable
              as Crime,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CrimeFailure, Unit>>,
    ));
  }

  @override
  $CrimeCopyWith<$Res> get crime {
    return $CrimeCopyWith<$Res>(_value.crime, (value) {
      return _then(_value.copyWith(crime: value));
    });
  }
}

/// @nodoc
abstract class _$CrimeFormStateCopyWith<$Res>
    implements $CrimeFormStateCopyWith<$Res> {
  factory _$CrimeFormStateCopyWith(
          _CrimeFormState value, $Res Function(_CrimeFormState) then) =
      __$CrimeFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Crime crime,
      bool showErrorMessage,
      bool isSaving,
      bool isEditing,
      Option<Either<CrimeFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $CrimeCopyWith<$Res> get crime;
}

/// @nodoc
class __$CrimeFormStateCopyWithImpl<$Res>
    extends _$CrimeFormStateCopyWithImpl<$Res>
    implements _$CrimeFormStateCopyWith<$Res> {
  __$CrimeFormStateCopyWithImpl(
      _CrimeFormState _value, $Res Function(_CrimeFormState) _then)
      : super(_value, (v) => _then(v as _CrimeFormState));

  @override
  _CrimeFormState get _value => super._value as _CrimeFormState;

  @override
  $Res call({
    Object? crime = freezed,
    Object? showErrorMessage = freezed,
    Object? isSaving = freezed,
    Object? isEditing = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_CrimeFormState(
      crime: crime == freezed
          ? _value.crime
          : crime // ignore: cast_nullable_to_non_nullable
              as Crime,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CrimeFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_CrimeFormState implements _CrimeFormState {
  const _$_CrimeFormState(
      {required this.crime,
      required this.showErrorMessage,
      required this.isSaving,
      required this.isEditing,
      required this.saveFailureOrSuccessOption});

  @override
  final Crime crime;
  @override
  final bool showErrorMessage;
  @override
  final bool isSaving;
  @override
  final bool isEditing;
  @override
  final Option<Either<CrimeFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'CrimeFormState(crime: $crime, showErrorMessage: $showErrorMessage, isSaving: $isSaving, isEditing: $isEditing, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CrimeFormState &&
            (identical(other.crime, crime) ||
                const DeepCollectionEquality().equals(other.crime, crime)) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessage, showErrorMessage)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(crime) ^
      const DeepCollectionEquality().hash(showErrorMessage) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$CrimeFormStateCopyWith<_CrimeFormState> get copyWith =>
      __$CrimeFormStateCopyWithImpl<_CrimeFormState>(this, _$identity);
}

abstract class _CrimeFormState implements CrimeFormState {
  const factory _CrimeFormState(
      {required Crime crime,
      required bool showErrorMessage,
      required bool isSaving,
      required bool isEditing,
      required Option<Either<CrimeFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_CrimeFormState;

  @override
  Crime get crime => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessage => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override
  bool get isEditing => throw _privateConstructorUsedError;
  @override
  Option<Either<CrimeFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CrimeFormStateCopyWith<_CrimeFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
