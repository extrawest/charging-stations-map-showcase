import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../dashboard/widgets/bottom_navigation_bar.dart';
import '../bloc/maps_cubit.dart';
import 'map_action_button.dart';

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
        bottom: AppBottomNavigationBar.height + 8,
        right: 14,
      ),
      child: MapActionButton.location(
        onPressed: () =>
            context.read<MapsCubit>().locate(onLocate: onCameraMove),
      ),
    );
  }
}
