import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maps_app/common/utils/mocks.dart';
import 'package:maps_app/features/favourites/bloc/favourites_cubit.dart';
import 'package:maps_app/features/favourites/widgets/favourite_connector_tile.dart';

import '../../../common/widgets/favourite_button.dart';
import '../../../common/widgets/station_details_header.dart';
import '../../../common/widgets/station_location_section.dart';

import '../../maps/maps.dart';

class FavouriteStationTile extends StatelessWidget {
  const FavouriteStationTile({
    super.key,
    required this.station,
    required this.connectors,
    required this.onStarPressed,
    required this.distance,
  });

  final StationModel station;
  final List<ConnectorModel> connectors;
  final ValueSetter<bool> onStarPressed;
  final double distance;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 20,
          ),
        ],
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StationHeader.favourite(
                context,
                name: station.stationId,
                chargePointId: station.chargePointId,
              ),
              const SizedBox(width: 16),
              FavouriteButton(
                onPressed: () {
                  if (station.isFavourite) {
                    context
                        .read<FavouritesCubit>()
                        .removeFromFavourites(station.stationId);
                  } else {
                    context
                        .read<FavouritesCubit>()
                        .addToFavourites(station.stationId);
                  }
                },
                isSelected: station.isFavourite,
              ),
            ],
          ),
          const SizedBox(height: 16),
          StationLocationSection(
            distance: distance,
            position: station.position,
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...mockConnectors.map(
                (connector) => FavouriteConnectorTile(
                  connector: connector,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
