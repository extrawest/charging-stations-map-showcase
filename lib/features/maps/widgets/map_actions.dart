import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../dashboard/widgets/bottom_navigation_bar.dart';
import '../bloc/maps_cubit.dart';
import '../bloc/maps_state.dart';
import 'map_action_button.dart';
import 'maps_setting_bottom_sheet.dart';

class MapActions extends StatelessWidget {
  const MapActions({
    super.key,
    required this.onCameraMove,
  });

  final ValueSetter<LatLng> onCameraMove;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: AppBottomNavigationBar.height,
        right: 14,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          BlocBuilder<MapsCubit, MapsState>(
            builder: (context, state) => MapActionButton.location(
              isLoading: state.isLocationLoading,
              onPressed: () {
                context.read<MapsCubit>().locate(onLocate: onCameraMove);
              },
            ),
          ),
          const SizedBox(height: 8),
          MapActionButton.settings(
            onPressed: () {
              MapsSettingBottomSheet.show(
                context,
                selectedType: MapType.none,
                onSelect: (_) {},
              );
            },
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
