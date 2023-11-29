import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:teste/model/user.dart'; // Ajuste este caminho conforme necessário

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Future<void> addUser(User user) {
  //   return _db.collection('users').doc(user.id).set(user.toJson());
  // }

  Future<void> addUser(User user) {
    return _db
        .collection('users')
        .doc(user.id)
        .set({'name': 'chico', 'email': 'chico.b@terra'});
  }

  Stream<List<User>> getUsers() {
    return _db.collection('users').snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => User.fromDocument(doc)).toList());
  }
}
