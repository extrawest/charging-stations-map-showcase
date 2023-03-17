import 'package:freezed_annotation/freezed_annotation.dart';
import 'connector_status.dart';

part 'connector_model.freezed.dart';

@freezed
class ConnectorModel with _$ConnectorModel {
  const factory ConnectorModel({
    required String name,
    required double price,
    required int capacity,
    required ConnectorStatus status,
  }) = _ConnectorModel;
}
