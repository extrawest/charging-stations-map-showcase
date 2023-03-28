// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'station_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StationModel _$StationModelFromJson(Map<String, dynamic> json) {
  return _StationModel.fromJson(json);
}

/// @nodoc
mixin _$StationModel {
  String get stationId => throw _privateConstructorUsedError;
  String get tenantId => throw _privateConstructorUsedError;
  String get chargePointId => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  bool get isFavourite => throw _privateConstructorUsedError;
  StationStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StationModelCopyWith<StationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StationModelCopyWith<$Res> {
  factory $StationModelCopyWith(
          StationModel value, $Res Function(StationModel) then) =
      _$StationModelCopyWithImpl<$Res, StationModel>;
  @useResult
  $Res call(
      {String stationId,
      String tenantId,
      String chargePointId,
      double longitude,
      double latitude,
      bool isFavourite,
      StationStatus status});
}

/// @nodoc
class _$StationModelCopyWithImpl<$Res, $Val extends StationModel>
    implements $StationModelCopyWith<$Res> {
  _$StationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stationId = null,
    Object? tenantId = null,
    Object? chargePointId = null,
    Object? longitude = null,
    Object? latitude = null,
    Object? isFavourite = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      stationId: null == stationId
          ? _value.stationId
          : stationId // ignore: cast_nullable_to_non_nullable
              as String,
      tenantId: null == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String,
      chargePointId: null == chargePointId
          ? _value.chargePointId
          : chargePointId // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StationStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StationModelCopyWith<$Res>
    implements $StationModelCopyWith<$Res> {
  factory _$$_StationModelCopyWith(
          _$_StationModel value, $Res Function(_$_StationModel) then) =
      __$$_StationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String stationId,
      String tenantId,
      String chargePointId,
      double longitude,
      double latitude,
      bool isFavourite,
      StationStatus status});
}

/// @nodoc
class __$$_StationModelCopyWithImpl<$Res>
    extends _$StationModelCopyWithImpl<$Res, _$_StationModel>
    implements _$$_StationModelCopyWith<$Res> {
  __$$_StationModelCopyWithImpl(
      _$_StationModel _value, $Res Function(_$_StationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stationId = null,
    Object? tenantId = null,
    Object? chargePointId = null,
    Object? longitude = null,
    Object? latitude = null,
    Object? isFavourite = null,
    Object? status = null,
  }) {
    return _then(_$_StationModel(
      stationId: null == stationId
          ? _value.stationId
          : stationId // ignore: cast_nullable_to_non_nullable
              as String,
      tenantId: null == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String,
      chargePointId: null == chargePointId
          ? _value.chargePointId
          : chargePointId // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StationStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StationModel extends _StationModel {
  const _$_StationModel(
      {required this.stationId,
      required this.tenantId,
      required this.chargePointId,
      required this.longitude,
      required this.latitude,
      this.isFavourite = false,
      this.status = StationStatus.empty})
      : super._();

  factory _$_StationModel.fromJson(Map<String, dynamic> json) =>
      _$$_StationModelFromJson(json);

  @override
  final String stationId;
  @override
  final String tenantId;
  @override
  final String chargePointId;
  @override
  final double longitude;
  @override
  final double latitude;
  @override
  @JsonKey()
  final bool isFavourite;
  @override
  @JsonKey()
  final StationStatus status;

  @override
  String toString() {
    return 'StationModel(stationId: $stationId, tenantId: $tenantId, chargePointId: $chargePointId, longitude: $longitude, latitude: $latitude, isFavourite: $isFavourite, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StationModel &&
            (identical(other.stationId, stationId) ||
                other.stationId == stationId) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.chargePointId, chargePointId) ||
                other.chargePointId == chargePointId) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.isFavourite, isFavourite) ||
                other.isFavourite == isFavourite) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, stationId, tenantId,
      chargePointId, longitude, latitude, isFavourite, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StationModelCopyWith<_$_StationModel> get copyWith =>
      __$$_StationModelCopyWithImpl<_$_StationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StationModelToJson(
      this,
    );
  }
}

abstract class _StationModel extends StationModel {
  const factory _StationModel(
      {required final String stationId,
      required final String tenantId,
      required final String chargePointId,
      required final double longitude,
      required final double latitude,
      final bool isFavourite,
      final StationStatus status}) = _$_StationModel;
  const _StationModel._() : super._();

  factory _StationModel.fromJson(Map<String, dynamic> json) =
      _$_StationModel.fromJson;

  @override
  String get stationId;
  @override
  String get tenantId;
  @override
  String get chargePointId;
  @override
  double get longitude;
  @override
  double get latitude;
  @override
  bool get isFavourite;
  @override
  StationStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_StationModelCopyWith<_$_StationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
