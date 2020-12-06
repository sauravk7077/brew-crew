import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  // collection reference

  final String uid;
  DatabaseService({this.uid});
  final CollectionReference brewColleciton =
      FirebaseFirestore.instance.collection("brews");

  Future updateUserData({String sugars, String name, int strength}) async {
    return await brewColleciton
        .doc(uid)
        .set({'sugars': sugars, 'name': name, 'strength': strength});
  }

  // get brew's steam
  Stream<QuerySnapshot> get brews {
    return brewColleciton.snapshots();
  }
}
