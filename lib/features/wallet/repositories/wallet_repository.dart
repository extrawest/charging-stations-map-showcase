import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import '../../../common/failure/failure.dart';
import '../models/wallet_model.dart';
import '../services/wallet_api_service.dart';

abstract class WalletRepository {
  Future<Either<Failure, WalletModel>> retreiveWalletModel();
}

class WalletRepositoryImpl implements WalletRepository {
  final WalletApiService _apiService;

  WalletRepositoryImpl({
    required WalletApiService apiService,
  }) : _apiService = apiService;

  @override
  Future<Either<Failure, WalletModel>> retreiveWalletModel() async {
    try {
      final walletModel = await _apiService.getWalletInfo();
      return Right(walletModel);
    } on DioError catch (error) {
      return Left(APIFailure.fromDioError(error));
    }
  }
}
