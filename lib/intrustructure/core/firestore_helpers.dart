import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

extension FirestoreX on FirebaseFirestore {
  CollectionReference get crimeCollection => collection('crimes');
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get crimeCollection => collection('crimes');
}

extension StorageReferenceX on FirebaseStorage {
  Reference get imagesReference => ref().child('images');
}
