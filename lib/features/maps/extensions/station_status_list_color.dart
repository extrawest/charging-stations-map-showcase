import '../models/station_status.dart';

extension StationStatusListColor on Iterable<StationStatus> {
  List<StationStatus> get _statusPriority => [
        StationStatus.available,
        StationStatus.busy,
        StationStatus.offline,
        StationStatus.offline,
      ];

  StationStatus get status {
    if (isEmpty) {
      return StationStatus.available;
    }
    if (length == 1) {
      return first;
    }
    return _statusPriority.firstWhere(contains);
  }
}
