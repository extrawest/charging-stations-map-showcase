import 'package:fpdart/fpdart.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../common/failure/failure.dart';
import '../models/geolocation_permission.dart';

abstract class GeolocationService {
  Future<Either<Failure, LatLng>> getCurrentPosition();
  Future<Either<Failure, bool>> checkIfGeolocationServiceEnabled();
  Future<Either<Failure, GeolocationPermission>> requestGeolocationPermission();
  Future<Either<Failure, void>> openLocationSettings();

  static double calculateDistance(LatLng latLng1, LatLng latLng2) {
    return Geolocator.distanceBetween(
      latLng1.latitude,
      latLng1.longitude,
      latLng2.latitude,
      latLng2.longitude,
    );
  }
}

class GeolocationServiceImpl implements GeolocationService {
  @override
  Future<Either<Failure, bool>> checkIfGeolocationServiceEnabled() async {
    try {
      final serviceEnabled = await Geolocator.isLocationServiceEnabled();
      return Right(serviceEnabled);
    } catch (error) {
      return Left(GeolocationFailure(message: error.toString()));
    }
  }

  @override
  Future<Either<Failure, LatLng>> getCurrentPosition() async {
    try {
      final position = await Geolocator.getCurrentPosition();
      return Right(LatLng(position.latitude, position.longitude));
    } catch (error) {
      return Left(GeolocationFailure(message: error.toString()));
    }
  }

  @override
  Future<Either<Failure, GeolocationPermission>>
      requestGeolocationPermission() async {
    try {
      final initialPermission = await Geolocator.checkPermission();

      switch (initialPermission) {
        case LocationPermission.denied:
        case LocationPermission.unableToDetermine:
          {
            final permission = await Geolocator.requestPermission();
            return Right(_mapPermission(permission));
          }
        case LocationPermission.deniedForever:
          return const Right(GeolocationPermission.denied);
        case LocationPermission.always:
        case LocationPermission.whileInUse:
          return const Right(GeolocationPermission.allowed);
      }
    } catch (error) {
      return Left(GeolocationFailure(message: error.toString()));
    }
  }

  GeolocationPermission _mapPermission(LocationPermission permission) {
    switch (permission) {
      case LocationPermission.denied:
      case LocationPermission.deniedForever:
      case LocationPermission.unableToDetermine:
        return GeolocationPermission.denied;
      case LocationPermission.always:
      case LocationPermission.whileInUse:
        return GeolocationPermission.allowed;
    }
  }

  @override
  Future<Either<Failure, void>> openLocationSettings() async {
    try {
      await Geolocator.openLocationSettings();
      return const Right(null);
    } catch (error) {
      return Left(GeolocationFailure(message: error.toString()));
    }
  }
}
