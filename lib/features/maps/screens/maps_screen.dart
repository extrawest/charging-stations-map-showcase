import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../common/di/injector_module.dart';
import '../../../features/maps/models/station_cluster_item.dart';
import '../bloc/maps_cubit.dart';
import '../bloc/maps_state.dart';
import '../widgets/marker_builder.dart';

class MapsScreen extends StatelessWidget {
  const MapsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MapsCubit(
        stationRepository: InjectorModule.locator(),
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
  @override
  void initState() {
    super.initState();
    context.read<MapsCubit>().loadStations();
  }

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  ClusterManager? _clusterManager;
  Set<Marker> _markers = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<MapsCubit, MapsState>(
        listener: (context, state) async {
          if (state.stations.isEmpty) return;
          final markers = state.stations.map((station) => station.clusterItem);
          if (_clusterManager != null) {
            _clusterManager!.setItems(markers.toList());
            return;
          }
          _clusterManager = ClusterManager<StationClusterItem>(
            markers,
            (markers) {
              setState(() {
                _markers = markers;
              });
            },
            markerBuilder: MarkerBuilder(context),
          );
          final controller = await _controller.future;
          _clusterManager!.setMapId(controller.mapId);
        },
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.failure != null) {
            return Center(child: Text(state.failure!.message!));
          }
          final cameraPositon = state.stations.firstOrNull?.position;
          return GoogleMap(
            onLongPress: (_) async {
              final controller = await _controller.future;
              controller.animateCamera(CameraUpdate.zoomOut());
            },
            mapType: MapType.normal,
            markers: _markers,
            initialCameraPosition: CameraPosition(
              target: cameraPositon ?? const LatLng(0, 0),
              zoom: 12,
            ),
            onMapCreated: _controller.complete,
            compassEnabled: false,
            myLocationButtonEnabled: false,
            onCameraIdle: () => _clusterManager?.updateMap(),
          );
        },
      ),
    );
  }
}
