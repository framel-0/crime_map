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
      final File file = File(crime.image.getOrCrash());
      final imageFileName = DateTime.now().microsecondsSinceEpoch.toString();
      final Reference ref =
          _firebaseStorage.imagesReference.child(imageFileName);

      final UploadTask uploadTask = ref.putFile(file);
      final storageSnapshot = await uploadTask;
      final downloadUrl = await storageSnapshot.ref.getDownloadURL();
      final crimeI = crime.copyWith(image: CrimeImage(downloadUrl.toString()));

      final crimeDoc = _firebaseFirestore.crimeCollection;
      final crimeDto = CrimeDto.fromDomain(crimeI);
      await crimeDoc.doc(crimeDto.id).set(crimeDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code.contains('permission-denied')) {
        return left(const CrimeFailure.insufficientPermission());
      } else {
        return left(const CrimeFailure.unexpected());
      }
    }
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
