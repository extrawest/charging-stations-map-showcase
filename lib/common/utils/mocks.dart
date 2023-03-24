import '../../features/maps/maps.dart';
import '../../features/maps/models/connector_status.dart';

const mockConnectors = [
  ConnectorModel(
    name: 'Type 2(AC)',
    price: 3.00,
    capacity: 22,
    status: ConnectorStatus.available,
  ),
  ConnectorModel(
    name: 'CHAdeMO',
    price: 5.00,
    capacity: 200,
    status: ConnectorStatus.inUse,
  ),
  ConnectorModel(
    name: 'Type 2(AC)',
    price: 3.00,
    capacity: 22,
    status: ConnectorStatus.inUse,
  )
];
