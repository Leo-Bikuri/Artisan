import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ArtisanFirebaseUser {
  ArtisanFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

ArtisanFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ArtisanFirebaseUser> artisanFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<ArtisanFirebaseUser>(
        (user) => currentUser = ArtisanFirebaseUser(user));
