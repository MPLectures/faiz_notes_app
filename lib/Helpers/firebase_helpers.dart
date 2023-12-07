import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DbConstants {
  static var mainRef = FirebaseFirestore.instance;
  static var usersRef= mainRef.collection('users');
}

class AuthConstants {
  static User? get currentUser => FirebaseAuth.instance.currentUser;
  static bool get isUserLoggedIn => currentUser != null;
  static String? get currentUserId => currentUser?.uid;
}