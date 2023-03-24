import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../profile/profile.dart';
import 'signed_favourites_screen.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) => state.when(
        authenticated: (_, userId, __, ___) => SignedFavouritesScreen(
          userId: userId,
        ),
        unauthenticated: (_) => const SignInScreen(),
      ),
    );
  }
}
