// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i12;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i11;
import 'application/crime/crime_actor/crime_actor_bloc.dart' as _i13;
import 'application/crime/crime_form/crime_form_bloc.dart' as _i14;
import 'application/crime/crime_map/crime_map_bloc.dart' as _i15;
import 'application/crime/crime_watcher/crime_watcher_bloc.dart' as _i16;
import 'domain/auth/i_auth_facade.dart' as _i7;
import 'domain/crime/i_crime_repository.dart' as _i9;
import 'intrustructure/auth/auth_facade.dart' as _i8;
import 'intrustructure/core/firebase_injectable_module.dart' as _i17;
import 'intrustructure/crime/crime_repository.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firebaseFirestore);
  gh.lazySingleton<_i5.FirebaseStorage>(
      () => firebaseInjectableModule.firebaseStorage);
  gh.lazySingleton<_i6.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i7.IAuthFacade>(
      () => _i8.AuthFacade(get<_i6.GoogleSignIn>(), get<_i3.FirebaseAuth>()));
  gh.lazySingleton<_i9.ICrimeRepository>(() => _i10.CrimeRpository(
      get<_i4.FirebaseFirestore>(), get<_i5.FirebaseStorage>()));
  gh.factory<_i11.SignInFormBloc>(
      () => _i11.SignInFormBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i12.AuthBloc>(() => _i12.AuthBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i13.CrimeActorBloc>(
      () => _i13.CrimeActorBloc(get<_i9.ICrimeRepository>()));
  gh.factory<_i14.CrimeFormBloc>(
      () => _i14.CrimeFormBloc(get<_i9.ICrimeRepository>()));
  gh.factory<_i15.CrimeMapBloc>(
      () => _i15.CrimeMapBloc(get<_i9.ICrimeRepository>()));
  gh.factory<_i16.CrimeWatcherBloc>(
      () => _i16.CrimeWatcherBloc(get<_i9.ICrimeRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i17.FirebaseInjectableModule {}
