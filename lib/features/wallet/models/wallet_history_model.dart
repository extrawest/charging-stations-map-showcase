// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_history_model.freezed.dart';
part 'wallet_history_model.g.dart';

@freezed
class WalletHistoryModel with _$WalletHistoryModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory WalletHistoryModel({
    required DateTime datetimeStarted,
    required DateTime datetimeFinished,
    required double bill,
    required double consumedKwh,
  }) = _WalletHistoryModel;

  const WalletHistoryModel._();

  factory WalletHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$WalletHistoryModelFromJson(json);

  Duration get duration => datetimeFinished.difference(datetimeStarted);
}
