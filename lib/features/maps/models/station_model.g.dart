// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StationModel _$$_StationModelFromJson(Map<String, dynamic> json) =>
    _$_StationModel(
      stationId: json['stationId'] as String,
      tenantId: json['tenantId'] as String,
      chargePointId: json['chargePointId'] as String,
      longitude: (json['longitude'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
      status: $enumDecodeNullable(_$StationStatusEnumMap, json['status']) ??
          StationStatus.empty,
    );

Map<String, dynamic> _$$_StationModelToJson(_$_StationModel instance) =>
    <String, dynamic>{
      'stationId': instance.stationId,
      'tenantId': instance.tenantId,
      'chargePointId': instance.chargePointId,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'status': _$StationStatusEnumMap[instance.status]!,
    };

const _$StationStatusEnumMap = {
  StationStatus.available: 'available',
  StationStatus.busy: 'busy',
  StationStatus.offline: 'offline',
  StationStatus.empty: 'empty',
};
