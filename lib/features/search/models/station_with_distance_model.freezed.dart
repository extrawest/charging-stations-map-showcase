// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'station_with_distance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StationWithDistanceModel {
  StationModel get station => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StationWithDistanceModelCopyWith<StationWithDistanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StationWithDistanceModelCopyWith<$Res> {
  factory $StationWithDistanceModelCopyWith(StationWithDistanceModel value,
          $Res Function(StationWithDistanceModel) then) =
      _$StationWithDistanceModelCopyWithImpl<$Res, StationWithDistanceModel>;
  @useResult
  $Res call({StationModel station, double? distance});

  $StationModelCopyWith<$Res> get station;
}

/// @nodoc
class _$StationWithDistanceModelCopyWithImpl<$Res,
        $Val extends StationWithDistanceModel>
    implements $StationWithDistanceModelCopyWith<$Res> {
  _$StationWithDistanceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? station = null,
    Object? distance = freezed,
  }) {
    return _then(_value.copyWith(
      station: null == station
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as StationModel,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StationModelCopyWith<$Res> get station {
    return $StationModelCopyWith<$Res>(_value.station, (value) {
      return _then(_value.copyWith(station: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StationWithDistanceModelCopyWith<$Res>
    implements $StationWithDistanceModelCopyWith<$Res> {
  factory _$$_StationWithDistanceModelCopyWith(
          _$_StationWithDistanceModel value,
          $Res Function(_$_StationWithDistanceModel) then) =
      __$$_StationWithDistanceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StationModel station, double? distance});

  @override
  $StationModelCopyWith<$Res> get station;
}

/// @nodoc
class __$$_StationWithDistanceModelCopyWithImpl<$Res>
    extends _$StationWithDistanceModelCopyWithImpl<$Res,
        _$_StationWithDistanceModel>
    implements _$$_StationWithDistanceModelCopyWith<$Res> {
  __$$_StationWithDistanceModelCopyWithImpl(_$_StationWithDistanceModel _value,
      $Res Function(_$_StationWithDistanceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? station = null,
    Object? distance = freezed,
  }) {
    return _then(_$_StationWithDistanceModel(
      station: null == station
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as StationModel,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_StationWithDistanceModel implements _StationWithDistanceModel {
  const _$_StationWithDistanceModel(
      {required this.station, required this.distance});

  @override
  final StationModel station;
  @override
  final double? distance;

  @override
  String toString() {
    return 'StationWithDistanceModel(station: $station, distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StationWithDistanceModel &&
            (identical(other.station, station) || other.station == station) &&
            (identical(other.distance, distance) ||
                other.distance == distance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, station, distance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StationWithDistanceModelCopyWith<_$_StationWithDistanceModel>
      get copyWith => __$$_StationWithDistanceModelCopyWithImpl<
          _$_StationWithDistanceModel>(this, _$identity);
}

abstract class _StationWithDistanceModel implements StationWithDistanceModel {
  const factory _StationWithDistanceModel(
      {required final StationModel station,
      required final double? distance}) = _$_StationWithDistanceModel;

  @override
  StationModel get station;
  @override
  double? get distance;
  @override
  @JsonKey(ignore: true)
  _$$_StationWithDistanceModelCopyWith<_$_StationWithDistanceModel>
      get copyWith => throw _privateConstructorUsedError;
}
