import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/failure/failure.dart';
import '../models/wallet_model.dart';

part 'wallet_state.freezed.dart';

@freezed
class WalletState with _$WalletState {
  const factory WalletState({
    required bool isLoading,
    required Failure? failure,
    required WalletModel? model,
  }) = _WalletState;

  factory WalletState.initial() => const WalletState(
        isLoading: false,
        failure: null,
        model: null,
      );
}
