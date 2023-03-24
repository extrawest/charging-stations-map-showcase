import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/failure/failure.dart';
import '../models/user_model.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authenticated({
    required String email,
    required String id,
    required String? username,
    required String? avatarUrl,
  }) = AuthStateAuthenticated;

  const factory AuthState.unauthenticated({
    Failure? failure,
  }) = AuthStateUnauthenticated;

  factory AuthState.fromUser(UserModel user) => AuthState.authenticated(
        email: user.email,
        username: user.username,
        avatarUrl: user.avatarUrl,
        id: user.id,
      );
}
