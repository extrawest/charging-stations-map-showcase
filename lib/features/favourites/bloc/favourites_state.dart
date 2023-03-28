import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/failure/failure.dart';
import '../../maps/maps.dart';

part 'favourites_state.freezed.dart';

@freezed
class FavouritesState with _$FavouritesState {
  const factory FavouritesState({
    required bool isLoading,
    required Failure? failure,
    required List<StationModel> stations,
  }) = _FavouritesState;

  factory FavouritesState.initial() => const FavouritesState(
        failure: null,
        isLoading: false,
        stations: [],
      );
}
