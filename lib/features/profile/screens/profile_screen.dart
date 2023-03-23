import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/auth_cubit.dart';
import '../bloc/auth_state.dart';
import 'sign_in_screen.dart';
import 'signed_profile_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) => state.when(
        authenticated: (email, username, avatarUrl) => SignedProfileScreen(
          email: email,
          username: username,
          avatarUrl: avatarUrl,
        ),
        unauthenticated: (failure) => const SignInScreen(),
      ),
    );
  }
}
