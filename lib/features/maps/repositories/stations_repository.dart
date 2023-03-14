import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import '../../../common/failure/failure.dart';
import '../models/station_model.dart';
import '../services/stations_api_service.dart';

abstract class StationRepository {
  Future<Either<Failure, List<StationModel>>> retrieveStations();
}

class StationRepositoryImpl implements StationRepository {
  StationRepositoryImpl({
    required StationsApiService apiService,
  }) : _apiService = apiService;

  final StationsApiService _apiService;

  @override
  Future<Either<Failure, List<StationModel>>> retrieveStations() async {
    try {
      final stations = await _apiService.getAllStations();
      return Right(stations);
    } on DioError catch (error) {
      return Left(APIFailure.fromDioError(error));
    }
  }
}
