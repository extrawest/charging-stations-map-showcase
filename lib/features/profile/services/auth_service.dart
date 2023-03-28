import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../common/failure/failure.dart';
import '../models/user_model.dart';

abstract class AuthService {
  Future<Either<Failure, UserModel?>> signInWithGoogle();
  Future<Either<Failure, void>> logout();
  UserModel? get currentUser;
}

class FirebaseAuthService implements AuthService {
  FirebaseAuthService({
    required this.firebaseAuth,
    required this.googleSignIn,
  });

  final FirebaseAuth firebaseAuth;
  final GoogleSignIn googleSignIn;

  @override
  UserModel? get currentUser {
    final user = firebaseAuth.currentUser;
    if (user == null) {
      return null;
    }
    return UserModel.fromFirebaseUser(user);
  }

  @override
  Future<Either<Failure, void>> logout() async {
    try {
      await firebaseAuth.signOut();
      return const Right(null);
    } catch (error) {
      return Left(AuthenticationFailure(message: error.toString()));
    }
  }

  @override
  Future<Either<Failure, UserModel?>> signInWithGoogle() async {
    try {
      final account = await googleSignIn.signIn();
      if (account == null) {
        return const Right(null);
      }
      final authentication = await account.authentication;

      final googleCredentials = GoogleAuthProvider.credential(
        accessToken: authentication.accessToken,
        idToken: authentication.idToken,
      );

      final firebaseCredentials = await firebaseAuth.signInWithCredential(
        googleCredentials,
      );

      final user = firebaseCredentials.user;

      if (user == null) {
        return const Right(null);
      }

      return Right(UserModel.fromFirebaseUser(user));
    } catch (error) {
      return Left(AuthenticationFailure(message: error.toString()));
    }
  }
}
