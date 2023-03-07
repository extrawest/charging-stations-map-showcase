import 'package:freezed_annotation/freezed_annotation.dart';

import 'station_status.dart';
part 'station_model.freezed.dart';
part 'station_model.g.dart';

@freezed
class StationModel with _$StationModel {
  const factory StationModel({
    required String stationId,
    required String tenantId,
    required String chargePointId,
    required double longitude,
    required double latitude,
    required StationStatus status,
  }) = _StationModel;

  factory StationModel.fromJson(Map<String, dynamic> json) =>
      _$StationModelFromJson(json);
}
