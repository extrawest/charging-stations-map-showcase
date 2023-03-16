// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'maps_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MapsState {
  bool get isLoading => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;
  List<StationModel> get stations => throw _privateConstructorUsedError;
  Set<Marker> get markers => throw _privateConstructorUsedError;
  GeolocationPermission get permission => throw _privateConstructorUsedError;
  LatLng? get location => throw _privateConstructorUsedError;
  MapType get mapType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapsStateCopyWith<MapsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapsStateCopyWith<$Res> {
  factory $MapsStateCopyWith(MapsState value, $Res Function(MapsState) then) =
      _$MapsStateCopyWithImpl<$Res, MapsState>;
  @useResult
  $Res call(
      {bool isLoading,
      Failure? failure,
      List<StationModel> stations,
      Set<Marker> markers,
      GeolocationPermission permission,
      LatLng? location,
      MapType mapType});
}

/// @nodoc
class _$MapsStateCopyWithImpl<$Res, $Val extends MapsState>
    implements $MapsStateCopyWith<$Res> {
  _$MapsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failure = freezed,
    Object? stations = null,
    Object? markers = null,
    Object? permission = null,
    Object? location = freezed,
    Object? mapType = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      stations: null == stations
          ? _value.stations
          : stations // ignore: cast_nullable_to_non_nullable
              as List<StationModel>,
      markers: null == markers
          ? _value.markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
      permission: null == permission
          ? _value.permission
          : permission // ignore: cast_nullable_to_non_nullable
              as GeolocationPermission,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      mapType: null == mapType
          ? _value.mapType
          : mapType // ignore: cast_nullable_to_non_nullable
              as MapType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MapsStateCopyWith<$Res> implements $MapsStateCopyWith<$Res> {
  factory _$$_MapsStateCopyWith(
          _$_MapsState value, $Res Function(_$_MapsState) then) =
      __$$_MapsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Failure? failure,
      List<StationModel> stations,
      Set<Marker> markers,
      GeolocationPermission permission,
      LatLng? location,
      MapType mapType});
}

/// @nodoc
class __$$_MapsStateCopyWithImpl<$Res>
    extends _$MapsStateCopyWithImpl<$Res, _$_MapsState>
    implements _$$_MapsStateCopyWith<$Res> {
  __$$_MapsStateCopyWithImpl(
      _$_MapsState _value, $Res Function(_$_MapsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failure = freezed,
    Object? stations = null,
    Object? markers = null,
    Object? permission = null,
    Object? location = freezed,
    Object? mapType = null,
  }) {
    return _then(_$_MapsState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      stations: null == stations
          ? _value._stations
          : stations // ignore: cast_nullable_to_non_nullable
              as List<StationModel>,
      markers: null == markers
          ? _value._markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
      permission: null == permission
          ? _value.permission
          : permission // ignore: cast_nullable_to_non_nullable
              as GeolocationPermission,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      mapType: null == mapType
          ? _value.mapType
          : mapType // ignore: cast_nullable_to_non_nullable
              as MapType,
    ));
  }
}

/// @nodoc

class _$_MapsState extends _MapsState {
  const _$_MapsState(
      {required this.isLoading,
      required this.failure,
      required final List<StationModel> stations,
      required final Set<Marker> markers,
      required this.permission,
      required this.location,
      required this.mapType})
      : _stations = stations,
        _markers = markers,
        super._();

  @override
  final bool isLoading;
  @override
  final Failure? failure;
  final List<StationModel> _stations;
  @override
  List<StationModel> get stations {
    if (_stations is EqualUnmodifiableListView) return _stations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stations);
  }

  final Set<Marker> _markers;
  @override
  Set<Marker> get markers {
    if (_markers is EqualUnmodifiableSetView) return _markers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_markers);
  }

  @override
  final GeolocationPermission permission;
  @override
  final LatLng? location;
  @override
  final MapType mapType;

  @override
  String toString() {
    return 'MapsState(isLoading: $isLoading, failure: $failure, stations: $stations, markers: $markers, permission: $permission, location: $location, mapType: $mapType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            const DeepCollectionEquality().equals(other._stations, _stations) &&
            const DeepCollectionEquality().equals(other._markers, _markers) &&
            (identical(other.permission, permission) ||
                other.permission == permission) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.mapType, mapType) || other.mapType == mapType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      failure,
      const DeepCollectionEquality().hash(_stations),
      const DeepCollectionEquality().hash(_markers),
      permission,
      location,
      mapType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MapsStateCopyWith<_$_MapsState> get copyWith =>
      __$$_MapsStateCopyWithImpl<_$_MapsState>(this, _$identity);
}

abstract class _MapsState extends MapsState {
  const factory _MapsState(
      {required final bool isLoading,
      required final Failure? failure,
      required final List<StationModel> stations,
      required final Set<Marker> markers,
      required final GeolocationPermission permission,
      required final LatLng? location,
      required final MapType mapType}) = _$_MapsState;
  const _MapsState._() : super._();

  @override
  bool get isLoading;
  @override
  Failure? get failure;
  @override
  List<StationModel> get stations;
  @override
  Set<Marker> get markers;
  @override
  GeolocationPermission get permission;
  @override
  LatLng? get location;
  @override
  MapType get mapType;
  @override
  @JsonKey(ignore: true)
  _$$_MapsStateCopyWith<_$_MapsState> get copyWith =>
      throw _privateConstructorUsedError;
}
