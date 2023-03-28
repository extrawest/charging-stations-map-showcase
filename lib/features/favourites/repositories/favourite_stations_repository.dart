import 'package:fpdart/fpdart.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../common/failure/failure.dart';
import '../models/favourite_station_model.dart';

abstract class FavouriteStationsRepository {
  Future<Either<Failure, List<String>>> retreiveFavourites({
    required String userId,
  });
  Future<Either<Failure, void>> addToFavourites({
    required String userId,
    required String stationId,
  });

  Future<Either<Failure, void>> removeFromFavourites({
    required String userId,
    required String stationId,
  });
}

class HiveFavouriteStationsRepository implements FavouriteStationsRepository {
  final Box<FavouritesHistoryModel> box;

  HiveFavouriteStationsRepository({
    required this.box,
  });

  @override
  Future<Either<Failure, void>> addToFavourites({
    required String userId,
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
    required String userId,
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
  Future<Either<Failure, List<String>>> retreiveFavourites({
    required String userId,
  }) async {
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
