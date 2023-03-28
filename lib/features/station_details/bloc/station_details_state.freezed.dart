// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'station_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StationDetailsState {
  Failure? get failure => throw _privateConstructorUsedError;
  StationModel get stationModel => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;
  List<ConnectorModel> get connectors => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StationDetailsStateCopyWith<StationDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StationDetailsStateCopyWith<$Res> {
  factory $StationDetailsStateCopyWith(
          StationDetailsState value, $Res Function(StationDetailsState) then) =
      _$StationDetailsStateCopyWithImpl<$Res, StationDetailsState>;
  @useResult
  $Res call(
      {Failure? failure,
      StationModel stationModel,
      double? distance,
      List<ConnectorModel> connectors});

  $StationModelCopyWith<$Res> get stationModel;
}

/// @nodoc
class _$StationDetailsStateCopyWithImpl<$Res, $Val extends StationDetailsState>
    implements $StationDetailsStateCopyWith<$Res> {
  _$StationDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? stationModel = null,
    Object? distance = freezed,
    Object? connectors = null,
  }) {
    return _then(_value.copyWith(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      stationModel: null == stationModel
          ? _value.stationModel
          : stationModel // ignore: cast_nullable_to_non_nullable
              as StationModel,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      connectors: null == connectors
          ? _value.connectors
          : connectors // ignore: cast_nullable_to_non_nullable
              as List<ConnectorModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StationModelCopyWith<$Res> get stationModel {
    return $StationModelCopyWith<$Res>(_value.stationModel, (value) {
      return _then(_value.copyWith(stationModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StationDetailsStateCopyWith<$Res>
    implements $StationDetailsStateCopyWith<$Res> {
  factory _$$_StationDetailsStateCopyWith(_$_StationDetailsState value,
          $Res Function(_$_StationDetailsState) then) =
      __$$_StationDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Failure? failure,
      StationModel stationModel,
      double? distance,
      List<ConnectorModel> connectors});

  @override
  $StationModelCopyWith<$Res> get stationModel;
}

/// @nodoc
class __$$_StationDetailsStateCopyWithImpl<$Res>
    extends _$StationDetailsStateCopyWithImpl<$Res, _$_StationDetailsState>
    implements _$$_StationDetailsStateCopyWith<$Res> {
  __$$_StationDetailsStateCopyWithImpl(_$_StationDetailsState _value,
      $Res Function(_$_StationDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? stationModel = null,
    Object? distance = freezed,
    Object? connectors = null,
  }) {
    return _then(_$_StationDetailsState(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      stationModel: null == stationModel
          ? _value.stationModel
          : stationModel // ignore: cast_nullable_to_non_nullable
              as StationModel,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      connectors: null == connectors
          ? _value._connectors
          : connectors // ignore: cast_nullable_to_non_nullable
              as List<ConnectorModel>,
    ));
  }
}

/// @nodoc

class _$_StationDetailsState implements _StationDetailsState {
  const _$_StationDetailsState(
      {required this.failure,
      required this.stationModel,
      required this.distance,
      required final List<ConnectorModel> connectors})
      : _connectors = connectors;

  @override
  final Failure? failure;
  @override
  final StationModel stationModel;
  @override
  final double? distance;
  final List<ConnectorModel> _connectors;
  @override
  List<ConnectorModel> get connectors {
    if (_connectors is EqualUnmodifiableListView) return _connectors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_connectors);
  }

  @override
  String toString() {
    return 'StationDetailsState(failure: $failure, stationModel: $stationModel, distance: $distance, connectors: $connectors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StationDetailsState &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.stationModel, stationModel) ||
                other.stationModel == stationModel) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            const DeepCollectionEquality()
                .equals(other._connectors, _connectors));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure, stationModel, distance,
      const DeepCollectionEquality().hash(_connectors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StationDetailsStateCopyWith<_$_StationDetailsState> get copyWith =>
      __$$_StationDetailsStateCopyWithImpl<_$_StationDetailsState>(
          this, _$identity);
}

abstract class _StationDetailsState implements StationDetailsState {
  const factory _StationDetailsState(
      {required final Failure? failure,
      required final StationModel stationModel,
      required final double? distance,
      required final List<ConnectorModel> connectors}) = _$_StationDetailsState;

  @override
  Failure? get failure;
  @override
  StationModel get stationModel;
  @override
  double? get distance;
  @override
  List<ConnectorModel> get connectors;
  @override
  @JsonKey(ignore: true)
  _$$_StationDetailsStateCopyWith<_$_StationDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
