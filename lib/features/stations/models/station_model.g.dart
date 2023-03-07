// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StationModel _$$_StationModelFromJson(Map<String, dynamic> json) =>
    _$_StationModel(
      stationId: json['station_id'] as String,
      tenantId: json['tenant_id'] as String,
      chargePointId: json['charge_point_id'] as String,
      longitude: (json['longitude'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
      status: $enumDecode(_$StationStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$_StationModelToJson(_$_StationModel instance) =>
    <String, dynamic>{
      'station_id': instance.stationId,
      'tenant_id': instance.tenantId,
      'charge_point_id': instance.chargePointId,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'status': _$StationStatusEnumMap[instance.status]!,
    };

const _$StationStatusEnumMap = {
  StationStatus.available: 'available',
  StationStatus.budy: 'budy',
};
