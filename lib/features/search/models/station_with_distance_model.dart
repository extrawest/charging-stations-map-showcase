import 'package:freezed_annotation/freezed_annotation.dart';

import '../../maps/maps.dart';

part 'station_with_distance_model.freezed.dart';

@freezed
class StationWithDistanceModel with _$StationWithDistanceModel {
  const factory StationWithDistanceModel({
    required StationModel station,
    required double? distance,
  }) = _StationWithDistanceModel;
}
