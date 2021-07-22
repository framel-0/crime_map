// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i11;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i10;
import 'application/crime/crime_actor/crime_actor_bloc.dart' as _i12;
import 'application/crime/crime_form/crime_form_bloc.dart' as _i13;
import 'application/crime/crime_map/crime_map_bloc.dart' as _i14;
import 'application/crime/crime_watcher/crime_watcher_bloc.dart' as _i15;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'domain/crime/i_crime_repository.dart' as _i8;
import 'intrustructure/auth/auth_facade.dart' as _i7;
import 'intrustructure/core/firebase_injectable_module.dart' as _i16;
import 'intrustructure/crime/crime_repository.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i6.IAuthFacade>(
      () => _i7.AuthFacade(get<_i5.GoogleSignIn>(), get<_i3.FirebaseAuth>()));
  gh.lazySingleton<_i8.ICrimeRepository>(
      () => _i9.CrimeRpository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i10.SignInFormBloc>(
      () => _i10.SignInFormBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i11.AuthBloc>(() => _i11.AuthBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i12.CrimeActorBloc>(
      () => _i12.CrimeActorBloc(get<_i8.ICrimeRepository>()));
  gh.factory<_i13.CrimeFormBloc>(
      () => _i13.CrimeFormBloc(get<_i8.ICrimeRepository>()));
  gh.factory<_i14.CrimeMapBloc>(
      () => _i14.CrimeMapBloc(get<_i8.ICrimeRepository>()));
  gh.factory<_i15.CrimeWatcherBloc>(
      () => _i15.CrimeWatcherBloc(get<_i8.ICrimeRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i16.FirebaseInjectableModule {}