part of '../../common/di/injector_module.dart';

class _GoogleSignInBootstraper {
  Future<GoogleSignIn> intitializeGoogleSignIn() async {
    final credentials = await loadCredentials();
    final googleSignIn = GoogleSignIn(
      clientId: kIsWeb ? credentials.googleClientIdWeb : null,
    );
    return googleSignIn;
  }
}
