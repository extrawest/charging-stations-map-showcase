import 'package:fpdart/fpdart.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../common/failure/failure.dart';
import '../models/favourite_station_model.dart';

abstract class FavouriteStationsRepository {
  Future<Either<Failure, List<String>>> retreiveFavourites();
  Future<Either<Failure, void>> addToFavourites({
    required String stationId,
  });

  Future<Either<Failure, void>> removeFromFavourites({
    required String stationId,
  });
}

class HiveFavouriteStationsRepository implements FavouriteStationsRepository {
  final Box<FavouritesHistoryModel> box;
  final String userId;

  HiveFavouriteStationsRepository({
    required this.box,
    required this.userId,
  });

  @override
  Future<Either<Failure, void>> addToFavourites({
    required String stationId,
  }) async {
    try {
      FavouritesHistoryModel? favourites;
      favourites = box.get(userId);
      favourites ??= const FavouritesHistoryModel(stationIds: []);
      final newFavourites = favourites.map(
        (stationIds) => [...stationIds, stationId]..toSet().toList(),
      );
      await box.put(userId, newFavourites);

      return const Right(null);
    } catch (error) {
      return Left(LocalStorageFailure(message: error.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> removeFromFavourites({
    required String stationId,
  }) async {
    try {
      final favourites = box.get(userId);
      if (favourites == null) {
        return const Right(null);
      }
      final newFavourites =
          favourites.map((stationIds) => stationIds..remove(stationId));
      await box.put(userId, newFavourites);

      return const Right(null);
    } catch (error) {
      return Left(LocalStorageFailure(message: error.toString()));
    }
  }

  @override
  Future<Either<Failure, List<String>>> retreiveFavourites() async {
    try {
      final favourites = box.get(userId);
      if (favourites == null) {
        return const Right([]);
      }
      return Right(favourites.stationIds);
    } catch (error) {
      return Left(LocalStorageFailure(message: error.toString()));
    }
  }
}
