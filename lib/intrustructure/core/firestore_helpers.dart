import 'package:cloud_firestore/cloud_firestore.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> crimeDocument() async {
    return FirebaseFirestore.instance.collection('crimes').doc();
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get crimeCollection => collection('crimes');
}
