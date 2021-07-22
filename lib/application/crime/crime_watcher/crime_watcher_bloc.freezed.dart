// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'crime_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CrimeWatcherEventTearOff {
  const _$CrimeWatcherEventTearOff();

  _WatchAllCrimeStarted watchAllCrimeStarted() {
    return const _WatchAllCrimeStarted();
  }

  _CrimesRecieved crimesRecieved(
      Either<CrimeFailure, KtList<Crime>> failureOrNotes) {
    return _CrimesRecieved(
      failureOrNotes,
    );
  }
}

/// @nodoc
const $CrimeWatcherEvent = _$CrimeWatcherEventTearOff();

/// @nodoc
mixin _$CrimeWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllCrimeStarted,
    required TResult Function(
            Either<CrimeFailure, KtList<Crime>> failureOrNotes)
        crimesRecieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllCrimeStarted,
    TResult Function(Either<CrimeFailure, KtList<Crime>> failureOrNotes)?
        crimesRecieved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllCrimeStarted value) watchAllCrimeStarted,
    required TResult Function(_CrimesRecieved value) crimesRecieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllCrimeStarted value)? watchAllCrimeStarted,
    TResult Function(_CrimesRecieved value)? crimesRecieved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrimeWatcherEventCopyWith<$Res> {
  factory $CrimeWatcherEventCopyWith(
          CrimeWatcherEvent value, $Res Function(CrimeWatcherEvent) then) =
      _$CrimeWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CrimeWatcherEventCopyWithImpl<$Res>
    implements $CrimeWatcherEventCopyWith<$Res> {
  _$CrimeWatcherEventCopyWithImpl(this._value, this._then);

  final CrimeWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(CrimeWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllCrimeStartedCopyWith<$Res> {
  factory _$WatchAllCrimeStartedCopyWith(_WatchAllCrimeStarted value,
          $Res Function(_WatchAllCrimeStarted) then) =
      __$WatchAllCrimeStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllCrimeStartedCopyWithImpl<$Res>
    extends _$CrimeWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllCrimeStartedCopyWith<$Res> {
  __$WatchAllCrimeStartedCopyWithImpl(
      _WatchAllCrimeStarted _value, $Res Function(_WatchAllCrimeStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllCrimeStarted));

  @override
  _WatchAllCrimeStarted get _value => super._value as _WatchAllCrimeStarted;
}

/// @nodoc

class _$_WatchAllCrimeStarted implements _WatchAllCrimeStarted {
  const _$_WatchAllCrimeStarted();

  @override
  String toString() {
    return 'CrimeWatcherEvent.watchAllCrimeStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllCrimeStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllCrimeStarted,
    required TResult Function(
            Either<CrimeFailure, KtList<Crime>> failureOrNotes)
        crimesRecieved,
  }) {
    return watchAllCrimeStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllCrimeStarted,
    TResult Function(Either<CrimeFailure, KtList<Crime>> failureOrNotes)?
        crimesRecieved,
    required TResult orElse(),
  }) {
    if (watchAllCrimeStarted != null) {
      return watchAllCrimeStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllCrimeStarted value) watchAllCrimeStarted,
    required TResult Function(_CrimesRecieved value) crimesRecieved,
  }) {
    return watchAllCrimeStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllCrimeStarted value)? watchAllCrimeStarted,
    TResult Function(_CrimesRecieved value)? crimesRecieved,
    required TResult orElse(),
  }) {
    if (watchAllCrimeStarted != null) {
      return watchAllCrimeStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllCrimeStarted implements CrimeWatcherEvent {
  const factory _WatchAllCrimeStarted() = _$_WatchAllCrimeStarted;
}

/// @nodoc
abstract class _$CrimesRecievedCopyWith<$Res> {
  factory _$CrimesRecievedCopyWith(
          _CrimesRecieved value, $Res Function(_CrimesRecieved) then) =
      __$CrimesRecievedCopyWithImpl<$Res>;
  $Res call({Either<CrimeFailure, KtList<Crime>> failureOrNotes});
}

/// @nodoc
class __$CrimesRecievedCopyWithImpl<$Res>
    extends _$CrimeWatcherEventCopyWithImpl<$Res>
    implements _$CrimesRecievedCopyWith<$Res> {
  __$CrimesRecievedCopyWithImpl(
      _CrimesRecieved _value, $Res Function(_CrimesRecieved) _then)
      : super(_value, (v) => _then(v as _CrimesRecieved));

  @override
  _CrimesRecieved get _value => super._value as _CrimesRecieved;

  @override
  $Res call({
    Object? failureOrNotes = freezed,
  }) {
    return _then(_CrimesRecieved(
      failureOrNotes == freezed
          ? _value.failureOrNotes
          : failureOrNotes // ignore: cast_nullable_to_non_nullable
              as Either<CrimeFailure, KtList<Crime>>,
    ));
  }
}

/// @nodoc

class _$_CrimesRecieved implements _CrimesRecieved {
  const _$_CrimesRecieved(this.failureOrNotes);

  @override
  final Either<CrimeFailure, KtList<Crime>> failureOrNotes;

  @override
  String toString() {
    return 'CrimeWatcherEvent.crimesRecieved(failureOrNotes: $failureOrNotes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CrimesRecieved &&
            (identical(other.failureOrNotes, failureOrNotes) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrNotes, failureOrNotes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrNotes);

  @JsonKey(ignore: true)
  @override
  _$CrimesRecievedCopyWith<_CrimesRecieved> get copyWith =>
      __$CrimesRecievedCopyWithImpl<_CrimesRecieved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllCrimeStarted,
    required TResult Function(
            Either<CrimeFailure, KtList<Crime>> failureOrNotes)
        crimesRecieved,
  }) {
    return crimesRecieved(failureOrNotes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllCrimeStarted,
    TResult Function(Either<CrimeFailure, KtList<Crime>> failureOrNotes)?
        crimesRecieved,
    required TResult orElse(),
  }) {
    if (crimesRecieved != null) {
      return crimesRecieved(failureOrNotes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllCrimeStarted value) watchAllCrimeStarted,
    required TResult Function(_CrimesRecieved value) crimesRecieved,
  }) {
    return crimesRecieved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllCrimeStarted value)? watchAllCrimeStarted,
    TResult Function(_CrimesRecieved value)? crimesRecieved,
    required TResult orElse(),
  }) {
    if (crimesRecieved != null) {
      return crimesRecieved(this);
    }
    return orElse();
  }
}

abstract class _CrimesRecieved implements CrimeWatcherEvent {
  const factory _CrimesRecieved(
      Either<CrimeFailure, KtList<Crime>> failureOrNotes) = _$_CrimesRecieved;

  Either<CrimeFailure, KtList<Crime>> get failureOrNotes =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CrimesRecievedCopyWith<_CrimesRecieved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CrimeWatcherStateTearOff {
  const _$CrimeWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(KtList<Crime> crimes) {
    return _LoadSuccess(
      crimes,
    );
  }

  _LoadFailure loadFailure(CrimeFailure failure) {
    return _LoadFailure(
      failure,
    );
  }
}

/// @nodoc
const $CrimeWatcherState = _$CrimeWatcherStateTearOff();

/// @nodoc
mixin _$CrimeWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Crime> crimes) loadSuccess,
    required TResult Function(CrimeFailure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Crime> crimes)? loadSuccess,
    TResult Function(CrimeFailure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrimeWatcherStateCopyWith<$Res> {
  factory $CrimeWatcherStateCopyWith(
          CrimeWatcherState value, $Res Function(CrimeWatcherState) then) =
      _$CrimeWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CrimeWatcherStateCopyWithImpl<$Res>
    implements $CrimeWatcherStateCopyWith<$Res> {
  _$CrimeWatcherStateCopyWithImpl(this._value, this._then);

  final CrimeWatcherState _value;
  // ignore: unused_field
  final $Res Function(CrimeWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CrimeWatcherStateCopyWithImpl<$Res>
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
    return 'CrimeWatcherState.initial()';
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
    required TResult Function(KtList<Crime> crimes) loadSuccess,
    required TResult Function(CrimeFailure failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Crime> crimes)? loadSuccess,
    TResult Function(CrimeFailure failure)? loadFailure,
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
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CrimeWatcherState {
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
    extends _$CrimeWatcherStateCopyWithImpl<$Res>
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
    return 'CrimeWatcherState.loadInProgress()';
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
    required TResult Function(KtList<Crime> crimes) loadSuccess,
    required TResult Function(CrimeFailure failure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Crime> crimes)? loadSuccess,
    TResult Function(CrimeFailure failure)? loadFailure,
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
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements CrimeWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Crime> crimes});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$CrimeWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? crimes = freezed,
  }) {
    return _then(_LoadSuccess(
      crimes == freezed
          ? _value.crimes
          : crimes // ignore: cast_nullable_to_non_nullable
              as KtList<Crime>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.crimes);

  @override
  final KtList<Crime> crimes;

  @override
  String toString() {
    return 'CrimeWatcherState.loadSuccess(crimes: $crimes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.crimes, crimes) ||
                const DeepCollectionEquality().equals(other.crimes, crimes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(crimes);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Crime> crimes) loadSuccess,
    required TResult Function(CrimeFailure failure) loadFailure,
  }) {
    return loadSuccess(crimes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Crime> crimes)? loadSuccess,
    TResult Function(CrimeFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(crimes);
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
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements CrimeWatcherState {
  const factory _LoadSuccess(KtList<Crime> crimes) = _$_LoadSuccess;

  KtList<Crime> get crimes => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({CrimeFailure failure});

  $CrimeFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$CrimeWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_LoadFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as CrimeFailure,
    ));
  }

  @override
  $CrimeFailureCopyWith<$Res> get failure {
    return $CrimeFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure);

  @override
  final CrimeFailure failure;

  @override
  String toString() {
    return 'CrimeWatcherState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Crime> crimes) loadSuccess,
    required TResult Function(CrimeFailure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Crime> crimes)? loadSuccess,
    TResult Function(CrimeFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
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
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements CrimeWatcherState {
  const factory _LoadFailure(CrimeFailure failure) = _$_LoadFailure;

  CrimeFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
