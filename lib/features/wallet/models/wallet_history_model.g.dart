// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WalletHistoryModel _$$_WalletHistoryModelFromJson(
        Map<String, dynamic> json) =>
    _$_WalletHistoryModel(
      datetimeStarted: DateTime.parse(json['datetime_started'] as String),
      datetimeFinished: DateTime.parse(json['datetime_finished'] as String),
      bill: (json['bill'] as num).toDouble(),
      consumedKwh: (json['consumed_kwh'] as num).toDouble(),
      stationName: json['station_name'] as String,
    );

Map<String, dynamic> _$$_WalletHistoryModelToJson(
        _$_WalletHistoryModel instance) =>
    <String, dynamic>{
      'datetime_started': instance.datetimeStarted.toIso8601String(),
      'datetime_finished': instance.datetimeFinished.toIso8601String(),
      'bill': instance.bill,
      'consumed_kwh': instance.consumedKwh,
      'station_name': instance.stationName,
    };
