import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maps_app/features/features.dart';

import 'favourites_state.dart';

class FavouritesCubit extends Cubit<FavouritesState> {
  FavouritesCubit({
    required FavouriteStationsRepository favouriteStationsRepository,
  })  : _favouriteStationsRepository = favouriteStationsRepository,
        super(FavouritesState.initial());

  final FavouriteStationsRepository _favouriteStationsRepository;

  Future<void> loadFavouritesStations() async {
    emit(state.copyWith(isLoading: true));
    final stationsResult =
        await _favouriteStationsRepository.retreiveFavourites();
    emit(
      stationsResult.match(
        (failure) => state.copyWith(failure: failure),
        (stations) => state.copyWith(stations: stations),
      ),
    );
    emit(state.copyWith(isLoading: false));
  }

  Future<void> removeFromFavourites(String stationId) async {
    final updatedFavourites = state.stations
        .map(
          (favourote) => favourote.station.stationId == stationId
              ? favourote.copyWith(isFavourite: false)
              : favourote,
        )
        .toList();

    emit(state.copyWith(stations: updatedFavourites));

    emit(state.copyWith(isLoading: true));

    final removeResult =
        await _favouriteStationsRepository.removeFromFavourites(
      stationId: stationId,
    );

    removeResult.mapLeft((failure) => state.copyWith(failure: failure));

    emit(state.copyWith(isLoading: false));
  }

  Future<void> addToFavourites(StationModel station) async {
    final updatedFavourites = state.stations
        .map(
          (favourote) => favourote.station.stationId == station.stationId
              ? favourote.copyWith(isFavourite: true)
              : favourote,
        )
        .toList();

    emit(state.copyWith(stations: updatedFavourites));

    emit(state.copyWith(isLoading: true));

    final removeResult = await _favouriteStationsRepository.addToFavourites(
      station: station,
    );

    removeResult.mapLeft((failure) => state.copyWith(failure: failure));

    emit(state.copyWith(isLoading: false));
  }
}
