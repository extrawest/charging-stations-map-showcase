// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../models/station_cluster_item.dart';

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
    @JsonKey(defaultValue: StationStatus.empty) required StationStatus status,
  }) = _StationModel;

  const StationModel._();

  factory StationModel.fromJson(Map<String, dynamic> json) =>
      _$StationModelFromJson(json);

  LatLng get position => LatLng(latitude, longitude);

  StationClusterItem clusterItem({
    required double? distance,
  }) =>
      StationClusterItem(
        station: this,
        distance: distance,
      );
}
