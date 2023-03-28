import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/wallet_model.dart';

part 'wallet_api_service.g.dart';

@RestApi()
abstract class WalletApiService {
  factory WalletApiService(Dio dio) = _WalletApiService;

  @GET('/wallet-info')
  Future<WalletModel> getWalletInfo();
}
