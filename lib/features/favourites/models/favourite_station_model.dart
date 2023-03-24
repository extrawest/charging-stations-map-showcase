import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../maps/maps.dart';

part 'favourite_station_model.freezed.dart';

@freezed
class FavouritesHistoryModel with _$FavouritesHistoryModel {
  const factory FavouritesHistoryModel({
    required List<StationModel> stations,
  }) = _FavouritesHistoryModell;
}
