import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maps_app/features/profile/models/user_model.dart';

import '../../../common/failure/failure.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authenticated({
    required String email,
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
      );
}
