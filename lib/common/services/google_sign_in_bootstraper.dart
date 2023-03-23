// ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../utils/load_credentials.dart';

abstract class GoogleSignInBootstraper {
  static Future<GoogleSignIn> intitializeGoogleSignIn() async {
    final credentials = await loadCredentials();
    final googleSignIn = GoogleSignIn(
      clientId: kIsWeb ? credentials.googleClientIdWeb : null,
    );
    return googleSignIn;
  }
}
