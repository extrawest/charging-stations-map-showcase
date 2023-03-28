import 'package:flutter_bloc/flutter_bloc.dart';

import '../services/auth_service.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({
    required AuthService authService,
  })  : _authService = authService,
        super(const AuthState.unauthenticated()) {
    init();
  }

  final AuthService _authService;

  void init() {
    final user = _authService.currentUser;
    if (user != null) {
      emit(AuthState.fromUser(user));
    }
  }

  Future<void> signIn() async {
    final signInResult = await _authService.signInWithGoogle();

    final newState = signInResult.match(
      (failure) => AuthState.unauthenticated(failure: failure),
      (user) {
        if (user == null) {
          return const AuthState.unauthenticated();
        }
        return AuthState.fromUser(user);
      },
    );

    emit(newState);
  }

  Future<void> logout() async {
    final logoutResult = await _authService.logout();
    emit(
      logoutResult.match(
        (failure) => AuthState.unauthenticated(failure: failure),
        (_) => const AuthState.unauthenticated(),
      ),
    );
  }
}
