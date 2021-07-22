import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import 'crime.dart';
import 'crime_failure.dart';

abstract class ICrimeRepository {
  Stream<Either<CrimeFailure, KtList<Crime>>> watchAllCrimes();
  Future<Either<CrimeFailure, Unit>> create(Crime crime);
  Future<Either<CrimeFailure, Unit>> update(Crime crime);
  Future<Either<CrimeFailure, Unit>> delete(Crime crime);
  Future<bool> checkLocationPermission();
}
