import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_app/features/maps/models/station_model.dart';
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
  GoogleMapController? _controller;
  ClusterManager? _clusterManager;

  @override
  void initState() {
    super.initState();
    context.read<MapsCubit>().loadStations();
  }

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
          return _buildMap(state.markers, state.stations);
        },
      ),
    );
  }

  Widget _buildMap(
    Set<Marker> markers,
    List<StationModel> stations,
  ) {
    final cameraPositon = stations.firstOrNull?.position;

    return GoogleMap(
      onLongPress: (_) => _controller?.animateCamera(CameraUpdate.zoomOut()),
      mapType: MapType.normal,
      markers: markers,
      onMapCreated: (controller) {
        _controller = controller;
        _clusterManager = ClusterManager<StationClusterItem>(
          stations.map((station) => station.clusterItem),
          context.read<MapsCubit>().updateMarker,
          markerBuilder: MarkerBuilder(),
        );
        _clusterManager?.setMapId(controller.mapId);
      },
      compassEnabled: false,
      myLocationButtonEnabled: false,
      onCameraIdle: () => _clusterManager?.updateMap(),
      initialCameraPosition: CameraPosition(
        target: cameraPositon ?? const LatLng(0, 0),
        zoom: 12,
      ),
    );
  }
}
