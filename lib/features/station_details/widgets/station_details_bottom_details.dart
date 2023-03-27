import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../common/router.dart';
import '../../../common/utils/mocks.dart';
import '../../../common/widgets/favourite_button.dart';
import '../../../common/widgets/station_details_header.dart';
import '../../../common/widgets/station_location_section.dart';
import '../../../generated/locale_keys.g.dart';
import '../../maps/maps.dart';
import '../../profile/bloc/auth_cubit.dart';
import '../../profile/bloc/auth_state.dart';
import '../bloc/station_details_cubit.dart';
import '../bloc/station_details_state.dart';
import 'connector_tile.dart';
import 'empty_image.dart';

class StationDetailsBottomSheet extends StatelessWidget {
  const StationDetailsBottomSheet({
    super.key,
  });

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
        builder: (context, state) => BlocProvider(
            create: (_) => StationDetailsCubit(
                  userId: state.mapOrNull(authenticated: (state) => state.id),
                  favouriteStationsRepository: context.read(),
                  stationModel: station,
                  distance: distance,
                  onOpenFavourites: () {
                    context.pop();
                    context.push('/dashboard$favouritesRoute');
                  },
                )..checkIfAddedToFavourite(),
            child: Wrap(
              children: const [
                StationDetailsBottomSheet(),
              ],
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StationDetailsCubit, StationDetailsState>(
      builder: (context, state) => Padding(
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
                  name: state.stationModel.stationId,
                  status: state.stationModel.status,
                ),
                FavouriteButton(
                  onPressed: () => context
                      .read<StationDetailsCubit>()
                      .changeFavouriteStatus(),
                  isSelected: state.stationModel.isFavourite,
                ),
              ],
            ),
            const SizedBox(height: 25),
            StationLocationSection(
              distance: state.distance,
              position: state.stationModel.position,
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
