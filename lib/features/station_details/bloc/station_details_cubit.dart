import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../favourites/favourites.dart';
import '../../maps/maps.dart';

import 'station_details_state.dart';

class StationDetailsCubit extends Cubit<StationDetailsState> {
  StationDetailsCubit({
    required this.userId,
    required this.onOpenFavourites,
    required StationModel stationModel,
    required double? distance,
    required FavouriteStationsRepository favouriteStationsRepository,
  })  : _favouriteStationsRepository = favouriteStationsRepository,
        super(
          StationDetailsState.initial(
            stationModel: stationModel,
            distance: distance,
          ),
        );

  final String? userId;
  final VoidCallback onOpenFavourites;
  final FavouriteStationsRepository _favouriteStationsRepository;

  Future<void> checkIfAddedToFavourite() async {
    final userId = this.userId;
    if (userId == null) {
      return;
    }

    final favouritesResult =
        await _favouriteStationsRepository.retreiveFavourites(userId: userId);

    emit(
      favouritesResult.match(
        (failure) => state.copyWith(failure: failure),
        (favourites) => state.copyWith.stationModel(
          isFavourite: favourites.contains(state.stationModel.stationId),
        ),
      ),
    );
  }

  Future<void> changeFavouriteStatus() async {
    final isFavourite = !state.stationModel.isFavourite;

    final userId = this.userId;
    if (userId == null) {
      return onOpenFavourites();
    }

    emit(state.copyWith.stationModel(isFavourite: isFavourite));

    final favouritesResult = isFavourite
        ? await _favouriteStationsRepository.addToFavourites(
            userId: userId,
            stationId: state.stationModel.stationId,
          )
        : await _favouriteStationsRepository.removeFromFavourites(
            userId: userId,
            stationId: state.stationModel.stationId,
          );

    favouritesResult.mapLeft(
      (failure) => emit(state.copyWith(failure: failure)),
    );
  }
}
