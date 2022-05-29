import 'package:itec/services/database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:itec/models/user.dart';

List<String> badgeNames = [
  'global_health',
  'polio',
  'maternal_mortality',
  'child_mortaliy',
  'malaria',
  'suicide',
  'burden_of_diseases',
  'eradication_of_diseases',
  'cause_of_death',
  'financing_healthcare',
  'smoking'
];

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  CustomUser? _customUserFromFirebaseUser(User? user) {
    return user != null ? CustomUser(uid: user.uid) : null;
  }

  // Auth change user stream
  Stream<CustomUser?> get user {
    return _auth.authStateChanges().map(_customUserFromFirebaseUser);
  }

  // Sign in Anon
  Future signInAnon() async {
    try {
      UserCredential credential = await _auth.signInAnonymously();
      User? user = credential.user;
      return _customUserFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Sign in with email & password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = credential.user;
      return _customUserFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Register with email & password
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = credential.user;

      Map<String, dynamic> mapa = {};
      for (String badgeName in badgeNames) {
        mapa[badgeName] = false;
      }

      await DatabaseService(uid: user!.uid).updateUserData(mapa);
      // Create a new document for the user with the uid
      // await DatabaseService(uid: user!.uid).updateUserData('0', 'John Doe', 100);
      print('TEEEEST');
      print(user.uid);
      return _customUserFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
