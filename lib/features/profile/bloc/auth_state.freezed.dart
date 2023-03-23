// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String? username, String? avatarUrl)
        authenticated,
    required TResult Function(Failure? failure) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String? username, String? avatarUrl)?
        authenticated,
    TResult? Function(Failure? failure)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String? username, String? avatarUrl)?
        authenticated,
    TResult Function(Failure? failure)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateAuthenticated value) authenticated,
    required TResult Function(AuthStateUnauthenticated value) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateAuthenticated value)? authenticated,
    TResult? Function(AuthStateUnauthenticated value)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateAuthenticated value)? authenticated,
    TResult Function(AuthStateUnauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthStateAuthenticatedCopyWith<$Res> {
  factory _$$AuthStateAuthenticatedCopyWith(_$AuthStateAuthenticated value,
          $Res Function(_$AuthStateAuthenticated) then) =
      __$$AuthStateAuthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String? username, String? avatarUrl});
}

/// @nodoc
class __$$AuthStateAuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateAuthenticated>
    implements _$$AuthStateAuthenticatedCopyWith<$Res> {
  __$$AuthStateAuthenticatedCopyWithImpl(_$AuthStateAuthenticated _value,
      $Res Function(_$AuthStateAuthenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? username = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_$AuthStateAuthenticated(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthStateAuthenticated implements AuthStateAuthenticated {
  const _$AuthStateAuthenticated(
      {required this.email, required this.username, required this.avatarUrl});

  @override
  final String email;
  @override
  final String? username;
  @override
  final String? avatarUrl;

  @override
  String toString() {
    return 'AuthState.authenticated(email: $email, username: $username, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateAuthenticated &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, username, avatarUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateAuthenticatedCopyWith<_$AuthStateAuthenticated> get copyWith =>
      __$$AuthStateAuthenticatedCopyWithImpl<_$AuthStateAuthenticated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String? username, String? avatarUrl)
        authenticated,
    required TResult Function(Failure? failure) unauthenticated,
  }) {
    return authenticated(email, username, avatarUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String? username, String? avatarUrl)?
        authenticated,
    TResult? Function(Failure? failure)? unauthenticated,
  }) {
    return authenticated?.call(email, username, avatarUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String? username, String? avatarUrl)?
        authenticated,
    TResult Function(Failure? failure)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(email, username, avatarUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateAuthenticated value) authenticated,
    required TResult Function(AuthStateUnauthenticated value) unauthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateAuthenticated value)? authenticated,
    TResult? Function(AuthStateUnauthenticated value)? unauthenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateAuthenticated value)? authenticated,
    TResult Function(AuthStateUnauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AuthStateAuthenticated implements AuthState {
  const factory AuthStateAuthenticated(
      {required final String email,
      required final String? username,
      required final String? avatarUrl}) = _$AuthStateAuthenticated;

  String get email;
  String? get username;
  String? get avatarUrl;
  @JsonKey(ignore: true)
  _$$AuthStateAuthenticatedCopyWith<_$AuthStateAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthStateUnauthenticatedCopyWith<$Res> {
  factory _$$AuthStateUnauthenticatedCopyWith(_$AuthStateUnauthenticated value,
          $Res Function(_$AuthStateUnauthenticated) then) =
      __$$AuthStateUnauthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure? failure});
}

/// @nodoc
class __$$AuthStateUnauthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateUnauthenticated>
    implements _$$AuthStateUnauthenticatedCopyWith<$Res> {
  __$$AuthStateUnauthenticatedCopyWithImpl(_$AuthStateUnauthenticated _value,
      $Res Function(_$AuthStateUnauthenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$AuthStateUnauthenticated(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$AuthStateUnauthenticated implements AuthStateUnauthenticated {
  const _$AuthStateUnauthenticated({this.failure});

  @override
  final Failure? failure;

  @override
  String toString() {
    return 'AuthState.unauthenticated(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateUnauthenticated &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateUnauthenticatedCopyWith<_$AuthStateUnauthenticated>
      get copyWith =>
          __$$AuthStateUnauthenticatedCopyWithImpl<_$AuthStateUnauthenticated>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String? username, String? avatarUrl)
        authenticated,
    required TResult Function(Failure? failure) unauthenticated,
  }) {
    return unauthenticated(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String? username, String? avatarUrl)?
        authenticated,
    TResult? Function(Failure? failure)? unauthenticated,
  }) {
    return unauthenticated?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String? username, String? avatarUrl)?
        authenticated,
    TResult Function(Failure? failure)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateAuthenticated value) authenticated,
    required TResult Function(AuthStateUnauthenticated value) unauthenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateAuthenticated value)? authenticated,
    TResult? Function(AuthStateUnauthenticated value)? unauthenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateAuthenticated value)? authenticated,
    TResult Function(AuthStateUnauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class AuthStateUnauthenticated implements AuthState {
  const factory AuthStateUnauthenticated({final Failure? failure}) =
      _$AuthStateUnauthenticated;

  Failure? get failure;
  @JsonKey(ignore: true)
  _$$AuthStateUnauthenticatedCopyWith<_$AuthStateUnauthenticated>
      get copyWith => throw _privateConstructorUsedError;
}
