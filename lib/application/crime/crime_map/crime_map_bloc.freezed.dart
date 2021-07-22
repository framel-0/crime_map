// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'crime_map_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CrimeMapEventTearOff {
  const _$CrimeMapEventTearOff();

  CurrentLocationRequested currentLocationRequested() {
    return const CurrentLocationRequested();
  }

  CheckPermissionRequested checkPermissionRequested() {
    return const CheckPermissionRequested();
  }

  RequestPermissionRequested requestPermissionRequested() {
    return const RequestPermissionRequested();
  }
}

/// @nodoc
const $CrimeMapEvent = _$CrimeMapEventTearOff();

/// @nodoc
mixin _$CrimeMapEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentLocationRequested,
    required TResult Function() checkPermissionRequested,
    required TResult Function() requestPermissionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentLocationRequested,
    TResult Function()? checkPermissionRequested,
    TResult Function()? requestPermissionRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrentLocationRequested value)
        currentLocationRequested,
    required TResult Function(CheckPermissionRequested value)
        checkPermissionRequested,
    required TResult Function(RequestPermissionRequested value)
        requestPermissionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentLocationRequested value)? currentLocationRequested,
    TResult Function(CheckPermissionRequested value)? checkPermissionRequested,
    TResult Function(RequestPermissionRequested value)?
        requestPermissionRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrimeMapEventCopyWith<$Res> {
  factory $CrimeMapEventCopyWith(
          CrimeMapEvent value, $Res Function(CrimeMapEvent) then) =
      _$CrimeMapEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CrimeMapEventCopyWithImpl<$Res>
    implements $CrimeMapEventCopyWith<$Res> {
  _$CrimeMapEventCopyWithImpl(this._value, this._then);

  final CrimeMapEvent _value;
  // ignore: unused_field
  final $Res Function(CrimeMapEvent) _then;
}

/// @nodoc
abstract class $CurrentLocationRequestedCopyWith<$Res> {
  factory $CurrentLocationRequestedCopyWith(CurrentLocationRequested value,
          $Res Function(CurrentLocationRequested) then) =
      _$CurrentLocationRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CurrentLocationRequestedCopyWithImpl<$Res>
    extends _$CrimeMapEventCopyWithImpl<$Res>
    implements $CurrentLocationRequestedCopyWith<$Res> {
  _$CurrentLocationRequestedCopyWithImpl(CurrentLocationRequested _value,
      $Res Function(CurrentLocationRequested) _then)
      : super(_value, (v) => _then(v as CurrentLocationRequested));

  @override
  CurrentLocationRequested get _value =>
      super._value as CurrentLocationRequested;
}

/// @nodoc

class _$CurrentLocationRequested implements CurrentLocationRequested {
  const _$CurrentLocationRequested();

  @override
  String toString() {
    return 'CrimeMapEvent.currentLocationRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CurrentLocationRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentLocationRequested,
    required TResult Function() checkPermissionRequested,
    required TResult Function() requestPermissionRequested,
  }) {
    return currentLocationRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentLocationRequested,
    TResult Function()? checkPermissionRequested,
    TResult Function()? requestPermissionRequested,
    required TResult orElse(),
  }) {
    if (currentLocationRequested != null) {
      return currentLocationRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrentLocationRequested value)
        currentLocationRequested,
    required TResult Function(CheckPermissionRequested value)
        checkPermissionRequested,
    required TResult Function(RequestPermissionRequested value)
        requestPermissionRequested,
  }) {
    return currentLocationRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentLocationRequested value)? currentLocationRequested,
    TResult Function(CheckPermissionRequested value)? checkPermissionRequested,
    TResult Function(RequestPermissionRequested value)?
        requestPermissionRequested,
    required TResult orElse(),
  }) {
    if (currentLocationRequested != null) {
      return currentLocationRequested(this);
    }
    return orElse();
  }
}

abstract class CurrentLocationRequested implements CrimeMapEvent {
  const factory CurrentLocationRequested() = _$CurrentLocationRequested;
}

/// @nodoc
abstract class $CheckPermissionRequestedCopyWith<$Res> {
  factory $CheckPermissionRequestedCopyWith(CheckPermissionRequested value,
          $Res Function(CheckPermissionRequested) then) =
      _$CheckPermissionRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckPermissionRequestedCopyWithImpl<$Res>
    extends _$CrimeMapEventCopyWithImpl<$Res>
    implements $CheckPermissionRequestedCopyWith<$Res> {
  _$CheckPermissionRequestedCopyWithImpl(CheckPermissionRequested _value,
      $Res Function(CheckPermissionRequested) _then)
      : super(_value, (v) => _then(v as CheckPermissionRequested));

  @override
  CheckPermissionRequested get _value =>
      super._value as CheckPermissionRequested;
}

/// @nodoc

class _$CheckPermissionRequested implements CheckPermissionRequested {
  const _$CheckPermissionRequested();

  @override
  String toString() {
    return 'CrimeMapEvent.checkPermissionRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CheckPermissionRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentLocationRequested,
    required TResult Function() checkPermissionRequested,
    required TResult Function() requestPermissionRequested,
  }) {
    return checkPermissionRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentLocationRequested,
    TResult Function()? checkPermissionRequested,
    TResult Function()? requestPermissionRequested,
    required TResult orElse(),
  }) {
    if (checkPermissionRequested != null) {
      return checkPermissionRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrentLocationRequested value)
        currentLocationRequested,
    required TResult Function(CheckPermissionRequested value)
        checkPermissionRequested,
    required TResult Function(RequestPermissionRequested value)
        requestPermissionRequested,
  }) {
    return checkPermissionRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentLocationRequested value)? currentLocationRequested,
    TResult Function(CheckPermissionRequested value)? checkPermissionRequested,
    TResult Function(RequestPermissionRequested value)?
        requestPermissionRequested,
    required TResult orElse(),
  }) {
    if (checkPermissionRequested != null) {
      return checkPermissionRequested(this);
    }
    return orElse();
  }
}

abstract class CheckPermissionRequested implements CrimeMapEvent {
  const factory CheckPermissionRequested() = _$CheckPermissionRequested;
}

/// @nodoc
abstract class $RequestPermissionRequestedCopyWith<$Res> {
  factory $RequestPermissionRequestedCopyWith(RequestPermissionRequested value,
          $Res Function(RequestPermissionRequested) then) =
      _$RequestPermissionRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestPermissionRequestedCopyWithImpl<$Res>
    extends _$CrimeMapEventCopyWithImpl<$Res>
    implements $RequestPermissionRequestedCopyWith<$Res> {
  _$RequestPermissionRequestedCopyWithImpl(RequestPermissionRequested _value,
      $Res Function(RequestPermissionRequested) _then)
      : super(_value, (v) => _then(v as RequestPermissionRequested));

  @override
  RequestPermissionRequested get _value =>
      super._value as RequestPermissionRequested;
}

/// @nodoc

class _$RequestPermissionRequested implements RequestPermissionRequested {
  const _$RequestPermissionRequested();

  @override
  String toString() {
    return 'CrimeMapEvent.requestPermissionRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RequestPermissionRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentLocationRequested,
    required TResult Function() checkPermissionRequested,
    required TResult Function() requestPermissionRequested,
  }) {
    return requestPermissionRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentLocationRequested,
    TResult Function()? checkPermissionRequested,
    TResult Function()? requestPermissionRequested,
    required TResult orElse(),
  }) {
    if (requestPermissionRequested != null) {
      return requestPermissionRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrentLocationRequested value)
        currentLocationRequested,
    required TResult Function(CheckPermissionRequested value)
        checkPermissionRequested,
    required TResult Function(RequestPermissionRequested value)
        requestPermissionRequested,
  }) {
    return requestPermissionRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentLocationRequested value)? currentLocationRequested,
    TResult Function(CheckPermissionRequested value)? checkPermissionRequested,
    TResult Function(RequestPermissionRequested value)?
        requestPermissionRequested,
    required TResult orElse(),
  }) {
    if (requestPermissionRequested != null) {
      return requestPermissionRequested(this);
    }
    return orElse();
  }
}

abstract class RequestPermissionRequested implements CrimeMapEvent {
  const factory RequestPermissionRequested() = _$RequestPermissionRequested;
}

/// @nodoc
class _$CrimeMapStateTearOff {
  const _$CrimeMapStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(Position position, KtList<Crime> events) {
    return _LoadSuccess(
      position,
      events,
    );
  }

  _LoadFailure loadFailure() {
    return const _LoadFailure();
  }

  _LocationPermissionFailure locationPermissionFailure() {
    return const _LocationPermissionFailure();
  }
}

/// @nodoc
const $CrimeMapState = _$CrimeMapStateTearOff();

/// @nodoc
mixin _$CrimeMapState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Position position, KtList<Crime> events)
        loadSuccess,
    required TResult Function() loadFailure,
    required TResult Function() locationPermissionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Position position, KtList<Crime> events)? loadSuccess,
    TResult Function()? loadFailure,
    TResult Function()? locationPermissionFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LocationPermissionFailure value)
        locationPermissionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LocationPermissionFailure value)?
        locationPermissionFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrimeMapStateCopyWith<$Res> {
  factory $CrimeMapStateCopyWith(
          CrimeMapState value, $Res Function(CrimeMapState) then) =
      _$CrimeMapStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CrimeMapStateCopyWithImpl<$Res>
    implements $CrimeMapStateCopyWith<$Res> {
  _$CrimeMapStateCopyWithImpl(this._value, this._then);

  final CrimeMapState _value;
  // ignore: unused_field
  final $Res Function(CrimeMapState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CrimeMapStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CrimeMapState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Position position, KtList<Crime> events)
        loadSuccess,
    required TResult Function() loadFailure,
    required TResult Function() locationPermissionFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Position position, KtList<Crime> events)? loadSuccess,
    TResult Function()? loadFailure,
    TResult Function()? locationPermissionFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LocationPermissionFailure value)
        locationPermissionFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LocationPermissionFailure value)?
        locationPermissionFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CrimeMapState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$CrimeMapStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'CrimeMapState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Position position, KtList<Crime> events)
        loadSuccess,
    required TResult Function() loadFailure,
    required TResult Function() locationPermissionFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Position position, KtList<Crime> events)? loadSuccess,
    TResult Function()? loadFailure,
    TResult Function()? locationPermissionFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LocationPermissionFailure value)
        locationPermissionFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LocationPermissionFailure value)?
        locationPermissionFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements CrimeMapState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({Position position, KtList<Crime> events});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$CrimeMapStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? position = freezed,
    Object? events = freezed,
  }) {
    return _then(_LoadSuccess(
      position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
      events == freezed
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as KtList<Crime>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.position, this.events);

  @override
  final Position position;
  @override
  final KtList<Crime> events;

  @override
  String toString() {
    return 'CrimeMapState.loadSuccess(position: $position, events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.events, events) ||
                const DeepCollectionEquality().equals(other.events, events)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(events);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Position position, KtList<Crime> events)
        loadSuccess,
    required TResult Function() loadFailure,
    required TResult Function() locationPermissionFailure,
  }) {
    return loadSuccess(position, events);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Position position, KtList<Crime> events)? loadSuccess,
    TResult Function()? loadFailure,
    TResult Function()? locationPermissionFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(position, events);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LocationPermissionFailure value)
        locationPermissionFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LocationPermissionFailure value)?
        locationPermissionFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements CrimeMapState {
  const factory _LoadSuccess(Position position, KtList<Crime> events) =
      _$_LoadSuccess;

  Position get position => throw _privateConstructorUsedError;
  KtList<Crime> get events => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res> extends _$CrimeMapStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure();

  @override
  String toString() {
    return 'CrimeMapState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Position position, KtList<Crime> events)
        loadSuccess,
    required TResult Function() loadFailure,
    required TResult Function() locationPermissionFailure,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Position position, KtList<Crime> events)? loadSuccess,
    TResult Function()? loadFailure,
    TResult Function()? locationPermissionFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LocationPermissionFailure value)
        locationPermissionFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LocationPermissionFailure value)?
        locationPermissionFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements CrimeMapState {
  const factory _LoadFailure() = _$_LoadFailure;
}

/// @nodoc
abstract class _$LocationPermissionFailureCopyWith<$Res> {
  factory _$LocationPermissionFailureCopyWith(_LocationPermissionFailure value,
          $Res Function(_LocationPermissionFailure) then) =
      __$LocationPermissionFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$LocationPermissionFailureCopyWithImpl<$Res>
    extends _$CrimeMapStateCopyWithImpl<$Res>
    implements _$LocationPermissionFailureCopyWith<$Res> {
  __$LocationPermissionFailureCopyWithImpl(_LocationPermissionFailure _value,
      $Res Function(_LocationPermissionFailure) _then)
      : super(_value, (v) => _then(v as _LocationPermissionFailure));

  @override
  _LocationPermissionFailure get _value =>
      super._value as _LocationPermissionFailure;
}

/// @nodoc

class _$_LocationPermissionFailure implements _LocationPermissionFailure {
  const _$_LocationPermissionFailure();

  @override
  String toString() {
    return 'CrimeMapState.locationPermissionFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LocationPermissionFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Position position, KtList<Crime> events)
        loadSuccess,
    required TResult Function() loadFailure,
    required TResult Function() locationPermissionFailure,
  }) {
    return locationPermissionFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Position position, KtList<Crime> events)? loadSuccess,
    TResult Function()? loadFailure,
    TResult Function()? locationPermissionFailure,
    required TResult orElse(),
  }) {
    if (locationPermissionFailure != null) {
      return locationPermissionFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LocationPermissionFailure value)
        locationPermissionFailure,
  }) {
    return locationPermissionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LocationPermissionFailure value)?
        locationPermissionFailure,
    required TResult orElse(),
  }) {
    if (locationPermissionFailure != null) {
      return locationPermissionFailure(this);
    }
    return orElse();
  }
}

abstract class _LocationPermissionFailure implements CrimeMapState {
  const factory _LocationPermissionFailure() = _$_LocationPermissionFailure;
}
