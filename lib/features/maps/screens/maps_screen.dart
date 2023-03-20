import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_app/features/maps/widgets/station_details_bottom_details.dart';
import '../../../common/di/injector_module.dart';
import '../../../features/maps/models/station_cluster_item.dart';
import '../bloc/maps_cubit.dart';
import '../bloc/maps_state.dart';
import '../models/geolocation_permission.dart';
import '../widgets/geolocation_permission_warning.dart';
import '../widgets/map_actions.dart';
import '../widgets/marker_builder.dart';

class MapsScreen extends StatelessWidget {
  const MapsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MapsCubit(
        stationRepository: context.read(),
        geolocationService: context.read(),
      ),
      child: const _MapsPage(),
    );
  }
}

class _MapsPage extends StatefulWidget {
  const _MapsPage();

  @override
  State<_MapsPage> createState() => __MapsPageState();
}

class __MapsPageState extends State<_MapsPage> {
  GoogleMapController? _controller;
  ClusterManager? _clusterManager;

  @override
  void initState() {
    super.initState();
    context.read<MapsCubit>().loadStations();
  }

  Set<Marker> _markers = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<MapsCubit, MapsState>(
        listener: (context, state) async {
          _clusterManager?.setItems(state.clusterItems);
        },
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.failure != null) {
            return Center(child: Text(state.failure!.message!));
          }
          return _buildMap(
            state.clusterItems,
            state.stations.firstOrNull?.position,
            state.permission == GeolocationPermission.denied,
            state.mapType,
          );
        },
      ),
    );
  }

  Widget _buildMap(
    List<StationClusterItem> stations,
    LatLng? initialCameraPosition,
    bool showPermissionWarning,
    MapType mapType,
  ) {
    return Stack(
      children: [
        GoogleMap(
          onLongPress: (_) =>
              _controller?.animateCamera(CameraUpdate.zoomOut()),
          mapType: mapType,
          markers: _markers,
          onMapCreated: (controller) {
            _controller = controller;
            _clusterManager = ClusterManager<StationClusterItem>(
              stations,
              (markers) {
                setState(() {
                  _markers = markers;
                });
              },
              markerBuilder: MarkerBuilder(
                onZoom: (location) async {
                  final zoom = await _controller?.getZoomLevel() ?? 0;
                  _controller?.moveCamera(
                    CameraUpdate.newLatLngZoom(location, zoom + 1),
                  );
                },
                onOpenDetails: (station, distance) =>
                    StationDetailsBottomSheet.show(
                  context,
                  station: station,
                  distance: distance,
                ),
              ),
            );
            _clusterManager?.setMapId(controller.mapId);
          },
          compassEnabled: false,
          onCameraIdle: () => _clusterManager?.updateMap(),
          onCameraMove: (position) => _clusterManager?.onCameraMove(position),
          initialCameraPosition: CameraPosition(
            target: initialCameraPosition ?? const LatLng(0, 0),
            zoom: 10,
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomRight,
            child: MapActions(onCameraMove: moveCameraTo),
          ),
        ),
        if (showPermissionWarning)
          Positioned.fill(
            child: Align(
              alignment: Alignment.topCenter,
              child: GeolocationPermissionWarning(
                onOpenSettings: context.read<MapsCubit>().openLocationSettings,
              ),
            ),
          ),
      ],
    );
  }

  void moveCameraTo(LatLng location) {
    _controller?.moveCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: location,
          zoom: 12,
        ),
      ),
    );
  }
}
