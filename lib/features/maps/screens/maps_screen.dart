import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../common/di/injector_module.dart';
import '../bloc/maps_cubit.dart';
import '../bloc/maps_state.dart';

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

  Set<Marker> _markers = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<MapsCubit, MapsState>(
        listener: (context, state) async {
          final markers = await Future.wait(
            state.stations.map(
              (station) async {
                final icon = await BitmapDescriptor.fromAssetImage(
                  ImageConfiguration(size: Size(5, 5)),
                  station.status.icon.path,
                );
                return Marker(
                  markerId: MarkerId(station.stationId),
                  position: station.position,
                  icon: icon,
                );
              },
            ),
          );

          setState(() {
            _markers = markers.toSet();
          });
        },
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.failure != null) {
            return Center(child: Text(state.failure!.message!));
          }
          final cameraPositon = state.stations.firstOrNull?.position ??
              const LatLng(
                37.42796133580664,
                -122.085749655962,
              );
          return GoogleMap(
            mapType: MapType.normal,
            markers: _markers,
            initialCameraPosition: CameraPosition(
              target: cameraPositon,
              zoom: 12,
            ),
            onMapCreated: _controller.complete,
            compassEnabled: false,
            myLocationButtonEnabled: false,
          );
        },
      ),
    );
  }
}
