import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../common/failure/failure.dart';
import '../models/geolocation_permission.dart';

part 'geolocation_state.freezed.dart';

@freezed
class GeolocationState with _$GeolocationState {
  const factory GeolocationState({
    required LatLng? position,
    required bool isLoading,
    required Failure? failure,
    required GeolocationPermission permission,
  }) = _GeolocationState;

  factory GeolocationState.initial() => const GeolocationState(
        failure: null,
        isLoading: false,
        permission: GeolocationPermission.unset,
        position: null,
      );
}
