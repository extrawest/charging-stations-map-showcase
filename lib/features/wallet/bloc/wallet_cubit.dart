import 'package:flutter_bloc/flutter_bloc.dart';

import '../repositories/wallet_repository.dart';

import 'wallet_state.dart';

class WalletCubit extends Cubit<WalletState> {
  WalletCubit({
    required WalletRepository walletRepository,
  })  : _walletRepository = walletRepository,
        super(WalletState.initial());

  final WalletRepository _walletRepository;

  Future<void> loadWalletModel() async {
    emit(state.copyWith(isLoading: true));
    final walletModelResult = await _walletRepository.retreiveWalletModel();
    emit(
      walletModelResult.match(
        (failure) => state.copyWith(failure: failure),
        (model) => state.copyWith(model: model),
      ),
    );
    emit(state.copyWith(isLoading: false));
  }
}
