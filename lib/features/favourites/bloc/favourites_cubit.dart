import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import '../../../common/failure/failure.dart';

import '../../maps/maps.dart';
import '../repositories/favourite_stations_repository.dart';
import 'favourites_state.dart';

class FavouritesCubit extends Cubit<FavouritesState> {
  FavouritesCubit({
    required FavouriteStationsRepository favouriteStationsRepository,
    required StationRepository stationRepository,
    required this.userId,
  })  : _favouriteStationsRepository = favouriteStationsRepository,
        _stationRepository = stationRepository,
        super(FavouritesState.initial());

  final FavouriteStationsRepository _favouriteStationsRepository;
  final StationRepository _stationRepository;

  final String userId;

  Future<void> loadFavouritesStations() async {
    emit(state.copyWith(isLoading: true));
    final favouritesResult =
        await _favouriteStationsRepository.retreiveFavourites(
      userId: userId,
    );

    final newState = await favouritesResult
        .bindFuture(loadStationsAndFilterFavourites)
        .match(
          (failure) => state.copyWith(failure: failure),
          (stations) => state.copyWith(stations: stations),
        )
        .run();

    emit(newState);

    emit(state.copyWith(isLoading: false));
  }

  Future<Either<Failure, List<StationModel>>> loadStationsAndFilterFavourites(
      List<String> favourites) async {
    if (favourites.isEmpty) {
      return const Right([]);
    }

    final stationsResult = await _stationRepository.retrieveStations();
    return stationsResult.map(
      (stations) => stations
          .where((station) => favourites.contains(station.stationId))
          .map((station) => station.copyWith(isFavourite: true))
          .toList(),
    );
  }

  Future<void> removeFromFavourites(String stationId) async {
    final updatedFavourites = state.stations
        .map(
          (station) => station.stationId == stationId
              ? station.copyWith(isFavourite: false)
              : station,
        )
        .toList();

    emit(state.copyWith(stations: updatedFavourites));

    emit(state.copyWith(isLoading: true));

    final removeResult =
        await _favouriteStationsRepository.removeFromFavourites(
      userId: userId,
      stationId: stationId,
    );

    removeResult.mapLeft((failure) => state.copyWith(failure: failure));

    emit(state.copyWith(isLoading: false));
  }

  Future<void> addToFavourites(String stationId) async {
    final updatedFavourites = state.stations
        .map(
          (station) => station.stationId == stationId
              ? station.copyWith(isFavourite: true)
              : station,
        )
        .toList();

    emit(state.copyWith(stations: updatedFavourites));

    emit(state.copyWith(isLoading: true));

    final removeResult = await _favouriteStationsRepository.addToFavourites(
      userId: userId,
      stationId: stationId,
    );

    removeResult.mapLeft((failure) => state.copyWith(failure: failure));

    emit(state.copyWith(isLoading: false));
  }
}
