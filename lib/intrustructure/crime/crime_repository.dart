import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/crime/crime.dart';
import '../../domain/crime/crime_failure.dart';
import '../../domain/crime/i_crime_repository.dart';
import '../core/firestore_helpers.dart';
import 'crime_dto.dart';

@LazySingleton(as: ICrimeRepository)
class CrimeRpository implements ICrimeRepository {
  final FirebaseFirestore _firestore;

  CrimeRpository(this._firestore);

  @override
  Stream<Either<CrimeFailure, KtList<Crime>>> watchAllCrimes() async* {
    final crimeDoc = await _firestore.crimeDocument();
    crimeDoc.crimeCollection.snapshots().map(
          (event) => right<CrimeFailure, KtList<Crime>>(
            event.docs
                .map(
                  (doc) => CrimeDto.fromFirestore(doc).toDomain(),
                )
                .toImmutableList(),
          ),
        );
  }

  @override
  Future<Either<CrimeFailure, Unit>> create(Crime crime) async {
    try {
      final crimeDoc = await _firestore.crimeDocument();
      final crimeDto = CrimeDto.fromDomain(crime);
      await crimeDoc.crimeCollection.doc(crimeDto.id).set(crimeDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('permission_denied')) {
        return left(const CrimeFailure.insufficientPermission());
      } else {
        return left(const CrimeFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<CrimeFailure, Unit>> update(Crime crime) async {
    try {
      final crimeDoc = await _firestore.crimeDocument();
      final crimeDto = CrimeDto.fromDomain(crime);
      await crimeDoc.crimeCollection.doc(crimeDto.id).update(crimeDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('permission_denied')) {
        return left(const CrimeFailure.insufficientPermission());
      } else if (e.message!.contains('not_found')) {
        return left(const CrimeFailure.unableToUpdate());
      } else {
        return left(const CrimeFailure.unexpected());
      }
    }
  }

  @override
  Future<bool> checkLocationPermission() async {
    // if (platform == TargetPlatform.android) {
    final PermissionStatus status = await Permission.location.status;
    if (!status.isGranted) {
      // final Map<Permission, PermissionStatus> permissions = await [
      //   Permission.location,
      // ].request();
      // if (permissions[Permission.location] == PermissionStatus.granted) {
      //   return true;
      // }
      return false;
    } else {
      return true;
    }
    // } else {
    //   return true;
    // }
    return false;
  }

  @override
  Future<Either<CrimeFailure, Unit>> delete(Crime crime) async {
    try {
      final crimeDoc = await _firestore.crimeDocument();
      final crimeDto = CrimeDto.fromDomain(crime);
      await crimeDoc.crimeCollection.doc(crimeDto.id).delete();

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('permission_denied')) {
        return left(const CrimeFailure.insufficientPermission());
      } else {
        return left(const CrimeFailure.unexpected());
      }
    }
  }
}
