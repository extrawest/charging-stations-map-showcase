import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:maps_app/features/dashboard/widgets/bottom_navigation_bar.dart';

import '../../../common/services/services.dart';
import '../../../common/utils/mocks.dart';
import '../../maps/maps.dart';
import '../bloc/favourites_cubit.dart';
import '../bloc/favourites_state.dart';
import '../repositories/favourite_stations_repository.dart';
import '../widgets/favourite_station_tile.dart';

class SignedFavouritesScreen extends StatelessWidget {
  const SignedFavouritesScreen({
    super.key,
    required this.userId,
  });

  final String userId;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<FavouriteStationsRepository>(
      create: (context) => HiveFavouriteStationsRepository(
        userId: userId,
        box: Hive.box(HiveBoxBootsrapper.favouritesBoxName),
      ),
      child: BlocProvider<FavouritesCubit>(
        create: (context) => FavouritesCubit(
          favouriteStationsRepository: context.read(),
          stationRepository: context.read(),
        ),
        child: const _SignedFavouritesPage(),
      ),
    );
  }
}

class _SignedFavouritesPage extends StatefulWidget {
  const _SignedFavouritesPage();

  @override
  State<_SignedFavouritesPage> createState() => __SignedFavouritesPageState();
}

class __SignedFavouritesPageState extends State<_SignedFavouritesPage> {
  @override
  void initState() {
    super.initState();
    context.read<FavouritesCubit>().loadFavouritesStations();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Favourites',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: SingleChildScrollView(
        child: BlocBuilder<FavouritesCubit, FavouritesState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                children: state.stations
                    .map(
                      (station) => FavouriteStationTile(
                        station: station,
                        connectors: mockConnectors,
                        onStarPressed: (_) {},
                        distance: 15,
                      ),
                    )
                    .toList(),
              ),
            );
          },
        ),
      ),
    );
  }
}
