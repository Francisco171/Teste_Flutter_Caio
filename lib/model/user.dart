import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String id;
  String name;
  String email;

  User({required this.id, required this.name, required this.email});

  factory User.fromDocument(DocumentSnapshot doc) {
    return User(
      id: doc.id,
      name: doc['name'] ?? '',
      email: doc['email'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
    };
  }

  static fromMap(Map<String, dynamic> data) {}
}
