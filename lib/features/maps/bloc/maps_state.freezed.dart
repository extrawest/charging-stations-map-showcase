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
  bool get isLocationLoading => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;
  List<StationModel> get stations => throw _privateConstructorUsedError;
  GeolocationPermission get permission => throw _privateConstructorUsedError;
  LatLng? get location => throw _privateConstructorUsedError;
  MapType get mapType => throw _privateConstructorUsedError;
  List<StationClusterItem> get clusterItems =>
      throw _privateConstructorUsedError;

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
      bool isLocationLoading,
      Failure? failure,
      List<StationModel> stations,
      GeolocationPermission permission,
      LatLng? location,
      MapType mapType,
      List<StationClusterItem> clusterItems});
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
    Object? isLocationLoading = null,
    Object? failure = freezed,
    Object? stations = null,
    Object? permission = null,
    Object? location = freezed,
    Object? mapType = null,
    Object? clusterItems = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLocationLoading: null == isLocationLoading
          ? _value.isLocationLoading
          : isLocationLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      stations: null == stations
          ? _value.stations
          : stations // ignore: cast_nullable_to_non_nullable
              as List<StationModel>,
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
      clusterItems: null == clusterItems
          ? _value.clusterItems
          : clusterItems // ignore: cast_nullable_to_non_nullable
              as List<StationClusterItem>,
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
      bool isLocationLoading,
      Failure? failure,
      List<StationModel> stations,
      GeolocationPermission permission,
      LatLng? location,
      MapType mapType,
      List<StationClusterItem> clusterItems});
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
    Object? isLocationLoading = null,
    Object? failure = freezed,
    Object? stations = null,
    Object? permission = null,
    Object? location = freezed,
    Object? mapType = null,
    Object? clusterItems = null,
  }) {
    return _then(_$_MapsState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLocationLoading: null == isLocationLoading
          ? _value.isLocationLoading
          : isLocationLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      stations: null == stations
          ? _value._stations
          : stations // ignore: cast_nullable_to_non_nullable
              as List<StationModel>,
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
      clusterItems: null == clusterItems
          ? _value._clusterItems
          : clusterItems // ignore: cast_nullable_to_non_nullable
              as List<StationClusterItem>,
    ));
  }
}

/// @nodoc

class _$_MapsState extends _MapsState {
  const _$_MapsState(
      {required this.isLoading,
      required this.isLocationLoading,
      required this.failure,
      required final List<StationModel> stations,
      required this.permission,
      required this.location,
      required this.mapType,
      required final List<StationClusterItem> clusterItems})
      : _stations = stations,
        _clusterItems = clusterItems,
        super._();

  @override
  final bool isLoading;
  @override
  final bool isLocationLoading;
  @override
  final Failure? failure;
  final List<StationModel> _stations;
  @override
  List<StationModel> get stations {
    if (_stations is EqualUnmodifiableListView) return _stations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stations);
  }

  @override
  final GeolocationPermission permission;
  @override
  final LatLng? location;
  @override
  final MapType mapType;
  final List<StationClusterItem> _clusterItems;
  @override
  List<StationClusterItem> get clusterItems {
    if (_clusterItems is EqualUnmodifiableListView) return _clusterItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_clusterItems);
  }

  @override
  String toString() {
    return 'MapsState(isLoading: $isLoading, isLocationLoading: $isLocationLoading, failure: $failure, stations: $stations, permission: $permission, location: $location, mapType: $mapType, clusterItems: $clusterItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLocationLoading, isLocationLoading) ||
                other.isLocationLoading == isLocationLoading) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            const DeepCollectionEquality().equals(other._stations, _stations) &&
            (identical(other.permission, permission) ||
                other.permission == permission) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.mapType, mapType) || other.mapType == mapType) &&
            const DeepCollectionEquality()
                .equals(other._clusterItems, _clusterItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isLocationLoading,
      failure,
      const DeepCollectionEquality().hash(_stations),
      permission,
      location,
      mapType,
      const DeepCollectionEquality().hash(_clusterItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MapsStateCopyWith<_$_MapsState> get copyWith =>
      __$$_MapsStateCopyWithImpl<_$_MapsState>(this, _$identity);
}

abstract class _MapsState extends MapsState {
  const factory _MapsState(
      {required final bool isLoading,
      required final bool isLocationLoading,
      required final Failure? failure,
      required final List<StationModel> stations,
      required final GeolocationPermission permission,
      required final LatLng? location,
      required final MapType mapType,
      required final List<StationClusterItem> clusterItems}) = _$_MapsState;
  const _MapsState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get isLocationLoading;
  @override
  Failure? get failure;
  @override
  List<StationModel> get stations;
  @override
  GeolocationPermission get permission;
  @override
  LatLng? get location;
  @override
  MapType get mapType;
  @override
  List<StationClusterItem> get clusterItems;
  @override
  @JsonKey(ignore: true)
  _$$_MapsStateCopyWith<_$_MapsState> get copyWith =>
      throw _privateConstructorUsedError;
}
