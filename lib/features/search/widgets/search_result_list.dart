import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../generated/assets.gen.dart';
import '../../theme/styles/app_colors.dart';
import '../bloc/search_cubit.dart';
import '../bloc/search_state.dart';
import 'empty_state.dart';

class SearchResultList extends StatelessWidget {
  const SearchResultList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(builder: (context, state) {
      if (state.isLoading) {
        return const Center(child: CircularProgressIndicator());
      }
      if (state.isEmpty) {
        return const EmptyState();
      }

      return ListView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: state.searchResult
            .map(
              (e) => Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            e.station.stationId,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          const SizedBox(height: 6),
                          Text(
                            '${e.station.position.longitude}, ${e.station.position.latitude}',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: AppColors.textGrey),
                          )
                        ],
                      ),
                    ),
                    if (e.distance != null) ...[
                      const SizedBox(width: 24),
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Text(
                              '${e.distance!.toStringAsFixed(0)} m',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(width: 10),
                            Assets.images.stationDetails.distance.svg(),
                          ],
                        ),
                      ),
                    ]
                  ],
                ),
              ),
            )
            .toList(),
      );
    });
  }
}
