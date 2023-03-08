import '../../../generated/assets.gen.dart';

enum StationStatus {
  available,
  busy,
  offline,
  empty;

  AssetGenImage get icon {
    switch (this) {
      case StationStatus.available:
        return Assets.images.marker.markerGreen;
      case StationStatus.busy:
        return Assets.images.marker.markerYellow;
      case StationStatus.offline:
        return Assets.images.marker.markerRed;
      case StationStatus.empty:
        return Assets.images.marker.markerBlack;
    }
  }
}
