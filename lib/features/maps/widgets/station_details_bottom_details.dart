import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:maps_app/common/router.dart';
import 'package:maps_app/common/services/services.dart';
import 'package:maps_app/features/features.dart';
import '../../../common/utils/mocks.dart';
import '../../../common/widgets/favourite_button.dart';
import '../../../common/widgets/station_details_header.dart';
import '../../../common/widgets/station_location_section.dart';
import '../../../generated/locale_keys.g.dart';
import '../../favourites/favourites.dart';
import '../models/station_model.dart';
import 'connector_tile.dart';
import 'empty_image.dart';

class StationDetailsBottomSheet extends StatelessWidget {
  const StationDetailsBottomSheet({
    super.key,
    required this.station,
    required this.distance,
    required this.onFavouritePresed,
  });

  final StationModel station;
  final double? distance;
  final ValueSetter<bool> onFavouritePresed;

  static Future<void> show(
    BuildContext context, {
    required StationModel station,
    required double? distance,
  }) async {
    await showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      isScrollControlled: true,
      builder: (_) => BlocBuilder<AuthCubit, AuthState>(
        bloc: context.read<AuthCubit>(),
        builder: (context, state) => Wrap(
          children: [
            StationDetailsBottomSheet(
              station: station,
              distance: distance,
              onFavouritePresed: (isFavourite) => state.map(
                authenticated: (user) async {
                  final repo = HiveFavouriteStationsRepository(
                    box: Hive.box(HiveBoxBootsrapper.favouritesBoxName),
                    userId: user.id,
                  );
                  if (isFavourite) {
                    await repo.addToFavourites(stationId: station.stationId);
                  } else {
                    await repo.removeFromFavourites(
                      stationId: station.stationId,
                    );
                  }
                },
                unauthenticated: (_) => context.push(favouritesRoute),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const _Bar(),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StationHeader.details(
                context,
                name: station.stationId,
                status: station.status,
              ),
              FavouriteButton(
                onPressed: () => onFavouritePresed(true),
                isSelected: false,
              ),
            ],
          ),
          const SizedBox(height: 25),
          StationLocationSection(
            distance: distance,
            position: station.position,
          ),
          const SizedBox(height: 25),
          const EmptyImage(),
          const SizedBox(height: 32),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              LocaleKeys.station_detals_connectors.tr(),
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          ...mockConnectors.map(
            (connectorModel) => Padding(
              padding: const EdgeInsets.only(top: 8),
              child: ConnectorTile(connectorModel: connectorModel),
            ),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

class _Bar extends StatelessWidget {
  const _Bar();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 135,
      decoration: BoxDecoration(
        color: Theme.of(context).shadowColor,
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
