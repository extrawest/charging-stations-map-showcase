import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maps_app/features/search/widgets/search_result_list.dart';

import '../../geolocation/geolocation.dart';
import '../bloc/search_cubit.dart';
import '../widgets/search_field.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GeolocationCubit, GeolocationState>(
      builder: (context, state) => BlocProvider<SearchCubit>(
        key: ValueKey(state),
        create: (context) => SearchCubit(
          stationRepository: context.read(),
          position: state.position,
        ),
        child: const _SearchPage(),
      ),
    );
  }
}

class _SearchPage extends StatefulWidget {
  const _SearchPage({super.key});

  @override
  State<_SearchPage> createState() => __SearchPageState();
}

class __SearchPageState extends State<_SearchPage> {
  @override
  void initState() {
    super.initState();
    context.read<SearchCubit>().init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SafeArea(
              bottom: false,
              child: SearchField.enabled(
                onChanged: (query) =>
                    context.read<SearchCubit>().search(query: query),
              ),
            ),
            // const SizedBox(height: 25),
            const Expanded(child: SearchResultList()),
          ],
        ),
      ),
    );
  }
}
