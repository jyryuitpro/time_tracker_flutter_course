import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthBase {
  Stream<User?> authStateChanges();
  User? get currentUser;
  Future<User?> signInAnonymously();
  Future<void> signOut();
}

class Auth implements AuthBase {
  final _firebaseAuth = FirebaseAuth.instance;

  @override
  Stream<User?> authStateChanges() => _firebaseAuth.authStateChanges();

  @override
  User? get currentUser => _firebaseAuth.currentUser;

  @override
  Future<User?> signInAnonymously() async {
    final userCredentials = await _firebaseAuth.signInAnonymously();
    return userCredentials.user;
  }

  @override
  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}