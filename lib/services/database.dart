import 'package:brew_crew/models/brew.dart';
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

  // brew list from snapshot
  List<Brew> _brewListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return Brew(
          name: doc.data()['name'] ?? '',
          sugars: doc.data()['sugars'] ?? '0',
          strength: doc.data()['strength'] ?? 0);
    }).toList();
  }

  // get brew's steam
  Stream<List<Brew>> get brews {
    return brewColleciton.snapshots().map(_brewListFromSnapshot);
  }
}
