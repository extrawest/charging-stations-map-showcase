import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'favourite_station_model.g.dart';

@HiveType(typeId: 0)
class FavouritesHistoryModel extends Equatable {
  const FavouritesHistoryModel({
    required this.stationIds,
  });

  @HiveField(0)
  final List<String> stationIds;

  FavouritesHistoryModel map(List<String> Function(List<String>) appFunc) =>
      FavouritesHistoryModel(stationIds: appFunc(stationIds));

  @override
  List<Object?> get props => [stationIds];
}
