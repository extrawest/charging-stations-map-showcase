import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import '../../../common/services/services.dart';
import '../bloc/favourites_cubit.dart';
import '../bloc/favourites_state.dart';
import '../repositories/favourite_stations_repository.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({
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
        ),
        child: const _FavouritesPage(),
      ),
    );
  }
}

class _FavouritesPage extends StatefulWidget {
  const _FavouritesPage({super.key});

  @override
  State<_FavouritesPage> createState() => __FavouritesPageState();
}

class __FavouritesPageState extends State<_FavouritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Favourites',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 32),
        ),
      ),
      body: BlocBuilder<FavouritesCubit, FavouritesState>(
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.zero,
            child: Column(
              children: [],
            ),
          );
        },
      ),
    );
  }
}
