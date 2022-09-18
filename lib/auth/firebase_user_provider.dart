import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class DianoAppFirebaseUser {
  DianoAppFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

DianoAppFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<DianoAppFirebaseUser> dianoAppFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<DianoAppFirebaseUser>(
            (user) => currentUser = DianoAppFirebaseUser(user));
