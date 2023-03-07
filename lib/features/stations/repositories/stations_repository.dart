import 'package:dio/dio.dart';
import 'package:flutter_bloc_project_starter/features/stations/exceptions/stattions_api_exception.dart';
import 'package:flutter_bloc_project_starter/network/exception.dart';
import 'package:fpdart/fpdart.dart';
import '../../stations/stations.dart';

abstract class StationRepository {
  Future<Either<APIException, List<StationModel>>> retrieveStations();
}

class StationRepositoryImpl implements StationRepository {
  StationRepositoryImpl({
    required StationsApiService apiService,
  }) : _apiService = apiService;

  final StationsApiService _apiService;

  @override
  Future<Either<APIException, List<StationModel>>> retrieveStations() async {
    try {
      final stations = await _apiService.getAllStations();
      return Right(stations);
    } on APIException catch (e) {
      return Left(e);
    } on DioError catch (e) {
      return Left(StationsAPIException(e.message));
    }
  }
}
