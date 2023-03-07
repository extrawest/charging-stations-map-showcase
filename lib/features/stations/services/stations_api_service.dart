import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/station_model.dart';

part 'stations_api_service.g.dart';

@RestApi()
abstract class StationsApiService {
  factory StationsApiService(Dio dio) = _StationsApiService;
  @GET('chargestations')
  Future<List<StationModel>> getAllStations();
}
