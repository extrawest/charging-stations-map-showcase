// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geolocation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GeolocationState {
  LatLng? get position => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;
  GeolocationPermission get permission => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GeolocationStateCopyWith<GeolocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeolocationStateCopyWith<$Res> {
  factory $GeolocationStateCopyWith(
          GeolocationState value, $Res Function(GeolocationState) then) =
      _$GeolocationStateCopyWithImpl<$Res, GeolocationState>;
  @useResult
  $Res call(
      {LatLng? position,
      bool isLoading,
      Failure? failure,
      GeolocationPermission permission});
}

/// @nodoc
class _$GeolocationStateCopyWithImpl<$Res, $Val extends GeolocationState>
    implements $GeolocationStateCopyWith<$Res> {
  _$GeolocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = freezed,
    Object? isLoading = null,
    Object? failure = freezed,
    Object? permission = null,
  }) {
    return _then(_value.copyWith(
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      permission: null == permission
          ? _value.permission
          : permission // ignore: cast_nullable_to_non_nullable
              as GeolocationPermission,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GeolocationStateCopyWith<$Res>
    implements $GeolocationStateCopyWith<$Res> {
  factory _$$_GeolocationStateCopyWith(
          _$_GeolocationState value, $Res Function(_$_GeolocationState) then) =
      __$$_GeolocationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LatLng? position,
      bool isLoading,
      Failure? failure,
      GeolocationPermission permission});
}

/// @nodoc
class __$$_GeolocationStateCopyWithImpl<$Res>
    extends _$GeolocationStateCopyWithImpl<$Res, _$_GeolocationState>
    implements _$$_GeolocationStateCopyWith<$Res> {
  __$$_GeolocationStateCopyWithImpl(
      _$_GeolocationState _value, $Res Function(_$_GeolocationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = freezed,
    Object? isLoading = null,
    Object? failure = freezed,
    Object? permission = null,
  }) {
    return _then(_$_GeolocationState(
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      permission: null == permission
          ? _value.permission
          : permission // ignore: cast_nullable_to_non_nullable
              as GeolocationPermission,
    ));
  }
}

/// @nodoc

class _$_GeolocationState implements _GeolocationState {
  const _$_GeolocationState(
      {required this.position,
      required this.isLoading,
      required this.failure,
      required this.permission});

  @override
  final LatLng? position;
  @override
  final bool isLoading;
  @override
  final Failure? failure;
  @override
  final GeolocationPermission permission;

  @override
  String toString() {
    return 'GeolocationState(position: $position, isLoading: $isLoading, failure: $failure, permission: $permission)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeolocationState &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.permission, permission) ||
                other.permission == permission));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, position, isLoading, failure, permission);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeolocationStateCopyWith<_$_GeolocationState> get copyWith =>
      __$$_GeolocationStateCopyWithImpl<_$_GeolocationState>(this, _$identity);
}

abstract class _GeolocationState implements GeolocationState {
  const factory _GeolocationState(
      {required final LatLng? position,
      required final bool isLoading,
      required final Failure? failure,
      required final GeolocationPermission permission}) = _$_GeolocationState;

  @override
  LatLng? get position;
  @override
  bool get isLoading;
  @override
  Failure? get failure;
  @override
  GeolocationPermission get permission;
  @override
  @JsonKey(ignore: true)
  _$$_GeolocationStateCopyWith<_$_GeolocationState> get copyWith =>
      throw _privateConstructorUsedError;
}
