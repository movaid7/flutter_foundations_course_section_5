import 'package:ecommerce_app/src/features/authentication/domain/app_user.dart';

class FakeAuthRepository {
  Stream<AppUser?> authStateChanges() =>
      Stream.value(null); // TODO: implement authStateChanges
  AppUser? get currentUser => null; // TODO: implement currentUser

  Future<void> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    await Future.delayed(const Duration(seconds: 1));
    // TODO: implement signInWithEmailAndPassword
  }

  Future<void> createUserWithEmailAndPassword(
    String email,
    String password,
  ) async {
    await Future.delayed(const Duration(seconds: 1));
    // TODO: implement createUserWithEmailAndPassword
  }

  Future<void> signOut() async {
    await Future.delayed(const Duration(seconds: 1));
    // TODO: implement signOut
  }
}
