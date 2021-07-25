import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/crime/crime.dart';
import '../../domain/crime/crime_failure.dart';
import '../../domain/crime/i_crime_repository.dart';
import '../../domain/crime/value_objects.dart';
import '../core/firestore_helpers.dart';
import 'crime_dto.dart';

@LazySingleton(as: ICrimeRepository)
class CrimeRpository implements ICrimeRepository {
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseStorage _firebaseStorage;

  CrimeRpository(this._firebaseFirestore, this._firebaseStorage);

  @override
  Stream<Either<CrimeFailure, KtList<Crime>>> watchAllCrimes() async* {
    final crimeDoc = _firebaseFirestore.crimeCollection;
    yield* crimeDoc
        .snapshots()
        .map(
          (event) => right<CrimeFailure, KtList<Crime>>(
            event.docs
                .map(
                  (doc) => CrimeDto.fromFirestore(doc).toDomain(),
                )
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((error, stackTrace) {
      if (error is FirebaseException &&
          error.code.contains('permission-denied')) {
        return left(const CrimeFailure.insufficientPermission());
      } else {
        return left(const CrimeFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<CrimeFailure, Unit>> create(Crime crime) async {
    try {
      final KtList<CrimeDto> crimes = await getCrimesList();

      final crimeF = crimes.singleOrNull((c) =>
          c.latitude == crime.latitude.getOrCrash() &&
          c.longitude == crime.longitude.getOrCrash());

      if (crimeF == null) {
        final String downloadUrl = await uploadImage(crime);
        final crimeI =
            crime.copyWith(image: CrimeImage(downloadUrl.toString()));

        final crimeDoc = _firebaseFirestore.crimeCollection;
        final crimeDto = CrimeDto.fromDomain(crimeI);
        await crimeDoc.doc(crimeDto.id).set(crimeDto.toJson());
      } else {
        final crimeDoc = _firebaseFirestore.crimeCollection;
        final crimeDto = crimeF.copyWith(reportNumber: crimeF.reportNumber + 1);
        await crimeDoc.doc(crimeDto.id).update(crimeDto.toJson());
      }

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code.contains('permission-denied')) {
        return left(const CrimeFailure.insufficientPermission());
      } else {
        return left(const CrimeFailure.unexpected());
      }
    }
  }

  Future<KtList<CrimeDto>> getCrimesList() async {
    final crimes = await _firebaseFirestore.crimeCollection
        .snapshots()
        .map(
          (event) => event.docs
              .map(
                (doc) => CrimeDto.fromFirestore(doc),
              )
              .toImmutableList(),
        )
        .first;
    return crimes;
  }

  Future<String> uploadImage(Crime crime) async {
    final File file = File(crime.image.getOrCrash());
    final imageFileName = DateTime.now().microsecondsSinceEpoch.toString();
    final Reference ref = _firebaseStorage.imagesReference.child(imageFileName);

    final UploadTask uploadTask = ref.putFile(file);
    final storageSnapshot = await uploadTask;
    final downloadUrl = await storageSnapshot.ref.getDownloadURL();
    return downloadUrl;
  }

  @override
  Future<Either<CrimeFailure, Unit>> update(Crime crime) async {
    try {
      final crimeDoc = _firebaseFirestore.collection('crimes');
      final crimeDto = CrimeDto.fromDomain(crime);
      await crimeDoc.doc(crimeDto.id).update(crimeDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code.contains('permission_denied')) {
        return left(const CrimeFailure.insufficientPermission());
      } else if (e.code.contains('not_found')) {
        return left(const CrimeFailure.unableToUpdate());
      } else {
        return left(const CrimeFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<CrimeFailure, Unit>> delete(Crime crime) async {
    try {
      final crimeDoc = _firebaseFirestore.collection('crimes');
      final crimeDto = CrimeDto.fromDomain(crime);
      await crimeDoc.doc(crimeDto.id).delete();

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code.contains('permission_denied')) {
        return left(const CrimeFailure.insufficientPermission());
      } else {
        return left(const CrimeFailure.unexpected());
      }
    }
  }
}
