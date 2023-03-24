import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String email,
    required String id,
    required String? username,
    required String? avatarUrl,
  }) = _UserModel;

  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(
      username: user.displayName,
      id: user.uid,
      email: user.email ?? '',
      avatarUrl: user.photoURL,
    );
  }
}
