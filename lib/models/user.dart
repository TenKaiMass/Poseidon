import 'package:firebase_auth/firebase_auth.dart';

class Auth {
 // final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseAuth auth;
  Auth({required this.auth});
  User? get currentUser => auth.currentUser;

  Stream<User?> get authStateChanges => auth.authStateChanges();

  Future<void> sendPasswordResetEmail({
    required String mail,
  }) async {
    await auth.sendPasswordResetEmail(email: mail);
  }

  Future<void> signInWithEmailAndPassword({
    required String mail,
    required String mdp,
  }) async {
    await auth.signInWithEmailAndPassword(
      email: mail,
      password: mdp,
    );
  }

  Future<void> createUserWithEmailAndPassword({
    required String mail,
    required String mdp,
  }) async {
    await auth.createUserWithEmailAndPassword(
      email: mail,
      password: mdp,
    );
  }

  Future<void> signOut() async {
    await auth.signOut();
  }
}