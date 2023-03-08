import 'dart:convert';

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
      // final stations = await _apiService.getAllStations();
      final stations = List.of(jsonDecode(mockStationsJson))
          .map((json) => StationModel.fromJson(json as Map<String, dynamic>))
          .toList();

      return Right(stations);
    } on DioError catch (error) {
      return Left(APIFailure.fromDioError(error));
    }
  }
}

const mockStationsJson = '''[
  {
    "stationId": "2d537ba4-39a0-461e-9c0c-00fe88305a83",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "jApGy06HrP",
    "longitude": 5.340242465576188,
    "latitude": 51.974059,
    "status": "busy"
  },
  {
    "stationId": "bc933803-2c02-4fe9-ae33-0b24d5ef3506",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "TQpSeh4wHV",
    "longitude": 4.839054465576176,
    "latitude": 45.746570000000006,
    "status": "busy"
  },
  {
    "stationId": "fffca0f8-99ca-4ecc-999d-47607eff9b46",
    "tenantId": "52e2d3b5-d4b1-455f-a68d-b66094d6e57d",
    "chargePointId": "lytiaJMWph",
    "longitude": 19.140795724914568,
    "latitude": 48.707874171129326,
    "status": "busy"
  },
  {
    "stationId": "c54eebce-af39-4e57-b867-89cf77a8d7ad",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "SYnuBuwMUa",
    "longitude": 9.466019465576174,
    "latitude": 47.24766500000001,
    "status": "busy"
  },
  {
    "stationId": "38e27b8b-b44e-4e20-b7c5-6d21a546c225",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "rcbnypXloK",
    "longitude": 6.338115465576175,
    "latitude": 52.445870999999975,
    "status": "busy"
  },
  {
    "stationId": "c9eff464-e3f5-4698-aa0a-93d56c54fa21",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "DfNbPtxKhD",
    "longitude": 9.013421465576172,
    "latitude": 48.785079000000025,
    "status": "busy"
  },
  {
    "stationId": "9b0cb64f-2142-42cd-93d1-d1358eb4d14b",
    "tenantId": "004a3de4-ace9-4dbe-897b-86b4bf2428e2",
    "chargePointId": "3dCV9unDME",
    "longitude": 9.749989465576192,
    "latitude": 52.36169099999999,
    "status": "busy"
  },
  {
    "stationId": "21ec482d-4830-4c4d-b7cc-f7f0f8b465b0",
    "tenantId": "11ba4769-101a-47db-be71-f180bfb11826",
    "chargePointId": "sX1ojN0f00",
    "longitude": 11.707537465576161,
    "latitude": 45.761649000000006,
    "status": "busy"
  },
  {
    "stationId": "c77f0f70-66e5-4979-a37a-5da249e9d925",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "v9WiM254LE",
    "longitude": 5.207087465576161,
    "latitude": 45.61160800000001,
    "status": "busy"
  },
  {
    "stationId": "e5f5e586-c18e-458d-b3da-ac34535b969d",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "mUPoodRh8V",
    "longitude": 12.439044465576176,
    "latitude": 51.40906899999999,
    "status": "busy"
  },
  {
    "stationId": "fdcf6b76-67b7-4afd-9173-8b24e87a40a0",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "p5KzLnW86o",
    "longitude": 4.358163465576168,
    "latitude": 50.85172,
    "status": "busy"
  },
  {
    "stationId": "b8fb5543-acea-4cc1-bd4b-017cb25cc8e5",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "98NxdJidA3",
    "longitude": 4.790604465576158,
    "latitude": 51.676752,
    "status": "busy"
  },
  {
    "stationId": "c98ed908-6f03-4a72-a9b5-2d10571ef61e",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "ZYVmM7NItC",
    "longitude": 5.194065465576174,
    "latitude": 52.067791000000014,
    "status": "busy"
  },
  {
    "stationId": "7449dbf6-b301-4896-bc67-7a67893f6b1b",
    "tenantId": "98e2c2a4-d24f-4b02-afa4-0726bacfcbe0",
    "chargePointId": "UgTJyZFqRe",
    "longitude": 4.613035465576161,
    "latitude": 51.865829,
    "status": "busy"
  },
  {
    "stationId": "4c706bf5-f85d-4d88-82de-3bc7131a6662",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "Ih0URrnAJ2",
    "longitude": 13.105357465576182,
    "latitude": 45.66504599999998,
    "status": "busy"
  },
  {
    "stationId": "147074d5-b97b-455c-baf8-7510e2becc0a",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "VHX0IasinE",
    "longitude": 4.87309046557618,
    "latitude": 45.74243400000001,
    "status": "busy"
  },
  {
    "stationId": "3f601228-07b4-4f45-8b0e-177e15bb1e08",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "vWQGM6ESyf",
    "longitude": 11.260189465576174,
    "latitude": 47.26153200000002,
    "status": "busy"
  },
  {
    "stationId": "880a9306-a91a-4eb7-b6bd-117d98c6414d",
    "tenantId": "949e5429-e791-4184-af48-c50fa99e6cbd",
    "chargePointId": "K4qdLEYaLj",
    "longitude": 13.689146465576178,
    "latitude": 51.084908,
    "status": "busy"
  },
  {
    "stationId": "f47ca484-38ce-476c-930f-35b83e30cee1",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "L43b1bMRf0",
    "longitude": 8.969504465576156,
    "latitude": 47.741115000000015,
    "status": "busy"
  },
  {
    "stationId": "599c0b2f-f6b9-4ecb-aea4-b8361ca2b26e",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "WuO9mdT8z7",
    "longitude": 9.669895465576163,
    "latitude": 53.755593,
    "status": "busy"
  },
  {
    "stationId": "f2fb2bb2-9887-43c6-9a24-560ae4ac8928",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "lulC4VeYrj",
    "longitude": 6.8641844655761775,
    "latitude": 53.13555900000002,
    "status": "busy"
  },
  {
    "stationId": "4f293710-92f1-4721-ad99-94b01c7eb861",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "ztgXsN8uqd",
    "longitude": 5.922901465576174,
    "latitude": 51.984102000000014,
    "status": "busy"
  },
  {
    "stationId": "55ef2b60-91d1-4ad6-912c-a12c37947620",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "vbX5bnnSag",
    "longitude": 16.77000746557619,
    "latitude": 45.48270000000001,
    "status": "busy"
  },
  {
    "stationId": "17c4dd48-553c-4bec-b408-18ce1bb2a918",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "LU7GjyImji",
    "longitude": 8.289860465576178,
    "latitude": 47.312565,
    "status": "busy"
  },
  {
    "stationId": "f425468a-65e0-424d-9b94-efbb39f1559f",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "TaL5qO1rq7",
    "longitude": 9.153222465576171,
    "latitude": 45.486701000000004,
    "status": "busy"
  },
  {
    "stationId": "673a34b3-3f83-447b-aa1a-88fcee2297d7",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "z1m6LmgJvQ",
    "longitude": 14.711401465576154,
    "latitude": 48.166980000000024,
    "status": "busy"
  },
  {
    "stationId": "9c444b5a-fec1-45fa-8b3b-297864591163",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "hwdHfgUTeG",
    "longitude": 15.243844465576165,
    "latitude": 46.687985999999995,
    "status": "busy"
  },
  {
    "stationId": "71c0f38b-5d46-4f60-bb40-48d2c31b1941",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "55r4vpNMBD",
    "longitude": 11.836881465576171,
    "latitude": 47.337190000000014,
    "status": "busy"
  },
  {
    "stationId": "7e448404-b474-4e2c-8eb4-80fa5320b2bb",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "vRirEAzvxd",
    "longitude": 15.671508465576188,
    "latitude": 48.477481,
    "status": "busy"
  },
  {
    "stationId": "7a63b5c5-5391-465d-8fd0-c395259279a1",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "VfapmqXXTu",
    "longitude": 10.483994465576178,
    "latitude": 45.39273099999998,
    "status": "busy"
  },
  {
    "stationId": "12e425c3-fec3-457e-9247-d48a92117a6e",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "q2uZiw64wN",
    "longitude": 7.192981465576165,
    "latitude": 43.66054700000001,
    "status": "busy"
  },
  {
    "stationId": "d778cb2c-cc08-465e-abed-7bcce3183f22",
    "tenantId": "52e2d3b5-d4b1-455f-a68d-b66094d6e57d",
    "chargePointId": "Alt25e0ePj",
    "longitude": 7.418011465576164,
    "latitude": 43.732470999999975,
    "status": "busy"
  },
  {
    "stationId": "2743532c-960b-497e-805a-9a75c17626e5",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "j85BSfWNpV",
    "longitude": 6.647475465576171,
    "latitude": 49.75781800000001,
    "status": "busy"
  },
  {
    "stationId": "2739e9b9-a373-40b1-8ea9-e2a180b6490a",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "qTVbcQ8unC",
    "longitude": 5.097368465576189,
    "latitude": 52.081925,
    "status": "busy"
  },
  {
    "stationId": "3594d5b7-b385-4c81-a17c-5b1c6b875a2c",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "t5szxw5QRa",
    "longitude": 7.327563465576157,
    "latitude": 43.70792900000003,
    "status": "busy"
  },
  {
    "stationId": "cbfeb92f-5ae0-4ef1-8fa4-1f26528919b0",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "0zAqPZYJZh",
    "longitude": 8.964384465576186,
    "latitude": 46.359704000000015,
    "status": "busy"
  },
  {
    "stationId": "ecdc2924-bda4-4ca7-8bf3-4ee7b8455a7d",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "IkTPvlgxZC",
    "longitude": 4.41745046557616,
    "latitude": 51.21934000000001,
    "status": "busy"
  },
  {
    "stationId": "ed9535af-1150-408c-967d-2169967243e3",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "ASVW8tYTDQ",
    "longitude": 11.999138465576156,
    "latitude": 46.747646,
    "status": "busy"
  },
  {
    "stationId": "1b502f7d-85d6-4954-9b0f-4d34d50be3c3",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "mFY1ABFnBw",
    "longitude": 5.143042465576175,
    "latitude": 51.94314900000001,
    "status": "busy"
  },
  {
    "stationId": "cab62391-594c-411a-9b6f-935fd104d209",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "roc4bow5bF",
    "longitude": 5.954364465576156,
    "latitude": 51.56433399999999,
    "status": "busy"
  },
  {
    "stationId": "fc8ae942-404d-4685-9ffe-6857874a7081",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "CVy25ZxIMI",
    "longitude": 4.808551465576167,
    "latitude": 45.75778499999997,
    "status": "busy"
  },
  {
    "stationId": "6a8820cc-297d-435b-b3e6-1f248b555bb4",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "EtCY0bW0Gr",
    "longitude": 7.7353684655761645,
    "latitude": 48.54451200000001,
    "status": "busy"
  },
  {
    "stationId": "cc5c24a8-482e-4d46-94b7-9d5c5446f902",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "NYQyoilcJj",
    "longitude": 9.083476465576185,
    "latitude": 48.755002000000005,
    "status": "busy"
  },
  {
    "stationId": "493890d4-11b6-4425-a09d-63fe8992cc3a",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "oQohWLA3kR",
    "longitude": 4.51570946557617,
    "latitude": 51.857732999999996,
    "status": "busy"
  },
  {
    "stationId": "b9652947-97b9-421c-b607-1c160ef98cde",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "TZiWlMv95e",
    "longitude": 18.57765346557617,
    "latitude": 47.468301,
    "status": "busy"
  },
  {
    "stationId": "fd53e147-0199-4706-aa24-620eb389a21b",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "Nv5VIA5gCp",
    "longitude": 5.428576465576183,
    "latitude": 51.34884100000001,
    "status": "busy"
  },
  {
    "stationId": "ed41d935-3a98-422c-9545-48301c16e6ec",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "g48SpM6DpG",
    "longitude": 15.431262465576165,
    "latitude": 47.07154700000001,
    "status": "busy"
  },
  {
    "stationId": "a284b3e7-67a8-45d0-bfff-5c7f427740b8",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "xqDsEcLLkd",
    "longitude": 5.205317465576154,
    "latitude": 52.378082,
    "status": "busy"
  },
  {
    "stationId": "1abb5ec2-3a57-43e0-96d1-f7ff463b1b48",
    "tenantId": "2efebfa6-c096-43c9-9653-32eb6d50a1f6",
    "chargePointId": "QLCY7mv1Dq",
    "longitude": 9.749535465576157,
    "latitude": 50.35569299999999,
    "status": "busy"
  },
  {
    "stationId": "e96c300c-5cbc-42d3-8b4e-1d2dfc9f29d3",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "UEB09xSyVZ",
    "longitude": 9.704486465576165,
    "latitude": 46.701816999999984,
    "status": "busy"
  },
  {
    "stationId": "e9357c08-2c33-4c57-83b4-3ee180d6bbea",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "dYBsAS2hVg",
    "longitude": 11.468039465576156,
    "latitude": 46.285299999999985,
    "status": "busy"
  },
  {
    "stationId": "3bf816c4-7bdb-4fd6-9808-b5b2fc4972d9",
    "tenantId": "949e5429-e791-4184-af48-c50fa99e6cbd",
    "chargePointId": "zwgQRmp1kv",
    "longitude": 7.413935465576165,
    "latitude": 43.73679700000001,
    "status": "busy"
  },
  {
    "stationId": "24359284-cd9a-4d22-8b80-550b51c69bc3",
    "tenantId": "d010c77e-33a2-4642-a5c4-d8a527932987",
    "chargePointId": "IIVCjzD3HR",
    "longitude": 15.760576465576163,
    "latitude": 48.187745,
    "status": "busy"
  },
  {
    "stationId": "a476e8c7-d47e-4776-9898-416b005547cd",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "rLGv9XoLT7",
    "longitude": 11.002679465576177,
    "latitude": 46.965196999999996,
    "status": "busy"
  },
  {
    "stationId": "027abfbf-c424-49aa-8d27-0288ad02e393",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "3smpucaoYB",
    "longitude": 9.150058465576171,
    "latitude": 47.445394999999984,
    "status": "busy"
  },
  {
    "stationId": "c44a191c-7c10-4b90-9c34-2372476116f0",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "JA0GYiN7FK",
    "longitude": 6.647804465576175,
    "latitude": 50.69391000000002,
    "status": "busy"
  },
  {
    "stationId": "b93cfa73-7832-48c6-a250-8035912b4afc",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "C48ykdrn1W",
    "longitude": 4.80330046557619,
    "latitude": 45.78286900000003,
    "status": "busy"
  },
  {
    "stationId": "794948fb-4d1d-40bb-a173-eb268a78771d",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "B5lbwLlv2Q",
    "longitude": 13.45424046557618,
    "latitude": 52.500343,
    "status": "busy"
  },
  {
    "stationId": "68b7f5fa-af37-4da5-b229-af3543e78ce2",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "lc4BFsTG3e",
    "longitude": 6.10652746557617,
    "latitude": 46.219103999999994,
    "status": "busy"
  },
  {
    "stationId": "431dc9cc-66e2-4bce-b8d0-023bb1c74fa2",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "JpDp4yBZog",
    "longitude": 9.189764465576168,
    "latitude": 46.463105,
    "status": "busy"
  },
  {
    "stationId": "3528a723-40e8-4f6f-990a-947568c1651c",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "lTZ5NVSADs",
    "longitude": 4.90098246557618,
    "latitude": 46.569824,
    "status": "busy"
  },
  {
    "stationId": "eb379366-b94f-46b7-8acb-131656daf46b",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "kWOMJeAOKC",
    "longitude": 10.443248465576183,
    "latitude": 44.75960700000002,
    "status": "busy"
  },
  {
    "stationId": "962b2750-841e-4175-b57e-831fc132cef5",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "iI6Y2lAJUH",
    "longitude": 8.703376465576174,
    "latitude": 47.24657500000001,
    "status": "busy"
  },
  {
    "stationId": "cd9a836e-70eb-411a-89f6-b76c0ad875f8",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "buHLnPVcsy",
    "longitude": 6.891683465576155,
    "latitude": 52.223512,
    "status": "busy"
  },
  {
    "stationId": "d08a67bf-d340-4289-a020-21cedea29c09",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "KcbiW3VNV4",
    "longitude": 5.906934465576161,
    "latitude": 51.98444399999999,
    "status": "busy"
  },
  {
    "stationId": "b9afba19-6ce7-4572-adba-027e8aefaf0a",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "4WExYjYaEy",
    "longitude": 10.343166465576177,
    "latitude": 45.464422999999975,
    "status": "busy"
  },
  {
    "stationId": "10c6b670-1a00-4d64-a65b-8277dfeb242b",
    "tenantId": "52e2d3b5-d4b1-455f-a68d-b66094d6e57d",
    "chargePointId": "7DDlCgS8IZ",
    "longitude": 7.630518465576177,
    "latitude": 50.20517099999999,
    "status": "busy"
  },
  {
    "stationId": "7a6aba94-3707-4f93-b78b-ca0574493223",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "sJfTBQKeFk",
    "longitude": 13.515145465576154,
    "latitude": 52.42762,
    "status": "busy"
  },
  {
    "stationId": "b60a7fef-aac7-4bb8-abb6-e39515a643f5",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "21Z5k6myhT",
    "longitude": 8.823322465576169,
    "latitude": 49.87753800000001,
    "status": "busy"
  },
  {
    "stationId": "fb964bb2-f8af-4491-b6aa-305986242f47",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "VIKBCeXzcU",
    "longitude": 5.810429465576155,
    "latitude": 49.887386,
    "status": "busy"
  },
  {
    "stationId": "ac033b9b-2f2e-462b-962c-661c0006d996",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "OnhGn0RQor",
    "longitude": 11.597817465576185,
    "latitude": 48.133964000000006,
    "status": "busy"
  },
  {
    "stationId": "38087188-bafa-4f9e-a833-7f53620afbbb",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "qGRH87KyVo",
    "longitude": 8.61074946557617,
    "latitude": 46.88818800000002,
    "status": "busy"
  },
  {
    "stationId": "0eaa0668-9038-469a-899b-5c606f7799bc",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "bnWd3Yif59",
    "longitude": 9.878205465576157,
    "latitude": 46.86792100000001,
    "status": "busy"
  },
  {
    "stationId": "5d49fbf5-ebe6-4d59-ba82-69453aed09a2",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "pLrGYhezyG",
    "longitude": 7.555221465576172,
    "latitude": 46.87472200000003,
    "status": "busy"
  },
  {
    "stationId": "d6e06e0b-5385-4fc0-a822-f7fa2133847b",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "O9Df6k9KLL",
    "longitude": 7.308536465576156,
    "latitude": 49.34716199999999,
    "status": "busy"
  },
  {
    "stationId": "54a10178-24d3-45a2-85de-29e826f330e7",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "idEuTlsd13",
    "longitude": 7.928224465576186,
    "latitude": 46.110361000000005,
    "status": "busy"
  },
  {
    "stationId": "b2a3df36-a27b-4a99-862d-65b5e86d5d56",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "I42UlZSFfi",
    "longitude": 16.295064465576154,
    "latitude": 48.651362999999996,
    "status": "busy"
  },
  {
    "stationId": "ad07d034-5666-4844-8d14-67ce8b4a415d",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "DSj0GIEbEv",
    "longitude": 5.27301887835693,
    "latitude": 51.43754913944583,
    "status": "busy"
  },
  {
    "stationId": "a1bdd0db-73da-483b-8549-acc4bdbb7361",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "K7gMU6H4E7",
    "longitude": 9.775091465576162,
    "latitude": 46.743738000000015,
    "status": "busy"
  },
  {
    "stationId": "492a50d2-8415-4314-8d64-512332c770db",
    "tenantId": "11ba4769-101a-47db-be71-f180bfb11826",
    "chargePointId": "SMFVe0hFGc",
    "longitude": 4.626858465576156,
    "latitude": 51.83928999999998,
    "status": "busy"
  },
  {
    "stationId": "b763e412-b980-44e5-994d-b6f4ccdd34d3",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "sAhUQJjoxX",
    "longitude": 8.456573465576186,
    "latitude": 47.24691799999999,
    "status": "busy"
  },
  {
    "stationId": "167bc953-2eca-4ed0-86a4-d79569c3da73",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "ECCTREIhTh",
    "longitude": 13.275657465576177,
    "latitude": 52.396037,
    "status": "busy"
  },
  {
    "stationId": "a381d428-91fc-46f1-b800-ea7ae6a114f4",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "2QTR3zva3s",
    "longitude": 6.81216446557618,
    "latitude": 51.22323500000001,
    "status": "busy"
  },
  {
    "stationId": "8c280f3d-835d-4281-8ca2-13e95894c113",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "1uGVw2mvxo",
    "longitude": 9.813437465576182,
    "latitude": 46.793107000000035,
    "status": "busy"
  },
  {
    "stationId": "47d9470a-3ae0-4148-a977-a1c4a531b884",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "RtV16NdLYx",
    "longitude": 5.17135646557616,
    "latitude": 52.155236999999985,
    "status": "busy"
  },
  {
    "stationId": "0d8a6cf0-c57c-4551-811b-03455b99777a",
    "tenantId": "2efebfa6-c096-43c9-9653-32eb6d50a1f6",
    "chargePointId": "fbsdXlotoB",
    "longitude": 12.162149465576174,
    "latitude": 48.97366199999998,
    "status": "busy"
  },
  {
    "stationId": "fbb1e942-61bb-4888-b1c2-ba4094c08727",
    "tenantId": "52e2d3b5-d4b1-455f-a68d-b66094d6e57d",
    "chargePointId": "TfVRprQd7e",
    "longitude": 7.40753446557616,
    "latitude": 43.730333,
    "status": "busy"
  },
  {
    "stationId": "9ed1f3e6-a7fc-49b8-a73f-cccb046fb4ef",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "DG3QRxBbxL",
    "longitude": 5.480761465576163,
    "latitude": 52.49470600000003,
    "status": "busy"
  },
  {
    "stationId": "19f1d69d-bbc2-4714-a4f2-30b7f0fb1949",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "S2ji9rg6eK",
    "longitude": 7.185195465576153,
    "latitude": 43.709578000000015,
    "status": "busy"
  },
  {
    "stationId": "c6268237-ac3f-42cc-a54d-dfcaa5cd7cc0",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "8NvJfL5Exk",
    "longitude": 4.845225465576175,
    "latitude": 45.753301,
    "status": "busy"
  },
  {
    "stationId": "38bc991e-35c0-488f-836a-09d0ad1d47eb",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "euQFlUdgf8",
    "longitude": 5.906934465576161,
    "latitude": 51.98444399999999,
    "status": "busy"
  },
  {
    "stationId": "a99cc99a-8d01-4213-bceb-4c331b6677b7",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "pTcU9VcUOK",
    "longitude": 5.268387465576163,
    "latitude": 52.382529,
    "status": "busy"
  },
  {
    "stationId": "439641c6-ef16-4a90-a175-b52a0632385a",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "4bfqEEpdoA",
    "longitude": 4.800394465576154,
    "latitude": 45.77703500000001,
    "status": "busy"
  },
  {
    "stationId": "e069994a-15bb-4069-84ce-85e45f492095",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "PNGzXvoFWf",
    "longitude": 4.892220465576189,
    "latitude": 45.748179999999984,
    "status": "busy"
  },
  {
    "stationId": "f7f18ef8-fedf-49f2-9049-b2d4d7fa79ed",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "u4qFza6HCj",
    "longitude": 15.323445465576171,
    "latitude": 48.59017500000003,
    "status": "busy"
  },
  {
    "stationId": "49d7a800-59a6-44dc-b98d-dd79211d61f8",
    "tenantId": "2dfe6bf1-747b-4fa3-a9ab-ef5923d66b3e",
    "chargePointId": "42tGXlofel",
    "longitude": 12.172859465576193,
    "latitude": 47.80123800000001,
    "status": "busy"
  },
  {
    "stationId": "a8e73a94-72e4-4a10-9d79-084fc960cb4e",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "LI8nGnhW5D",
    "longitude": 5.460620465576156,
    "latitude": 52.25514700000003,
    "status": "busy"
  },
  {
    "stationId": "ab85dc52-1f5d-4939-91d0-5e8b0b8fc7eb",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "VOYDgY0oXr",
    "longitude": 11.465017465576155,
    "latitude": 48.837101000000004,
    "status": "busy"
  },
  {
    "stationId": "59247a20-a37d-4027-95da-240a846ddef9",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "BZw6mEwMAs",
    "longitude": 10.852766465576158,
    "latitude": 45.87949400000003,
    "status": "busy"
  },
  {
    "stationId": "8a4607e1-ca7d-4138-b13b-cd8d277ce8a6",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "CrfWcqm5mH",
    "longitude": 8.567520465576166,
    "latitude": 47.43706799999999,
    "status": "busy"
  },
  {
    "stationId": "8887f3d1-4093-4530-ad5f-eaa057fbf393",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "bYvCf1AfVx",
    "longitude": 6.589939014602675,
    "latitude": 51.93190939325255,
    "status": "busy"
  },
  {
    "stationId": "c961a5cd-21d1-4a7c-8bb7-61f4f1b60cda",
    "tenantId": "004a3de4-ace9-4dbe-897b-86b4bf2428e2",
    "chargePointId": "42v64u7Rer",
    "longitude": 10.989997465576185,
    "latitude": 49.4698,
    "status": "busy"
  },
  {
    "stationId": "bb7c3585-9b8f-489e-931a-42828c63c41c",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "st9pia0f7z",
    "longitude": 4.8538044655761725,
    "latitude": 45.767653999999986,
    "status": "busy"
  },
  {
    "stationId": "7e3ea063-52bc-40d4-86b2-2ff11f2fe2ca",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "a0Hh6uNJG0",
    "longitude": 12.333981465576151,
    "latitude": 45.504634,
    "status": "busy"
  },
  {
    "stationId": "117d8dfb-66fe-42c2-a1d8-d8b96da4293a",
    "tenantId": "ee22d3e7-c9b3-46fc-99a0-4defe94b2206",
    "chargePointId": "ikrMSLRsCu",
    "longitude": 11.81667139280702,
    "latitude": 47.159522417710825,
    "status": "busy"
  },
  {
    "stationId": "6263c629-a53b-4491-b3e5-73092a8bf9f7",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "iDQpyEuJcB",
    "longitude": 10.399915465576166,
    "latitude": 53.24381400000004,
    "status": "busy"
  },
  {
    "stationId": "240561f5-68f6-4357-befe-83d67060fa74",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "t9gZY2WxpX",
    "longitude": 14.178320465576153,
    "latitude": 46.606244999999994,
    "status": "busy"
  },
  {
    "stationId": "6cb586e7-de1f-499e-9899-343a621c1dd4",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "tnzinqLzkE",
    "longitude": 7.407771465576185,
    "latitude": 46.946819,
    "status": "busy"
  },
  {
    "stationId": "05012485-7155-4b6c-ae1c-8a0187521299",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "x7Qrbruv5W",
    "longitude": 5.557682465576166,
    "latitude": 51.70141400000001,
    "status": "busy"
  },
  {
    "stationId": "40e352d9-3fa2-4dca-8e69-5caf4c297564",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "gHQXfgjnuY",
    "longitude": 4.795995465576168,
    "latitude": 45.77999700000004,
    "status": "busy"
  },
  {
    "stationId": "990cde37-d29e-4cf0-91a4-4f23f6731732",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "kRw5Gsef6w",
    "longitude": 10.289213465576154,
    "latitude": 50.41994800000002,
    "status": "busy"
  },
  {
    "stationId": "2dc8121b-c524-4fda-8695-97233bf6511e",
    "tenantId": "2efebfa6-c096-43c9-9653-32eb6d50a1f6",
    "chargePointId": "WYWIwSTk9R",
    "longitude": 7.245212465576154,
    "latitude": 47.138794999999995,
    "status": "busy"
  },
  {
    "stationId": "3764a25a-9e60-477b-b5c1-d26e0c5e295f",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "7pLcQxX2ji",
    "longitude": 6.731573465576157,
    "latitude": 44.934768,
    "status": "busy"
  },
  {
    "stationId": "58e16f8a-fabc-476b-8396-7c25403bf3dc",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "ln636aB6XS",
    "longitude": 15.567831768478397,
    "latitude": 46.39777242568,
    "status": "busy"
  },
  {
    "stationId": "9822feb6-7b2e-49fe-9fb3-166efef627cb",
    "tenantId": "2efebfa6-c096-43c9-9653-32eb6d50a1f6",
    "chargePointId": "taqHjcupY1",
    "longitude": 7.687993465576164,
    "latitude": 48.55183400000001,
    "status": "busy"
  },
  {
    "stationId": "2f931963-44b2-4588-bfd9-560a25a3b33f",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "4ly0UuHHsu",
    "longitude": 14.938859465576169,
    "latitude": 52.321951000000006,
    "status": "busy"
  },
  {
    "stationId": "b7b7eb31-30d8-4839-ac5f-692f069bf8d9",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "NvI3THoLgw",
    "longitude": 5.224580465576176,
    "latitude": 52.253671999999995,
    "status": "busy"
  },
  {
    "stationId": "04e6194a-be16-4186-8095-4a5741a58014",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "aMMtjiYGxA",
    "longitude": 15.422172465576173,
    "latitude": 47.059286,
    "status": "busy"
  },
  {
    "stationId": "5388569e-7e2b-4cef-a22a-dcc925ab0eda",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "KwU1u42UGS",
    "longitude": 6.23240746557618,
    "latitude": 46.61285700000002,
    "status": "busy"
  },
  {
    "stationId": "c2df0080-37f0-495b-81ba-da6e50cd99f3",
    "tenantId": "ee22d3e7-c9b3-46fc-99a0-4defe94b2206",
    "chargePointId": "HxFDcJkEUZ",
    "longitude": 11.273394465576153,
    "latitude": 45.404041,
    "status": "busy"
  },
  {
    "stationId": "75038bcd-e1e9-4228-a386-f9cf388bf11b",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "wt6eZNe7OL",
    "longitude": 8.180452465576158,
    "latitude": 47.280069000000005,
    "status": "busy"
  },
  {
    "stationId": "d2353b1f-de0f-4de9-949a-a0a1e1b500ea",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "rmFRWEh38w",
    "longitude": 18.18630646557619,
    "latitude": 48.531751000000014,
    "status": "busy"
  },
  {
    "stationId": "0e47b704-821b-4341-a9d8-375e044cba59",
    "tenantId": "949e5429-e791-4184-af48-c50fa99e6cbd",
    "chargePointId": "yGKDbIDXuk",
    "longitude": 20.04375346557618,
    "latitude": 50.081549,
    "status": "busy"
  },
  {
    "stationId": "d96d3e37-3d20-4790-a7bc-4d332b4a19e3",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "Mbk6wEUYWt",
    "longitude": 11.613237465576182,
    "latitude": 48.15291199999999,
    "status": "busy"
  },
  {
    "stationId": "b2a5e697-9663-4bed-afae-db51160c1493",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "MlpYb6Oatw",
    "longitude": 7.688954465576181,
    "latitude": 47.525748,
    "status": "busy"
  },
  {
    "stationId": "c8dc5539-338e-42fe-92dd-66179b2f74d8",
    "tenantId": "949e5429-e791-4184-af48-c50fa99e6cbd",
    "chargePointId": "JzTN2RgRVB",
    "longitude": 7.414903465576161,
    "latitude": 43.73880100000002,
    "status": "busy"
  },
  {
    "stationId": "2115364e-ced1-4357-bdce-afce378576fc",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "xJX1PVRihc",
    "longitude": 9.234903465576174,
    "latitude": 47.43908700000003,
    "status": "busy"
  },
  {
    "stationId": "67f5fec2-3e78-4145-8eb6-71da13bb4457",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "3jLoopyERf",
    "longitude": 10.18258346557617,
    "latitude": 46.96843800000001,
    "status": "busy"
  },
  {
    "stationId": "b9202ede-8673-4e52-87c5-263b337152d1",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "MLTRnbjS1s",
    "longitude": 5.966587465576181,
    "latitude": 52.821146999999996,
    "status": "busy"
  },
  {
    "stationId": "4dc8b36d-6201-41cc-8375-6050e1470e15",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "dl8LAqZ3c1",
    "longitude": 16.49979046557617,
    "latitude": 48.36881400000001,
    "status": "busy"
  },
  {
    "stationId": "a5511c0d-c1c0-4fe1-8afb-a205dca0d5d3",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "SmxJHnLQ8z",
    "longitude": 7.011039465576174,
    "latitude": 52.93010100000001,
    "status": "busy"
  },
  {
    "stationId": "24a0e39b-dee8-443d-b995-718eebf54d03",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "lRQslknFbV",
    "longitude": 4.8519744655761565,
    "latitude": 45.757711000000015,
    "status": "busy"
  },
  {
    "stationId": "68c3ac0d-5d6a-460a-80cb-1b7e941c6d03",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "bitSRKygwZ",
    "longitude": 5.889337465576174,
    "latitude": 51.58374800000001,
    "status": "busy"
  },
  {
    "stationId": "00e6f411-18c1-43d8-9926-6d95042436f6",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "FrUdWytAxT",
    "longitude": 6.904120047668472,
    "latitude": 50.97233597629007,
    "status": "busy"
  },
  {
    "stationId": "40c17415-2a77-4db5-9bfa-c87e95d72fde",
    "tenantId": "949e5429-e791-4184-af48-c50fa99e6cbd",
    "chargePointId": "Y4WMtyt5r7",
    "longitude": 4.530264465576179,
    "latitude": 50.57257299999998,
    "status": "busy"
  },
  {
    "stationId": "cfb6602d-16a8-4dfb-9574-020bb141e3a8",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "kXQ8Ou5QOI",
    "longitude": 11.92295046557617,
    "latitude": 46.699158,
    "status": "busy"
  },
  {
    "stationId": "1449d75c-0f2a-4015-bf95-e4067d0251c8",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "OJrAYyM125",
    "longitude": 7.377656465576186,
    "latitude": 46.231072999999995,
    "status": "busy"
  },
  {
    "stationId": "6eb3caf2-6f57-47ed-ae6b-4ed84d99493f",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "gHJ0bvTm8a",
    "longitude": 4.41763546557616,
    "latitude": 51.213604,
    "status": "busy"
  },
  {
    "stationId": "8ae28205-9aa0-469c-acac-c967f04d10f0",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "CmobwacpZX",
    "longitude": 6.0363664655761795,
    "latitude": 52.624179,
    "status": "busy"
  },
  {
    "stationId": "fc77cf72-b298-46da-a87d-935b18ecbcf4",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "HhRY8wBB96",
    "longitude": 7.276130465576167,
    "latitude": 43.708038999999985,
    "status": "busy"
  },
  {
    "stationId": "0154ed00-ea2a-44ab-b60e-d452c131f7ae",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "hV8repOCzn",
    "longitude": 8.904062431182842,
    "latitude": 48.61277031572424,
    "status": "busy"
  },
  {
    "stationId": "8068aeea-5c72-4694-b864-cbeac5745c8e",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "hcTuWIhODI",
    "longitude": 10.009346465576172,
    "latitude": 47.55072599999998,
    "status": "busy"
  },
  {
    "stationId": "6c3e0c3d-b5ff-4f2e-8474-90da6d4f74fb",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "n69bmIe69Q",
    "longitude": 12.935527465576184,
    "latitude": 52.54744500000003,
    "status": "busy"
  },
  {
    "stationId": "e690e669-ce22-4715-8d2a-3b1bf8c80bfe",
    "tenantId": "52e2d3b5-d4b1-455f-a68d-b66094d6e57d",
    "chargePointId": "ARybN2J4lb",
    "longitude": 7.426286465576188,
    "latitude": 43.74144299999998,
    "status": "busy"
  },
  {
    "stationId": "95692697-762c-4fc7-a9e5-3de5ab15d98f",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "S3gkFaqw6q",
    "longitude": 4.88032346557616,
    "latitude": 45.75456899999998,
    "status": "busy"
  },
  {
    "stationId": "23fca2a2-05da-4754-83e0-4e6e2027e41c",
    "tenantId": "a0332b3f-950e-4bdf-a50f-488a09e6fdb6",
    "chargePointId": "WrysYRNxMk",
    "longitude": 4.558879465576169,
    "latitude": 51.89526800000005,
    "status": "busy"
  },
  {
    "stationId": "85fa267b-3673-4df3-ba5b-40792b590726",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "Jxkk2g4C2T",
    "longitude": 5.435667465576164,
    "latitude": 52.501599000000034,
    "status": "busy"
  },
  {
    "stationId": "31bea0d0-5e09-44ac-8411-f1a730fe5387",
    "tenantId": "2efebfa6-c096-43c9-9653-32eb6d50a1f6",
    "chargePointId": "3BPBFR0q4w",
    "longitude": 12.162149465576174,
    "latitude": 48.97366199999998,
    "status": "busy"
  },
  {
    "stationId": "92ce26ee-a55f-4de0-8d6a-dc9805846683",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "LHGrCLF6B4",
    "longitude": 13.657316465576166,
    "latitude": 45.956521,
    "status": "busy"
  },
  {
    "stationId": "e5a4a6b5-dc5e-4dcb-99e6-10d719a6ee24",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "GDthtRQcrL",
    "longitude": 7.279150465576163,
    "latitude": 46.46794100000001,
    "status": "busy"
  },
  {
    "stationId": "53e4fb54-2144-4f71-827e-be8a442eb9c5",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "WyPIJkzNVm",
    "longitude": 16.41260546557616,
    "latitude": 45.88538200000001,
    "status": "busy"
  },
  {
    "stationId": "0386966e-e185-4e9c-bd73-e0fc1aca8de6",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "pD7ofAinVE",
    "longitude": 6.7275654655761885,
    "latitude": 43.590842,
    "status": "busy"
  },
  {
    "stationId": "99c711ff-0ba7-48ab-9f0e-37deb2e0397c",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "AAqqyF027C",
    "longitude": 8.434861465576171,
    "latitude": 47.08145200000004,
    "status": "busy"
  },
  {
    "stationId": "17826a62-ce7b-47b7-82ac-6fa1fa6095e5",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "tTckEaKOVF",
    "longitude": 6.731573465576157,
    "latitude": 44.934768,
    "status": "busy"
  },
  {
    "stationId": "2baf86db-d125-4d05-a752-131fb4b12f7f",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "n7g4khMd5z",
    "longitude": 7.198570465576171,
    "latitude": 53.18028600000002,
    "status": "busy"
  },
  {
    "stationId": "1c3f4b13-cdd8-45d6-9d28-a5bacd775013",
    "tenantId": "949e5429-e791-4184-af48-c50fa99e6cbd",
    "chargePointId": "rsTzpSQuMe",
    "longitude": 15.706516465576161,
    "latitude": 47.1056,
    "status": "busy"
  },
  {
    "stationId": "1867bd2c-7e4c-4e18-9b4a-45bee2f4b9d7",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "cIq4B0FIvD",
    "longitude": 5.598035465576179,
    "latitude": 52.265735000000014,
    "status": "busy"
  },
  {
    "stationId": "3d543ced-97dc-4685-857b-d3cf24e9c2b0",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "KGCvp18Agh",
    "longitude": 8.812579465576178,
    "latitude": 49.10517600000001,
    "status": "busy"
  },
  {
    "stationId": "e95d1b37-f139-4c69-b59c-e22329326afb",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "56KDbRsnmi",
    "longitude": 4.788277465576187,
    "latitude": 50.810058,
    "status": "busy"
  },
  {
    "stationId": "e820be91-7de0-495c-8c61-b68174d9b016",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "6v5YRDSIgh",
    "longitude": 19.58067946557618,
    "latitude": 48.966249000000005,
    "status": "busy"
  },
  {
    "stationId": "66744528-744c-4174-a5e8-b1e570ead037",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "6abWHfH9MA",
    "longitude": 4.3548994655761675,
    "latitude": 50.837958000000015,
    "status": "busy"
  },
  {
    "stationId": "3f382690-7a4e-4919-99aa-1b5af3ddcc52",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "8r6dYHwor6",
    "longitude": 8.990324465576188,
    "latitude": 50.25055400000001,
    "status": "busy"
  },
  {
    "stationId": "a7cba2d3-06bf-4677-aa03-69238f86179d",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "2ZR2j52qTH",
    "longitude": 12.662679465576181,
    "latitude": 43.99814299999999,
    "status": "busy"
  },
  {
    "stationId": "4b5abe6d-6e6e-4ade-bdd2-e12f987d7bce",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "9NTeDIh5Js",
    "longitude": 4.829171465576159,
    "latitude": 44.757378,
    "status": "busy"
  },
  {
    "stationId": "60382541-a24e-4066-8da3-914a47d3989f",
    "tenantId": "02c73622-45dd-4909-8200-88101bfc629e",
    "chargePointId": "04z8WRIWMD",
    "longitude": 7.704691465576188,
    "latitude": 48.591983000000006,
    "status": "busy"
  },
  {
    "stationId": "d87b8cf2-f2b0-4516-aceb-b10b2b1555d0",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "vRD88B1hSP",
    "longitude": 7.4550954655761625,
    "latitude": 46.922710999999985,
    "status": "busy"
  },
  {
    "stationId": "0093b481-db9e-47f8-99ff-2b08fe86ad0f",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "qomJNrA4dn",
    "longitude": 12.147717465576191,
    "latitude": 47.56610800000005,
    "status": "busy"
  },
  {
    "stationId": "fa943df7-b153-4576-8534-750fcfd137e1",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "vvUD3c565o",
    "longitude": 13.834081465576187,
    "latitude": 44.84844399999999,
    "status": "busy"
  },
  {
    "stationId": "8dcae2e3-7d31-4e47-8da8-155f16a0ec6b",
    "tenantId": "ee22d3e7-c9b3-46fc-99a0-4defe94b2206",
    "chargePointId": "NZk78P3Ot5",
    "longitude": 10.901505465576186,
    "latitude": 48.34099600000002,
    "status": "busy"
  },
  {
    "stationId": "6d61b5bb-6577-4e98-980c-b6fe922cf55a",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "ZCThUfMbVe",
    "longitude": 6.762827465576153,
    "latitude": 51.21756000000004,
    "status": "busy"
  },
  {
    "stationId": "5da3fcd4-8b1b-4a2b-94df-2d5a8ee4729c",
    "tenantId": "949e5429-e791-4184-af48-c50fa99e6cbd",
    "chargePointId": "lp6mGoR7CG",
    "longitude": 7.413304465576154,
    "latitude": 43.73056700000001,
    "status": "busy"
  },
  {
    "stationId": "dd8bdd0a-cfe4-4885-aaa8-0c39bffd5891",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "09k4TYh51R",
    "longitude": 5.409162465576176,
    "latitude": 51.431449000000015,
    "status": "busy"
  },
  {
    "stationId": "4565dfbb-0311-4fa5-a076-00dde6a78bd6",
    "tenantId": "52e2d3b5-d4b1-455f-a68d-b66094d6e57d",
    "chargePointId": "zWi4BiG2x2",
    "longitude": 9.26832746557618,
    "latitude": 45.577494,
    "status": "busy"
  },
  {
    "stationId": "28c0d78c-fbf8-4739-886f-8e2a0a1197f1",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "1lnOIiTW0B",
    "longitude": 9.568376284439099,
    "latitude": 46.694366720006144,
    "status": "busy"
  },
  {
    "stationId": "9df1c992-948a-40cc-8a61-84c0b94a485c",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "6x4hocMaEo",
    "longitude": 8.839810465576162,
    "latitude": 47.277854999999995,
    "status": "busy"
  },
  {
    "stationId": "9b7f038c-e6a7-49c4-b910-3c6601999ca2",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "SESbQJunyC",
    "longitude": 9.33708746557616,
    "latitude": 49.838638999999986,
    "status": "busy"
  },
  {
    "stationId": "ca185d85-b399-433a-a4f3-8f92e9435fde",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "62rtlqaRSe",
    "longitude": 19.045695465576156,
    "latitude": 47.579509999999985,
    "status": "busy"
  },
  {
    "stationId": "be2ffdb8-3482-4a78-9697-816208025667",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "MGplzInf1Z",
    "longitude": 6.088393465576156,
    "latitude": 51.496297999999996,
    "status": "busy"
  },
  {
    "stationId": "26edeeb3-a1ab-4151-86aa-77597229e0ed",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "casNa7qPwQ",
    "longitude": 5.805900465576164,
    "latitude": 51.431350999999985,
    "status": "busy"
  },
  {
    "stationId": "1a9d9688-6214-45dc-b1b8-93dea090d23d",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "Rox7eLmWho",
    "longitude": 8.539340465576156,
    "latitude": 47.37696900000001,
    "status": "busy"
  },
  {
    "stationId": "01ef2343-c8ec-49d9-9141-162889f340e8",
    "tenantId": "2efebfa6-c096-43c9-9653-32eb6d50a1f6",
    "chargePointId": "n9lsiI2WoK",
    "longitude": 9.018988465576156,
    "latitude": 46.19031199999999,
    "status": "busy"
  },
  {
    "stationId": "3485fd1d-b2b9-41d0-8efb-024b63429b8f",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "uqaccB2bJd",
    "longitude": 8.903837465576178,
    "latitude": 49.136964,
    "status": "busy"
  },
  {
    "stationId": "6807408c-2c32-451d-bad5-680be011a919",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "eCd6bAZWC6",
    "longitude": 10.02253646557619,
    "latitude": 53.58157900000001,
    "status": "busy"
  },
  {
    "stationId": "2c78965b-88eb-494a-bf21-04f853ad6dca",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "vngGg0cHz5",
    "longitude": 7.247736465576158,
    "latitude": 43.697951000000025,
    "status": "busy"
  },
  {
    "stationId": "10007849-6b68-4d1d-8224-7b5e757ae11e",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "ZLUEWH0df2",
    "longitude": 8.622838465576178,
    "latitude": 48.206183,
    "status": "busy"
  },
  {
    "stationId": "e46ab26b-5605-4a04-b018-4dc1f11a185a",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "ViP9S2iGph",
    "longitude": 5.7132024655761615,
    "latitude": 50.856526000000024,
    "status": "busy"
  },
  {
    "stationId": "ded188a3-facf-46e0-872b-205d6e0b3b15",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "eOotlcvXGO",
    "longitude": 7.2882974655761545,
    "latitude": 47.161207000000005,
    "status": "busy"
  },
  {
    "stationId": "acaa48f3-1df0-459b-a11a-848d8555d25f",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "NgYeNII2oq",
    "longitude": 5.226780465576191,
    "latitude": 52.24727499999999,
    "status": "busy"
  },
  {
    "stationId": "9605e5b9-8d66-4635-8958-c91728754221",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "GujGrkR3Bi",
    "longitude": 8.51091146557617,
    "latitude": 47.164197,
    "status": "busy"
  },
  {
    "stationId": "c4e6e206-2a12-4775-a6f4-2dfd0d507ede",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "0qok1nIhJD",
    "longitude": 5.030149465576175,
    "latitude": 47.32444400000002,
    "status": "busy"
  },
  {
    "stationId": "d18886b9-a520-4036-83f1-2c9086601649",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "DYFljxJcNl",
    "longitude": 3.72387446557616,
    "latitude": 51.02575900000003,
    "status": "busy"
  },
  {
    "stationId": "2f036c2f-7f8e-436c-8c6a-b895a2911cb4",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "0xExvhDtry",
    "longitude": 8.285900465576184,
    "latitude": 50.019925,
    "status": "busy"
  },
  {
    "stationId": "bdec83c6-384c-4775-aeda-ab2d5f002bbf",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "ErUtyRF1J4",
    "longitude": 10.50964246557616,
    "latitude": 45.059672,
    "status": "busy"
  },
  {
    "stationId": "5e0dc90f-ca41-4187-95c0-a6281f1581f9",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "ulyLl0NS36",
    "longitude": 4.0169504655761745,
    "latitude": 51.36586200000001,
    "status": "busy"
  },
  {
    "stationId": "f880a767-166d-4bea-8f75-0af21e24f00d",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "gxFoEc5R5m",
    "longitude": 5.519643465576167,
    "latitude": 51.76386100000001,
    "status": "busy"
  },
  {
    "stationId": "81cb751e-7110-4220-95eb-a7dc5d02b6ef",
    "tenantId": "52e2d3b5-d4b1-455f-a68d-b66094d6e57d",
    "chargePointId": "UlDqOA9xVV",
    "longitude": 7.414903465576161,
    "latitude": 43.73880100000002,
    "status": "busy"
  },
  {
    "stationId": "248cd99b-5a2c-422d-bd37-5b7a33f6a400",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "WqIQEc7bMV",
    "longitude": 7.606255465576162,
    "latitude": 46.81727499999998,
    "status": "busy"
  },
  {
    "stationId": "709136eb-dc4f-48b9-b92a-cf7b1c653d4f",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "a9MgfqPcAV",
    "longitude": 8.643068465576155,
    "latitude": 49.218100000000014,
    "status": "busy"
  },
  {
    "stationId": "b2aaa4ce-b0e1-41c7-a115-8fc72a395f42",
    "tenantId": "949e5429-e791-4184-af48-c50fa99e6cbd",
    "chargePointId": "GhKUgixAlA",
    "longitude": 7.413818465576156,
    "latitude": 43.735297,
    "status": "busy"
  },
  {
    "stationId": "35a1bf08-1b4f-47d7-a71c-a32a69d9ae18",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "qBRauiUdGl",
    "longitude": 6.81216446557618,
    "latitude": 51.22323500000001,
    "status": "busy"
  },
  {
    "stationId": "4927f2b0-b8ff-4953-9d34-adce195d7309",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "kSFFvuMpQa",
    "longitude": 7.280234465576165,
    "latitude": 46.47510300000001,
    "status": "busy"
  },
  {
    "stationId": "38d640ec-a3d4-49fb-95ea-18c43a24676d",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "9sf36lYJy8",
    "longitude": 4.8519744655761565,
    "latitude": 45.757711000000015,
    "status": "busy"
  },
  {
    "stationId": "2dd35218-caad-4dde-8d2a-dcba959fbc34",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "orb1CS6Rnb",
    "longitude": 7.28462246557616,
    "latitude": 46.473159,
    "status": "busy"
  },
  {
    "stationId": "17d57035-0c5a-4801-9420-4bca77acd7eb",
    "tenantId": "ee22d3e7-c9b3-46fc-99a0-4defe94b2206",
    "chargePointId": "wYhtptdWea",
    "longitude": 12.366673465576183,
    "latitude": 51.344585999999985,
    "status": "busy"
  },
  {
    "stationId": "b9258283-9f6b-47bf-ac26-d29d805b6789",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "vOgOPJ5dZJ",
    "longitude": 11.241287465576164,
    "latitude": 53.974168999999996,
    "status": "busy"
  },
  {
    "stationId": "06bff7a9-6cc7-42e2-b0ca-897612d09e1f",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "EFEmXERG2n",
    "longitude": 7.624187465576169,
    "latitude": 46.754473999999995,
    "status": "busy"
  },
  {
    "stationId": "b2a5e697-9663-4bed-afae-db51160c1493",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "MlpYb6Oatw",
    "longitude": 7.688954465576181,
    "latitude": 47.525748,
    "status": "busy"
  },
  {
    "stationId": "8b9f47dc-a299-4680-8f0b-8cec652fc592",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "ws6aNFhl0X",
    "longitude": 4.604638465576154,
    "latitude": 51.911021,
    "status": "busy"
  },
  {
    "stationId": "271a0111-ef1c-421e-ab04-f371c0915835",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "7gboSfGEl2",
    "longitude": 13.793318465576183,
    "latitude": 46.81444600000001,
    "status": "busy"
  },
  {
    "stationId": "66adccd7-0d65-4d30-b960-867c6c446388",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "2qWet5qHmd",
    "longitude": 8.586198465576187,
    "latitude": 52.90996799999999,
    "status": "busy"
  },
  {
    "stationId": "41a6abbd-27e6-4f05-a638-3c5b1bdafa45",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "D3TcqyucEV",
    "longitude": 10.28661446557618,
    "latitude": 46.794926000000004,
    "status": "busy"
  },
  {
    "stationId": "9ec7579a-2b97-4f97-8526-27c2c6de264d",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "uGxZvsYpxk",
    "longitude": 7.679019465576178,
    "latitude": 46.655288,
    "status": "busy"
  },
  {
    "stationId": "df97f65d-3c53-4630-9280-dcbe1383856a",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "eCtQADgvXy",
    "longitude": 16.570654465576172,
    "latitude": 48.56401000000002,
    "status": "busy"
  },
  {
    "stationId": "ef20f3ef-b463-420b-b35f-01038bd2e8b9",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "YtHG0tnosB",
    "longitude": 9.19949546557616,
    "latitude": 46.774865999999996,
    "status": "busy"
  },
  {
    "stationId": "a969a99a-60e1-4ec3-af94-f08a5e55b747",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "38m1Lzm9Ht",
    "longitude": 15.599931465576184,
    "latitude": 48.40654400000001,
    "status": "busy"
  },
  {
    "stationId": "b1ab4c19-b712-4c65-a82c-8de9158153c0",
    "tenantId": "004a3de4-ace9-4dbe-897b-86b4bf2428e2",
    "chargePointId": "In62qN8MSY",
    "longitude": 13.79422246557616,
    "latitude": 47.91757899999999,
    "status": "busy"
  },
  {
    "stationId": "f1581ff4-eccd-488f-a7d3-0911063a332f",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "weze0RYuBl",
    "longitude": 4.864089465576158,
    "latitude": 45.72879400000002,
    "status": "busy"
  },
  {
    "stationId": "f0f7c1ac-2f96-4ed8-86a9-80b180f168d1",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "mIYGz9PHzM",
    "longitude": 8.239138465576183,
    "latitude": 47.09752400000001,
    "status": "busy"
  },
  {
    "stationId": "b46da645-0e1a-40e9-8fa1-5dadcd4ad448",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "ywH57aVybx",
    "longitude": 15.275352465576155,
    "latitude": 46.241654000000004,
    "status": "busy"
  },
  {
    "stationId": "4652377d-50d0-45e5-a2dc-5585dcad6d20",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "ljzvEx19iu",
    "longitude": 13.674522465576175,
    "latitude": 51.163962999999995,
    "status": "busy"
  },
  {
    "stationId": "6c3adb60-8c01-4a82-a3ee-bbc4a5d1fb2d",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "znjXayUTs4",
    "longitude": 15.554131465576164,
    "latitude": 48.387809000000004,
    "status": "busy"
  },
  {
    "stationId": "4ae4cb92-7c9f-43cd-9cce-15ea98ede0b1",
    "tenantId": "2dfe6bf1-747b-4fa3-a9ab-ef5923d66b3e",
    "chargePointId": "95JB1AXXRg",
    "longitude": 8.563623465576189,
    "latitude": 49.656194,
    "status": "busy"
  },
  {
    "stationId": "1e5aa711-6e9a-4bcb-ad74-8eb41befb34e",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "C0121pKQup",
    "longitude": 6.92685646557619,
    "latitude": 51.825476999999985,
    "status": "busy"
  },
  {
    "stationId": "99d5047b-e211-4868-8ac8-61c78e4dedf7",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "aAwjabXplF",
    "longitude": 7.284902465576186,
    "latitude": 46.47629499999999,
    "status": "busy"
  },
  {
    "stationId": "066a29f3-cb8f-4c90-89ab-d60d8f2b17ba",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "N4bKFWDluO",
    "longitude": 5.911788465576184,
    "latitude": 52.807962,
    "status": "busy"
  },
  {
    "stationId": "53f8961a-62f6-4ea9-b61f-02e9be402e61",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "S7FvipVSve",
    "longitude": 4.54007746557616,
    "latitude": 51.525721000000004,
    "status": "busy"
  },
  {
    "stationId": "9c8eefdd-709e-412f-a3c1-3b23b18f1d90",
    "tenantId": "ee22d3e7-c9b3-46fc-99a0-4defe94b2206",
    "chargePointId": "q33FNqblW0",
    "longitude": 12.162149465576174,
    "latitude": 48.97366199999998,
    "status": "busy"
  },
  {
    "stationId": "b11c341f-844c-4fa2-8ea6-f3621f25c3d6",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "ZdshRxsdSg",
    "longitude": 4.433240465576156,
    "latitude": 51.142861999999994,
    "status": null
  },
  {
    "stationId": "e2163a9c-993a-4028-8034-c3c448b9d419",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "b6o12kGn8b",
    "longitude": 6.160907465576191,
    "latitude": 52.257241000000015,
    "status": null
  },
  {
    "stationId": "3afed1d9-b1be-4a57-b1e9-667970000b9c",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "atNrCf83Hq",
    "longitude": 5.346277465576166,
    "latitude": 51.719528000000004,
    "status": null
  },
  {
    "stationId": "4cc63993-b9c8-48b5-8ebb-a85c7e555029",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "3uhvay3Pll",
    "longitude": 15.72798746557618,
    "latitude": 52.75644500000002,
    "status": null
  },
  {
    "stationId": "de433c6d-0b77-4141-ae77-9bf7df679f25",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "Jbff6dk2wM",
    "longitude": 10.858806465576189,
    "latitude": 46.30507399999998,
    "status": "available"
  },
  {
    "stationId": "cf9758ec-1636-44a8-94c9-f23da6af7253",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "deJv5Llwk4",
    "longitude": 5.23582346557617,
    "latitude": 52.10594900000003,
    "status": "available"
  },
  {
    "stationId": "a7577e2c-57e4-4c5d-90f4-997076e72da8",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "2vXAugIRmJ",
    "longitude": 8.283574465576175,
    "latitude": 47.48912799999998,
    "status": "available"
  },
  {
    "stationId": "e5f2622a-8d0f-4174-92e6-7ffde0422fc7",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "wXmEfu0wHt",
    "longitude": 8.237548465576161,
    "latitude": 48.756179,
    "status": "available"
  },
  {
    "stationId": "bd0dcfee-6c27-4c7f-b140-cf46b685767c",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "N0Tc3UsdaB",
    "longitude": 5.236378465576168,
    "latitude": 52.299810000000015,
    "status": "available"
  },
  {
    "stationId": "feedc0fb-15c2-4f2b-bb62-1ac6b850779c",
    "tenantId": "004a3de4-ace9-4dbe-897b-86b4bf2428e2",
    "chargePointId": "NyHpjeC6jc",
    "longitude": 16.089589465576157,
    "latitude": 47.373917999999996,
    "status": "available"
  },
  {
    "stationId": "fe33bd4e-0ac7-4419-bf4d-d6226f6c3193",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "luJ58r6TRR",
    "longitude": 4.851713465576184,
    "latitude": 45.76247200000003,
    "status": "available"
  },
  {
    "stationId": "7972d92b-5974-4793-84e0-0a415dcb6d0b",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "QpSjcfdnNW",
    "longitude": 4.763288465576174,
    "latitude": 46.141777000000005,
    "status": "available"
  },
  {
    "stationId": "5a94d622-2efb-4025-bc6c-c3e2f73c5e32",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "A9IxhmLZHR",
    "longitude": 7.213983465576188,
    "latitude": 43.66936599999999,
    "status": "available"
  },
  {
    "stationId": "c26aaa4a-56eb-45ec-bbf6-5acef359d83c",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "vjcpWl234g",
    "longitude": 5.086328465576164,
    "latitude": 51.83907900000003,
    "status": "available"
  },
  {
    "stationId": "763d9c48-d39f-49ff-b68f-406666f0d1c9",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "3OADX5fT6u",
    "longitude": 7.192981465576165,
    "latitude": 43.66054700000001,
    "status": "available"
  },
  {
    "stationId": "eeac5fb9-e898-4c66-b565-a084856decea",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "OG4GRwueUb",
    "longitude": 11.955929465576167,
    "latitude": 47.374188,
    "status": "available"
  },
  {
    "stationId": "a5cf172b-8263-408e-bb01-b71458e42efe",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "wCIugsKqie",
    "longitude": 11.08735746557619,
    "latitude": 46.11161600000001,
    "status": "available"
  },
  {
    "stationId": "196231a6-fa11-4973-b1ac-86e0698af90f",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "AU6w3Yc7Op",
    "longitude": 5.40407946557619,
    "latitude": 51.441601,
    "status": "available"
  },
  {
    "stationId": "8eb2dec8-40c7-481b-b0e8-c1843d219da8",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "d6Kx36p8Nh",
    "longitude": 14.501500465576175,
    "latitude": 46.04330200000001,
    "status": "available"
  },
  {
    "stationId": "5dab6094-620a-4b54-a7ed-a56534c57a0f",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "THNliFY8hQ",
    "longitude": 8.485655465576167,
    "latitude": 47.38437899999999,
    "status": "available"
  },
  {
    "stationId": "4c45f39f-72af-47f9-95c1-fedd4c53fd34",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "dM00pdMU8n",
    "longitude": 7.537882465576189,
    "latitude": 46.291725,
    "status": "available"
  },
  {
    "stationId": "8d195164-acab-4ba3-b013-d6236ab9c072",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "h5vax5KHsM",
    "longitude": 5.10796546557617,
    "latitude": 52.090987000000005,
    "status": "available"
  },
  {
    "stationId": "5fcb87db-3eb9-46ea-9ef4-4c743443a95f",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "7BeT46klaP",
    "longitude": 5.07192146557617,
    "latitude": 51.56381900000001,
    "status": "available"
  },
  {
    "stationId": "f67b6263-cfad-4dcd-a3d5-7b370c4592b0",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "Mn9AVENaON",
    "longitude": 5.086388465576173,
    "latitude": 51.55870100000003,
    "status": "available"
  },
  {
    "stationId": "0c42c83e-9f00-45ca-b267-52d0f4b0d731",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "O2pG30EWUv",
    "longitude": 7.28061746557616,
    "latitude": 53.314167000000005,
    "status": "available"
  },
  {
    "stationId": "8ca6e80e-07d0-4fa2-aa2d-0e7b6443b621",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "ZQQEYpXjiu",
    "longitude": 13.25935346557618,
    "latitude": 52.403507999999995,
    "status": "available"
  },
  {
    "stationId": "d4c9765f-bd37-4e38-be6e-c608b38d24bd",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "GYMLycO1zU",
    "longitude": 16.906625465576173,
    "latitude": 52.40757300000002,
    "status": "available"
  },
  {
    "stationId": "16f33b11-6e14-4d9a-bce6-465faada5af5",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "l18oSLHQLP",
    "longitude": 5.2212814655761575,
    "latitude": 51.55799599999999,
    "status": "available"
  },
  {
    "stationId": "88ac9e10-793c-407d-a9db-83b915d27cac",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "zu7kOc0aYd",
    "longitude": 7.284789465576189,
    "latitude": 46.89489799999998,
    "status": "available"
  },
  {
    "stationId": "015e0a40-3cd5-4808-b3d5-a3e01b83fc78",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "3aNOw50tPF",
    "longitude": 7.609392465576166,
    "latitude": 46.75713,
    "status": "available"
  },
  {
    "stationId": "144bb25f-fc7f-4693-8de7-dbac30b8e6a5",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "zhBxkk2Rhc",
    "longitude": 11.458423465576168,
    "latitude": 46.05266000000002,
    "status": "available"
  },
  {
    "stationId": "cf9db20b-2173-406c-a364-3535f8f9f461",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "vgw15A2r02",
    "longitude": 14.869300465576186,
    "latitude": 48.12366500000002,
    "status": "available"
  },
  {
    "stationId": "05647bd0-2158-4d98-b01d-00eed5621310",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "B7qTFAp4l6",
    "longitude": 11.382617698364243,
    "latitude": 48.772319141307115,
    "status": "available"
  },
  {
    "stationId": "6f5a5fec-2235-4f71-9598-fe66344b7a4c",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "QkoPwzAo7b",
    "longitude": 6.077658465576188,
    "latitude": 51.91366400000001,
    "status": "available"
  },
  {
    "stationId": "89607e1f-e300-4621-8018-a14b9673308e",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "2lAFt1LOiH",
    "longitude": 4.673143465576177,
    "latitude": 51.79195099999999,
    "status": "available"
  },
  {
    "stationId": "15740d6d-3004-40c2-b8dd-1ccd5602a26a",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "kcpEwPKb1v",
    "longitude": 5.897856465576163,
    "latitude": 50.815947,
    "status": "available"
  },
  {
    "stationId": "5f3d8640-f6f2-4210-b07d-f1170c50a1c0",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "3IRBbxqBUJ",
    "longitude": 8.068163465576172,
    "latitude": 51.104421,
    "status": "available"
  },
  {
    "stationId": "117044b8-526d-44d9-8647-5fe19da71069",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "HEuZsPDtW7",
    "longitude": 4.808551465576167,
    "latitude": 45.75778499999997,
    "status": "available"
  },
  {
    "stationId": "f4f770a7-3cf3-4cec-8474-60ddbc6363b9",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "QMnUt2cvxY",
    "longitude": 10.861266465576174,
    "latitude": 45.915452,
    "status": "available"
  },
  {
    "stationId": "041311f2-5ef2-46db-9497-ada42ab8bf7a",
    "tenantId": "949e5429-e791-4184-af48-c50fa99e6cbd",
    "chargePointId": "3QmsknmnKN",
    "longitude": 15.988834465576183,
    "latitude": 47.28149200000001,
    "status": "available"
  },
  {
    "stationId": "44274627-114f-49b2-a1e0-918d9738f27f",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "ciRnOs13e8",
    "longitude": 6.203640465576163,
    "latitude": 46.58027499999999,
    "status": "available"
  },
  {
    "stationId": "70acfdb7-3944-4e3c-a98a-17eccdc9ef89",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "fm3fzpturr",
    "longitude": 11.633417465576178,
    "latitude": 48.251493000000025,
    "status": "available"
  },
  {
    "stationId": "edba1185-a984-4211-8abf-0f5ed32bbdee",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "dTwtXRL7xw",
    "longitude": 5.086328465576164,
    "latitude": 51.83907900000003,
    "status": "available"
  },
  {
    "stationId": "92ce26ee-a55f-4de0-8d6a-dc9805846683",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "LHGrCLF6B4",
    "longitude": 13.657316465576166,
    "latitude": 45.956521,
    "status": "available"
  },
  {
    "stationId": "cc648933-5801-43ab-a197-8ca10ea0380a",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "GYEKUTB0ie",
    "longitude": 7.749654465576179,
    "latitude": 48.573944,
    "status": "available"
  },
  {
    "stationId": "3193fb94-d3f2-49ec-ad5f-79c43ebd6cd4",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "whja9iKKhT",
    "longitude": 4.815298465576183,
    "latitude": 45.63136400000001,
    "status": "available"
  },
  {
    "stationId": "0eaa0668-9038-469a-899b-5c606f7799bc",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "bnWd3Yif59",
    "longitude": 9.878205465576157,
    "latitude": 46.86792100000001,
    "status": "available"
  },
  {
    "stationId": "c793c740-14d1-4be2-9af3-4a237b35304d",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "unNNxs1stf",
    "longitude": 8.420485465576183,
    "latitude": 46.81845399999998,
    "status": "available"
  },
  {
    "stationId": "bcbd818b-4d8d-48e1-96c5-2aea665d3225",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "6JlgJ4wCBT",
    "longitude": 13.914404465576178,
    "latitude": 48.226732000000005,
    "status": "available"
  },
  {
    "stationId": "9258734b-0962-4e3f-b931-12a09a59d612",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "84Oe5ssgSn",
    "longitude": 7.587407465576184,
    "latitude": 51.500431000000006,
    "status": "available"
  },
  {
    "stationId": "65d8ff07-e7ac-4d19-8131-2402a3cd9455",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "8lefOpuatX",
    "longitude": 8.98222246557617,
    "latitude": 47.45658800000002,
    "status": "available"
  },
  {
    "stationId": "eea90536-8359-4ad5-b9f5-6925a95b6970",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "6XYWf4342F",
    "longitude": 7.1584664655761765,
    "latitude": 46.620981999999984,
    "status": "available"
  },
  {
    "stationId": "eeeff9ba-50c9-4b7c-8118-94bc2e94bc06",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "ZwKHbJVyL2",
    "longitude": 6.715133465576177,
    "latitude": 51.959573999999996,
    "status": "available"
  },
  {
    "stationId": "2e856311-15e1-4247-93e5-ce568acea497",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "INnHilqAHC",
    "longitude": 5.145996673324604,
    "latitude": 51.691445735331605,
    "status": "available"
  },
  {
    "stationId": "cf8020cf-1674-42d9-a3d3-51191a4add4d",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "pZ4LXAYXgr",
    "longitude": 5.4029414655761565,
    "latitude": 45.853294,
    "status": "available"
  },
  {
    "stationId": "7b54051c-c92d-4bd4-86ba-a81f108926b6",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "Z7ZPOtIoXh",
    "longitude": 5.113650465576165,
    "latitude": 52.087767000000014,
    "status": "available"
  },
  {
    "stationId": "cde628e5-fbb6-465e-9442-133d32fe17cb",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "Qdu7dvOwkU",
    "longitude": 13.329052465576154,
    "latitude": 53.855668,
    "status": "available"
  },
  {
    "stationId": "f68061b7-bb8b-486a-82e1-7b4e5b848c50",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "P82i4jILnE",
    "longitude": 19.684503465576167,
    "latitude": 46.90768599999999,
    "status": "available"
  },
  {
    "stationId": "4ef5f4e4-c876-4fea-831b-1c50a638af4b",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "BcDthMIEO0",
    "longitude": 4.543115465576166,
    "latitude": 51.885347000000024,
    "status": "available"
  },
  {
    "stationId": "49c569a5-65b6-4b37-a2e3-2ffae09ba41e",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "xN6JYDSWAC",
    "longitude": 5.662622465576166,
    "latitude": 50.915963000000005,
    "status": "available"
  },
  {
    "stationId": "2710d469-fecd-446d-aa1d-a3c64a8df62b",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "aokYcJyHHM",
    "longitude": 6.988378465576175,
    "latitude": 50.910203999999986,
    "status": "available"
  },
  {
    "stationId": "1e3f3e32-7244-478d-85c9-db6b71354b59",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "dVcIM1gRuz",
    "longitude": 4.139014465576154,
    "latitude": 51.545019,
    "status": "available"
  },
  {
    "stationId": "9b545484-7607-4578-9f69-5136e2229b2b",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "FFfDt0HexO",
    "longitude": 6.2109964655761685,
    "latitude": 51.998253000000034,
    "status": "available"
  },
  {
    "stationId": "696f6358-cca6-4d95-951e-484c6f0374cf",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "5LLBgdPSqW",
    "longitude": 4.411681465576169,
    "latitude": 51.215822999999986,
    "status": "available"
  },
  {
    "stationId": "701d06c2-fab0-4a24-adac-90dbd0e88b4d",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "xxi2a0nNym",
    "longitude": 15.072879465576182,
    "latitude": 46.513654,
    "status": "available"
  },
  {
    "stationId": "66ad73bb-4588-4eff-bf14-6ede154e99b2",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "PVa7BVSCzd",
    "longitude": 9.98855546557618,
    "latitude": 52.45931000000001,
    "status": "available"
  },
  {
    "stationId": "f7d1f329-ea9e-45d8-ab7a-e89a2d4240e7",
    "tenantId": "02c73622-45dd-4909-8200-88101bfc629e",
    "chargePointId": "79qBBOE6GA",
    "longitude": 9.440362465576166,
    "latitude": 42.676353,
    "status": "available"
  },
  {
    "stationId": "66ac29ae-b895-4bc0-ab4b-5c8afb86441d",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "0N15Qj6dP7",
    "longitude": 4.9644724655761685,
    "latitude": 45.73786100000002,
    "status": "available"
  },
  {
    "stationId": "601bea41-6eb6-4440-8a09-8056879f6fbe",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "zGzOfopDLw",
    "longitude": 10.947765465576177,
    "latitude": 48.406521000000005,
    "status": "available"
  },
  {
    "stationId": "a7d17ee6-eba5-4e74-874f-42be61bbbe66",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "t9Teks5abv",
    "longitude": 11.377738465576162,
    "latitude": 47.169474,
    "status": "available"
  },
  {
    "stationId": "51067377-bf0f-4a14-9297-f5a25f0bf7c0",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "TYnrkqGUn7",
    "longitude": 8.548098465576176,
    "latitude": 47.402426000000006,
    "status": "available"
  },
  {
    "stationId": "5dd1510a-aa9d-423f-8400-e5d309a0f4a3",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "bidKaxDH4S",
    "longitude": 5.580415465576167,
    "latitude": 51.368375,
    "status": "available"
  },
  {
    "stationId": "7cdeb934-02cc-4d78-b437-6ff63382848a",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "bomeVH0ngh",
    "longitude": 5.315506465576165,
    "latitude": 52.39699600000001,
    "status": "available"
  },
  {
    "stationId": "ae09aff9-0093-4040-a38b-335581c967ca",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "bOqnOy974A",
    "longitude": 11.871782465576164,
    "latitude": 45.39617499999999,
    "status": "available"
  },
  {
    "stationId": "8851a240-88bd-42f5-9678-724fda95c334",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "tdwXWn6Wf2",
    "longitude": 5.487926465576192,
    "latitude": 51.449727838326886,
    "status": "available"
  },
  {
    "stationId": "d9c22186-e897-46d6-bd73-02585d0e20fa",
    "tenantId": "949e5429-e791-4184-af48-c50fa99e6cbd",
    "chargePointId": "NanLanihaC",
    "longitude": 7.4132434655761825,
    "latitude": 43.727575999999985,
    "status": "available"
  },
  {
    "stationId": "06af97db-dcac-48fd-915f-72f4079ebab9",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "lUUDkPyApm",
    "longitude": 9.801079465576178,
    "latitude": 52.32994700000002,
    "status": "available"
  },
  {
    "stationId": "dd9ba87d-9700-4028-b72d-472863968b82",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "yMgL9V1T52",
    "longitude": 7.286335465576168,
    "latitude": 43.705023999999995,
    "status": "available"
  },
  {
    "stationId": "b4de1f0c-eab7-48e4-a345-7c13b392561a",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "vh5FXVUm36",
    "longitude": 5.407654465576184,
    "latitude": 51.42542099999999,
    "status": "available"
  },
  {
    "stationId": "61e102f6-6b62-4024-8d87-517d5f584585",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "oPfGk02h56",
    "longitude": 6.4083304655761575,
    "latitude": 52.16225299999999,
    "status": "available"
  },
  {
    "stationId": "6fad4ca8-530d-47f8-b2fc-769cfa9e368d",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "j9SidXPL2G",
    "longitude": 6.765575465576186,
    "latitude": 46.52978300000001,
    "status": "available"
  },
  {
    "stationId": "deebce0a-a9c3-45b6-83c5-dc59c5077642",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "FYNx6wQvJr",
    "longitude": 7.122431465576162,
    "latitude": 43.60946500000003,
    "status": "available"
  },
  {
    "stationId": "fb9ff0dd-40b8-460a-93c8-44a74f33d323",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "3m4XxA7M7p",
    "longitude": 5.285508465576174,
    "latitude": 51.68937600000002,
    "status": "available"
  },
  {
    "stationId": "7c2fdb8d-9a9f-45ad-ad28-02fa49473bd3",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "9JwHaWJGq6",
    "longitude": 4.858598465576187,
    "latitude": 45.758725,
    "status": "available"
  },
  {
    "stationId": "6c7687a2-09e9-4338-b64a-10f2270cf96c",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "tiX7d48wYi",
    "longitude": 8.004398465576172,
    "latitude": 52.26497000000002,
    "status": "available"
  },
  {
    "stationId": "af9e6e29-df3c-4df7-8481-4972eee104e7",
    "tenantId": "52e2d3b5-d4b1-455f-a68d-b66094d6e57d",
    "chargePointId": "v5O63InpUt",
    "longitude": 12.388138465576185,
    "latitude": 51.313450000000046,
    "status": "available"
  },
  {
    "stationId": "8971796c-a315-4acf-833b-edd25b91949a",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "ibD38BfqEL",
    "longitude": 14.450423465576185,
    "latitude": 44.53242800000001,
    "status": "available"
  },
  {
    "stationId": "f43e3048-2d9e-4fef-9ed6-feb7a9a3583b",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "ebFqZXfC3E",
    "longitude": 13.299076465576185,
    "latitude": 51.306529000000005,
    "status": "available"
  },
  {
    "stationId": "c05f6665-3e21-47a4-a656-64c765af797b",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "7Rbcpyv02P",
    "longitude": 8.285448465576154,
    "latitude": 47.452268999999994,
    "status": "available"
  },
  {
    "stationId": "4973af52-6414-459b-ab98-ff798f272b69",
    "tenantId": "ee22d3e7-c9b3-46fc-99a0-4defe94b2206",
    "chargePointId": "Zhdm6KTd4r",
    "longitude": 11.637489465576166,
    "latitude": 50.878095000000016,
    "status": "available"
  },
  {
    "stationId": "45330718-6a6d-4801-94d4-bd88f7d6f6cc",
    "tenantId": "2efebfa6-c096-43c9-9653-32eb6d50a1f6",
    "chargePointId": "udJzVDwPQX",
    "longitude": 5.823013465576192,
    "latitude": 50.866618,
    "status": "available"
  },
  {
    "stationId": "369b43ee-88ff-406d-8c22-21d2c58b5f38",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "rTQKYoU7bF",
    "longitude": 4.804910465576189,
    "latitude": 52.016569999999994,
    "status": "available"
  },
  {
    "stationId": "bfc0b3ea-026a-49e2-897a-6047eaa0f7cb",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "yrIAlozC6M",
    "longitude": 5.0980774655761785,
    "latitude": 52.08795800000001,
    "status": "available"
  },
  {
    "stationId": "45eeb11a-eb22-4249-8f40-ebca79fe9827",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "dZqu1G5g4q",
    "longitude": 7.379177465576174,
    "latitude": 46.98813500000001,
    "status": "available"
  },
  {
    "stationId": "bed02f1d-752c-4257-a0df-acd90ead0dd2",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "DkEz8gh5EZ",
    "longitude": 9.821601465576174,
    "latitude": 46.799005,
    "status": "available"
  },
  {
    "stationId": "d7fa3712-930e-46c3-ae6d-9cf91a98e5d0",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "cjkRAffCRV",
    "longitude": 5.09479646557617,
    "latitude": 51.55710300000002,
    "status": "available"
  },
  {
    "stationId": "76ef5a53-4a52-4c77-bc88-d1c8274b94e1",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "SZJN7ACcce",
    "longitude": 6.120014465576182,
    "latitude": 46.136917000000004,
    "status": "available"
  },
  {
    "stationId": "72d4c781-cd46-49bc-a9f9-567adb744bb7",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "Qn1JSaWhEG",
    "longitude": 4.869709465576171,
    "latitude": 45.762676,
    "status": "available"
  },
  {
    "stationId": "25694c71-bb29-4958-9a9e-088eef58bb61",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "SYTy59P4aI",
    "longitude": 16.947480465576156,
    "latitude": 48.074580000000005,
    "status": "available"
  },
  {
    "stationId": "ee091b80-e5fc-4deb-b5d2-b52902e1f3d1",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "cGloED7GsG",
    "longitude": 11.004182465576156,
    "latitude": 46.649812,
    "status": "available"
  },
  {
    "stationId": "40bde258-2f9f-4387-9c3e-8416bdb0f8fb",
    "tenantId": "2dfe6bf1-747b-4fa3-a9ab-ef5923d66b3e",
    "chargePointId": "QthagAgYgC",
    "longitude": 14.361206465576153,
    "latitude": 49.982805,
    "status": "available"
  },
  {
    "stationId": "ff56d7e9-fac6-432e-a3ad-979a77c513f5",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "g0DPvO3dp9",
    "longitude": 15.408352465576186,
    "latitude": 47.066544,
    "status": "available"
  },
  {
    "stationId": "7d9912ce-a880-4b44-879a-106124ed901a",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "UUbVeisasJ",
    "longitude": 5.687389465576156,
    "latitude": 51.457315,
    "status": "available"
  },
  {
    "stationId": "61e46b6a-6f85-461c-a492-92bea4500ff5",
    "tenantId": "949e5429-e791-4184-af48-c50fa99e6cbd",
    "chargePointId": "1w81kCmF0c",
    "longitude": 15.888890465576164,
    "latitude": 50.56945300000001,
    "status": "available"
  },
  {
    "stationId": "8e178dfe-19d4-49f9-9213-1d091c29e159",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "xeJqjJ85I1",
    "longitude": 8.275184465576189,
    "latitude": 47.45838300000001,
    "status": "available"
  },
  {
    "stationId": "c1ec4c98-a4a4-44e1-b6be-925d92d05e5a",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "3oAAdlgA7W",
    "longitude": 16.048078465576175,
    "latitude": 48.33259600000006,
    "status": "available"
  },
  {
    "stationId": "a06f8f1b-143e-45aa-b38a-1e2129068c50",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "OKtcFC0Hmw",
    "longitude": 17.091944465576162,
    "latitude": 48.10620500000001,
    "status": "available"
  },
  {
    "stationId": "8eac90ae-ed49-451a-9722-3d5911fbb6c3",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "cER4wpVOwE",
    "longitude": 4.973258465576187,
    "latitude": 45.69847500000001,
    "status": "available"
  },
  {
    "stationId": "6196ef0d-7450-40d9-b975-455e19263d4f",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "MjACfo0TMv",
    "longitude": 5.037814465576167,
    "latitude": 51.649583,
    "status": "available"
  },
  {
    "stationId": "7ebdc9a5-0127-40a5-8c7b-167ffbe4902f",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "0p0g4DhMTV",
    "longitude": 16.538216465576173,
    "latitude": 46.625156000000004,
    "status": "available"
  },
  {
    "stationId": "048ac28e-1f21-444e-8fff-41c5d918080b",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "ta8UK6xfb0",
    "longitude": 5.97225246557616,
    "latitude": 49.492675999999996,
    "status": "available"
  },
  {
    "stationId": "52f0f1ad-8465-4ea7-9519-23187e6e6a42",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "KY8aDTEwYW",
    "longitude": 9.651859465576184,
    "latitude": 47.28988300000004,
    "status": "available"
  },
  {
    "stationId": "011249ab-145b-4680-b159-7f085dc70ef7",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "DkZ7eYXPkg",
    "longitude": 6.1136914655761565,
    "latitude": 51.37276099999998,
    "status": "available"
  },
  {
    "stationId": "e80d16da-afe8-4ced-b2c6-05768a865a6e",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "eQngFPGARd",
    "longitude": 11.12310946557617,
    "latitude": 49.463684000000036,
    "status": "available"
  },
  {
    "stationId": "fa90bbb8-8381-4ccd-9d32-7ea697e8bb4c",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "CEA0M6QjQi",
    "longitude": 12.998444465576164,
    "latitude": 50.58037499999999,
    "status": "available"
  },
  {
    "stationId": "8c79815b-e1c3-4320-91d4-c9fd38fe79be",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "X2JXhDMiqm",
    "longitude": 5.193735465576168,
    "latitude": 52.36042899999999,
    "status": "available"
  },
  {
    "stationId": "8a874986-e574-4576-8488-15a689df6f29",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "OT4QMpQV9w",
    "longitude": 15.422172465576173,
    "latitude": 47.059286,
    "status": "available"
  },
  {
    "stationId": "ae8c7b45-5473-4e24-815e-94533be39773",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "AiDv7BQtax",
    "longitude": 5.303338465576175,
    "latitude": 51.700904,
    "status": "available"
  },
  {
    "stationId": "7647c5eb-fb32-4b64-9057-306b8cc59ad6",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "o4pqaHnguD",
    "longitude": 8.479154465576162,
    "latitude": 47.00789399999999,
    "status": "available"
  },
  {
    "stationId": "16327f2b-7925-4b17-90f1-febf1259510f",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "mAmab6tZRN",
    "longitude": 8.233542465576157,
    "latitude": 46.870708000000015,
    "status": "available"
  },
  {
    "stationId": "e2ff4353-d75b-49c6-9c2c-faf2173df271",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "Lug7vWib0I",
    "longitude": 7.285261465576154,
    "latitude": 49.374788,
    "status": "available"
  },
  {
    "stationId": "458192c3-3627-470e-a43e-2a1fabc0b6d4",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "TPp4mGKz5n",
    "longitude": 4.662428465576185,
    "latitude": 51.81221099999999,
    "status": "available"
  },
  {
    "stationId": "8e3db197-b5e5-4111-9aaf-8aaf7b2dbfcd",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "e1zullzWnA",
    "longitude": 4.937485465576188,
    "latitude": 51.971089000000006,
    "status": "available"
  },
  {
    "stationId": "c7d3a9a5-dc7a-43d6-ba22-6ff84bba0948",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "lmLDWTxHeO",
    "longitude": 12.32746746557619,
    "latitude": 47.447559999999996,
    "status": "available"
  },
  {
    "stationId": "6d3080d9-5b89-459b-83f1-07a1a90f7fad",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "7mxwVpu1Wl",
    "longitude": 8.034829465576179,
    "latitude": 43.89258000000002,
    "status": "available"
  },
  {
    "stationId": "deafae18-3793-4081-9b03-40939c9c343c",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "Hxa7yMxeja",
    "longitude": 16.112980465576165,
    "latitude": 48.493432,
    "status": "available"
  },
  {
    "stationId": "ef8e59f0-2df5-432b-9b08-efa93ef14260",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "Cs1LUE9j1u",
    "longitude": 5.954364465576156,
    "latitude": 51.56433399999999,
    "status": "available"
  },
  {
    "stationId": "ed2674b1-c7dd-4bbb-a1aa-22968bf5a021",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "mbAAEBxKS8",
    "longitude": 10.14199246557617,
    "latitude": 48.673798000000005,
    "status": "available"
  },
  {
    "stationId": "4e4634f8-eb7c-42e4-bd37-445ee27f56a0",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "FN71ZwtiS2",
    "longitude": 7.735016465576177,
    "latitude": 53.41797099999998,
    "status": "available"
  },
  {
    "stationId": "882db3a9-6c41-4083-b24c-5a9e1bdce948",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "cf7zKj2R6F",
    "longitude": 7.988421465576172,
    "latitude": 47.120613000000006,
    "status": "available"
  },
  {
    "stationId": "9784874a-de0c-40ba-9714-8894d28b16e7",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "PIKRwb3A7U",
    "longitude": 6.221553465576157,
    "latitude": 52.16763600000003,
    "status": "available"
  },
  {
    "stationId": "9ca63caa-22b4-463a-b657-3d0d2167bc0e",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "jXODLLc4Bn",
    "longitude": 12.48946746557617,
    "latitude": 45.878116000000006,
    "status": "available"
  },
  {
    "stationId": "4e04d692-6e55-45b6-ae10-7c30a7233960",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "SQCvF9D6js",
    "longitude": 5.2137854655761595,
    "latitude": 51.69497200000001,
    "status": "available"
  },
  {
    "stationId": "3c39c479-96f2-4141-844c-a54b1b84b046",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "eLkhBpOFP6",
    "longitude": 9.583135465576186,
    "latitude": 51.382718999999994,
    "status": "available"
  },
  {
    "stationId": "1b3a97fc-da99-41de-ac30-7c83632c5487",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "0atSYVJl5O",
    "longitude": 7.00939546557616,
    "latitude": 43.57199600000005,
    "status": "available"
  },
  {
    "stationId": "3b53e9aa-faaa-4a9d-ae1d-42bea8f9b8c2",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "3STBNHcFAH",
    "longitude": 18.727722465576186,
    "latitude": 47.51700000000002,
    "status": "available"
  },
  {
    "stationId": "4bdad6b8-0a7d-4138-9461-39b2312f9c45",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "yBo3XwJpV8",
    "longitude": 5.174631465576192,
    "latitude": 52.09137200000002,
    "status": "available"
  },
  {
    "stationId": "b5d32f4b-1ade-4d6a-a4d2-37596121e4c6",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "Fgq44LamR3",
    "longitude": 5.237867465576187,
    "latitude": 52.27430799999999,
    "status": "available"
  },
  {
    "stationId": "f55e2203-e4b7-41d0-9adb-0f4e30d7a899",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "Qlsw0Zh3sV",
    "longitude": 8.999051465576162,
    "latitude": 53.01826600000002,
    "status": "available"
  },
  {
    "stationId": "ce4654f7-bd28-4d71-843a-ba683fa00bb9",
    "tenantId": "2efebfa6-c096-43c9-9653-32eb6d50a1f6",
    "chargePointId": "UGBcOdSrkr",
    "longitude": 12.162149465576174,
    "latitude": 48.97366199999998,
    "status": "available"
  },
  {
    "stationId": "fe98e4bc-6d3a-4ae1-8e6a-4d44e3efda26",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "KFgHTbvDI4",
    "longitude": 6.676444465576155,
    "latitude": 53.117682,
    "status": "available"
  },
  {
    "stationId": "8fb04c8f-77b4-4625-9d88-28509f1e3f42",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "aIOuRvYHNQ",
    "longitude": 9.519809465576179,
    "latitude": 47.001348000000014,
    "status": "available"
  },
  {
    "stationId": "429e73cd-5d73-410c-9a8a-0035a85890c7",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "WDbyF1TOWr",
    "longitude": 8.380016465576166,
    "latitude": 47.19156000000003,
    "status": "available"
  },
  {
    "stationId": "baa442b9-e092-42ab-8345-7c252d11fef3",
    "tenantId": "949e5429-e791-4184-af48-c50fa99e6cbd",
    "chargePointId": "dIzSDBAnZs",
    "longitude": 5.947173465576174,
    "latitude": 51.97779700000004,
    "status": "available"
  },
  {
    "stationId": "a0971623-95c1-43e4-b83d-542e8ed24023",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "V1oAyvSmL9",
    "longitude": 5.433669465576156,
    "latitude": 51.43343200000001,
    "status": "available"
  },
  {
    "stationId": "ba662323-bbb7-4f3e-a985-7ef792a5ac96",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "I0HdRmHfOL",
    "longitude": 15.842878465576188,
    "latitude": 50.75885800000001,
    "status": "available"
  },
  {
    "stationId": "5bc76697-eb24-4c28-8a52-4a254cefd74b",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "wHEN1khpl4",
    "longitude": 7.672062465576173,
    "latitude": 45.068256,
    "status": "available"
  },
  {
    "stationId": "526ed13c-29b9-4220-a224-8624ea508adb",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "RDqNfMcnpP",
    "longitude": 11.384763465576157,
    "latitude": 48.77601000000002,
    "status": "available"
  },
  {
    "stationId": "a72e3ac5-842b-4f92-b2d7-774424d8052e",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "wOrBxameLm",
    "longitude": 13.611201465576181,
    "latitude": 47.058768000000015,
    "status": "available"
  },
  {
    "stationId": "a46e704a-c4d2-427b-ae63-0bec21f55d00",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "XIAS2rPNpr",
    "longitude": 7.749146465576153,
    "latitude": 53.307728999999995,
    "status": "available"
  },
  {
    "stationId": "7f561540-0bae-4c99-8d59-1504c97b33b6",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "Bv2cMJW7Eu",
    "longitude": 5.464837465576191,
    "latitude": 51.429148,
    "status": "available"
  },
  {
    "stationId": "1413e8ec-1bf0-4719-a506-4acf0c3963e5",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "5Z7eHz5ri4",
    "longitude": 4.458294465576191,
    "latitude": 51.639316000000015,
    "status": "available"
  },
  {
    "stationId": "48dc6fe4-66ec-4e00-bbeb-ba52582d48ee",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "bk8nU9bEzk",
    "longitude": 20.09480846557619,
    "latitude": 49.388263999999985,
    "status": "available"
  },
  {
    "stationId": "903588f8-04b3-4b2b-8dbc-0779d3e12f2d",
    "tenantId": "949e5429-e791-4184-af48-c50fa99e6cbd",
    "chargePointId": "SWjkTQsJJJ",
    "longitude": 6.910007465576182,
    "latitude": 52.41050600000001,
    "status": "available"
  },
  {
    "stationId": "f1d3252e-b0e5-4a9e-a211-eafa78ea2cd6",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "ALG9l0cvvi",
    "longitude": 6.557884465576169,
    "latitude": 46.51897,
    "status": "available"
  },
  {
    "stationId": "f28e7ea1-c980-43eb-987b-ed1e3919dbdd",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "wBRyEmzZbD",
    "longitude": 11.842894465576167,
    "latitude": 47.90644400000001,
    "status": "available"
  },
  {
    "stationId": "b3416253-e73f-4507-ad9d-571742018395",
    "tenantId": "98e2c2a4-d24f-4b02-afa4-0726bacfcbe0",
    "chargePointId": "hr8cBybMzS",
    "longitude": 4.60846746557618,
    "latitude": 51.869903,
    "status": "available"
  },
  {
    "stationId": "93d0b17f-e421-46c9-a5d5-45cc874f268d",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "cIn7mbrT7J",
    "longitude": 3.666338465576162,
    "latitude": 47.790538999999995,
    "status": "available"
  },
  {
    "stationId": "7f4b215a-49bd-4a55-93bc-ded81fb0e6b6",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "DuQOkZmVsj",
    "longitude": 5.599942465576171,
    "latitude": 52.32045999999999,
    "status": "available"
  },
  {
    "stationId": "2954c78d-7992-47c0-8438-d115055f738f",
    "tenantId": "2efebfa6-c096-43c9-9653-32eb6d50a1f6",
    "chargePointId": "2sYv9fefDn",
    "longitude": 8.611920465576176,
    "latitude": 52.309253,
    "status": "available"
  },
  {
    "stationId": "100f6a3f-772c-4b13-8427-fc1c459063e8",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "pRD3QNrXZU",
    "longitude": 7.25862246557619,
    "latitude": 43.69750799999999,
    "status": "available"
  },
  {
    "stationId": "860c3561-4d0b-4a38-b048-afda6a041ef4",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "pJUkI3DxvM",
    "longitude": 6.508719465576185,
    "latitude": 52.860573000000024,
    "status": "available"
  },
  {
    "stationId": "d276f117-cb86-47f6-a55b-bb328434686b",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "6PnNpoFaIJ",
    "longitude": 8.24138946557618,
    "latitude": 47.48992199999999,
    "status": "available"
  },
  {
    "stationId": "a1f02baf-ef32-4bee-8788-680d96241b05",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "anX7Lj9wuW",
    "longitude": 9.821601465576174,
    "latitude": 46.799005,
    "status": "available"
  },
  {
    "stationId": "f2d5eedb-b0d1-4646-aa41-6448be51accc",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "J34b2fHQoW",
    "longitude": 10.261493465576157,
    "latitude": 47.42577500000001,
    "status": "available"
  },
  {
    "stationId": "8a8d1bc1-3f80-463b-b6c7-04b25cb2c737",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "Ni8chNADsb",
    "longitude": 5.088435465576158,
    "latitude": 52.10508999999999,
    "status": "available"
  },
  {
    "stationId": "507aad1b-1646-4021-995d-a561488b8816",
    "tenantId": "52e2d3b5-d4b1-455f-a68d-b66094d6e57d",
    "chargePointId": "zEc8EoPyEx",
    "longitude": 9.454143465576163,
    "latitude": 52.50555000000001,
    "status": "available"
  },
  {
    "stationId": "59a35d99-0b00-4fc4-9bc0-918219ed8853",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "NeyiRwuEBC",
    "longitude": 4.798019465576169,
    "latitude": 45.756188000000044,
    "status": "available"
  },
  {
    "stationId": "f1499156-a0d2-4dc3-b6be-799dede6f0db",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "TcacSFhmFj",
    "longitude": 11.433249465576155,
    "latitude": 47.95294400000001,
    "status": "available"
  },
  {
    "stationId": "13f0e9de-588b-43ef-8349-f3e160fe8be8",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "H0J1hSGA16",
    "longitude": 5.096811465576185,
    "latitude": 51.55728000000003,
    "status": "available"
  },
  {
    "stationId": "d868282d-1288-4a86-82eb-84965fe2f23d",
    "tenantId": "949e5429-e791-4184-af48-c50fa99e6cbd",
    "chargePointId": "qisoKQniq1",
    "longitude": 8.408187465576189,
    "latitude": 48.46388099999999,
    "status": "available"
  },
  {
    "stationId": "091a0f51-db8c-4bb8-9e65-bc0cfeb4a270",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "11kjgQr7UC",
    "longitude": 11.410129465576189,
    "latitude": 47.260137000000014,
    "status": "available"
  },
  {
    "stationId": "5a272f05-fb36-4fc6-b74d-d1bd4d40ee56",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "DHN3nc58LO",
    "longitude": 7.370494465576165,
    "latitude": 46.55098900000002,
    "status": "available"
  },
  {
    "stationId": "41f54230-4c80-4931-8ff6-85a7171f256c",
    "tenantId": "ae9922d9-f4dd-49c5-bf2c-556a663ca943",
    "chargePointId": "krZdkWSqmP",
    "longitude": 4.634988465576173,
    "latitude": 51.839837000000024,
    "status": "available"
  },
  {
    "stationId": "5115918b-8306-47da-b0bf-0e4dfced8217",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "woGeu8IWJI",
    "longitude": 6.060428465576191,
    "latitude": 51.15548400000003,
    "status": "available"
  },
  {
    "stationId": "08cf14c8-7ddc-4083-a514-6e358bf4646a",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "G27Is56aIw",
    "longitude": 16.184594465576154,
    "latitude": 48.670952,
    "status": "available"
  },
  {
    "stationId": "e6d3262e-cb20-4720-a982-772a5695242b",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "X1jbJeGTHb",
    "longitude": 5.469448465576172,
    "latitude": 51.399078,
    "status": "available"
  },
  {
    "stationId": "093d16c8-6374-44ad-a7e6-0eb2c0a131c5",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "U2g4whUtjM",
    "longitude": 9.528319465576182,
    "latitude": 46.87678299999999,
    "status": "available"
  },
  {
    "stationId": "553e4016-2fde-4343-a986-95c288e197b8",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "G4ZRAP3MoD",
    "longitude": 8.840673465576184,
    "latitude": 47.304977000000015,
    "status": "available"
  },
  {
    "stationId": "033f7c6d-9bdd-4ead-8e9f-06ad3dd52082",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "iQIA84WcuS",
    "longitude": 5.378757867675796,
    "latitude": 52.153003947243306,
    "status": "available"
  },
  {
    "stationId": "f5623e37-7f56-4fbb-838d-e6fce7fc8d32",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "v95NqNpxaZ",
    "longitude": 4.831944465576181,
    "latitude": 45.779854000000014,
    "status": "available"
  },
  {
    "stationId": "c2a0ae82-2359-4c9d-900d-1738dab7f42a",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "m1jx9mYowg",
    "longitude": 7.621325465576176,
    "latitude": 48.62526600000001,
    "status": "available"
  },
  {
    "stationId": "b58165ff-a9de-45fe-8041-40d0cf7cbca2",
    "tenantId": "2efebfa6-c096-43c9-9653-32eb6d50a1f6",
    "chargePointId": "o3zgSjoH9f",
    "longitude": 8.88694146557616,
    "latitude": 46.02117900000002,
    "status": "available"
  },
  {
    "stationId": "de41beea-491d-4d1b-8386-47a2ee2e9cca",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "EKHhMwbpUf",
    "longitude": 4.826754465576175,
    "latitude": 51.619973000000016,
    "status": "available"
  },
  {
    "stationId": "3adf5d37-4d8c-4d1e-8ab5-89170a2ca361",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "NeXTfGtpPt",
    "longitude": 13.570633465576165,
    "latitude": 46.801810000000025,
    "status": "available"
  },
  {
    "stationId": "ec634e91-9d72-4034-9c0e-cd899db3cea4",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "cdBsx5pTd6",
    "longitude": 4.3548994655761675,
    "latitude": 50.837958000000015,
    "status": "available"
  },
  {
    "stationId": "53e7780c-39e9-4904-bf2b-fea6b127b454",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "ygw4IcHknX",
    "longitude": 4.044541658782941,
    "latitude": 49.27264335126507,
    "status": "available"
  },
  {
    "stationId": "89fb708b-d96d-4cfe-a059-ede141e87144",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "XKVpYvD9oh",
    "longitude": 5.4854824655761725,
    "latitude": 51.452816,
    "status": "available"
  },
  {
    "stationId": "c4ae6fd2-ab5d-4107-8bcd-2506cf374057",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "VVofpL5ZXR",
    "longitude": 5.964723465576189,
    "latitude": 51.962164999999985,
    "status": "available"
  },
  {
    "stationId": "c744d45d-2619-4bfd-9454-ce1b0328d061",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "6llCdO2j0W",
    "longitude": 4.88032346557616,
    "latitude": 45.75456899999998,
    "status": "available"
  },
  {
    "stationId": "342c3f7d-fca8-4369-9b7d-f3773c50d0e4",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "KzdXGKGWG6",
    "longitude": 5.484367465576163,
    "latitude": 48.000982,
    "status": "available"
  },
  {
    "stationId": "c98f38ec-0a9f-4af7-9ca0-41838e409143",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "Pbcq1pblnv",
    "longitude": 6.63050046557617,
    "latitude": 46.517451,
    "status": "available"
  },
  {
    "stationId": "894231ef-29ea-48ba-a12a-f2ff21ee06f4",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "tJHyN1K1X5",
    "longitude": 7.257980465576188,
    "latitude": 43.70059200000001,
    "status": "available"
  },
  {
    "stationId": "9382c600-ae3c-41a8-8e52-8b403f5a3725",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "BSX17zVhxL",
    "longitude": 7.075112465576159,
    "latitude": 46.787474,
    "status": "available"
  },
  {
    "stationId": "ef9d7c25-8936-4dfc-9b70-b4a7ec781ed2",
    "tenantId": "52e2d3b5-d4b1-455f-a68d-b66094d6e57d",
    "chargePointId": "F9gvgIjQKT",
    "longitude": 5.118200465576175,
    "latitude": 52.011291000000014,
    "status": "available"
  },
  {
    "stationId": "8c524859-a8b3-4558-988b-052f08c43644",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "l8sj6IUQj3",
    "longitude": 8.718114465576177,
    "latitude": 46.98731199999998,
    "status": "available"
  },
  {
    "stationId": "d6c3df2c-ee18-49a4-80bb-9f5aed9a57a4",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "lbJAAR76Du",
    "longitude": 5.95102346557618,
    "latitude": 50.915465,
    "status": "available"
  },
  {
    "stationId": "4a16533b-0042-4c95-affd-365f89b83bd6",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "W5wWRdB6jS",
    "longitude": 5.10796546557617,
    "latitude": 52.090987000000005,
    "status": "available"
  },
  {
    "stationId": "679340d8-d7bd-4a05-98e7-31c7d3ac9b56",
    "tenantId": "949e5429-e791-4184-af48-c50fa99e6cbd",
    "chargePointId": "4SS03ien0z",
    "longitude": 7.74541846557617,
    "latitude": 46.310323000000004,
    "status": "available"
  },
  {
    "stationId": "78b445e3-6617-458f-b01e-dc29d1438b68",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "dFz8xy8cPm",
    "longitude": 6.765823465576162,
    "latitude": 51.28096,
    "status": "available"
  },
  {
    "stationId": "72dc80be-0632-4c0b-92a5-81fbbeaf8c58",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "ehQQyv6XXv",
    "longitude": 11.040558465576167,
    "latitude": 47.465252,
    "status": "available"
  },
  {
    "stationId": "0731413a-731f-4af7-93f9-adb99ea62bb2",
    "tenantId": "2efebfa6-c096-43c9-9653-32eb6d50a1f6",
    "chargePointId": "chqp685meI",
    "longitude": 11.909342465576177,
    "latitude": 45.802941,
    "status": "available"
  },
  {
    "stationId": "3ac05d4f-4e73-41b4-b8a0-ddf38987bf01",
    "tenantId": "52e2d3b5-d4b1-455f-a68d-b66094d6e57d",
    "chargePointId": "a54gaoX5q6",
    "longitude": 7.40753446557616,
    "latitude": 43.730333,
    "status": "available"
  },
  {
    "stationId": "6de7434c-1a0d-4501-a849-c293854183c8",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "I41cHPE1dR",
    "longitude": 11.940668465576175,
    "latitude": 45.65736,
    "status": "available"
  },
  {
    "stationId": "803dbcfc-a091-4205-995a-68d0c5012f20",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "SJhtBw0vh2",
    "longitude": 7.838276465576182,
    "latitude": 45.385477,
    "status": "available"
  },
  {
    "stationId": "317d540b-9aad-4db6-a3be-8471b83b6d12",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "Z0sZu5UyB6",
    "longitude": 8.470776465576169,
    "latitude": 47.192934000000015,
    "status": "available"
  },
  {
    "stationId": "2ae12ce3-3ace-4195-b3ae-dc99454a8327",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "PibK4HK1uZ",
    "longitude": 14.312907465576158,
    "latitude": 50.074276000000005,
    "status": "available"
  },
  {
    "stationId": "8d018eb4-7988-4846-a0b9-396aa324757d",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "GucBMuREtn",
    "longitude": 10.78960446557617,
    "latitude": 45.812169000000004,
    "status": "available"
  },
  {
    "stationId": "f47511a9-c7a1-49cd-af2b-b84ffe749178",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "rAM2zmVOqA",
    "longitude": 10.015675465576175,
    "latitude": 47.54636900000001,
    "status": "available"
  },
  {
    "stationId": "64d05638-7401-424d-ba1c-9d08ce69f335",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "OPrEKDGo1R",
    "longitude": 5.606546465576185,
    "latitude": 51.45892799999999,
    "status": "available"
  },
  {
    "stationId": "fddc2a01-2dd2-4f7d-a596-8e170097486b",
    "tenantId": "ee22d3e7-c9b3-46fc-99a0-4defe94b2206",
    "chargePointId": "deH1iThTOU",
    "longitude": 8.631520465576186,
    "latitude": 47.236490000000025,
    "status": "available"
  },
  {
    "stationId": "32b3b18c-f451-4c1b-b9ee-ef417f983115",
    "tenantId": "ae9922d9-f4dd-49c5-bf2c-556a663ca943",
    "chargePointId": "evRH8hyil2",
    "longitude": 15.730685465576153,
    "latitude": 48.472586000000014,
    "status": "available"
  },
  {
    "stationId": "b796cb86-f4eb-4cc5-b8e7-6b80ee543da5",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "9pppcBCSEC",
    "longitude": 16.242915465576154,
    "latitude": 49.51513700000003,
    "status": "available"
  },
  {
    "stationId": "5a92ea39-a3df-46cd-b876-2fae67b03fac",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "ffrEtq6z8d",
    "longitude": 8.473529465576174,
    "latitude": 47.192156999999995,
    "status": "available"
  },
  {
    "stationId": "c52aad74-9391-4d2e-b9b8-42ee25f49a10",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "CMPoIe09NJ",
    "longitude": 19.032191465576176,
    "latitude": 47.476641,
    "status": "available"
  },
  {
    "stationId": "a63beffa-f83d-403c-bc36-c885a61e97c5",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "ir7hB7EZ4I",
    "longitude": 4.558799465576184,
    "latitude": 51.91357399999999,
    "status": "available"
  },
  {
    "stationId": "760900f1-34a9-46e5-a2f4-5b8bb27e4ae9",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "h5ax299Hi0",
    "longitude": 6.138147465576154,
    "latitude": 46.22611100000002,
    "status": "available"
  },
  {
    "stationId": "adaeec28-df29-48ef-8742-9f3a9dd8062c",
    "tenantId": "52e2d3b5-d4b1-455f-a68d-b66094d6e57d",
    "chargePointId": "w70Vtwuq7N",
    "longitude": 7.071220465576156,
    "latitude": 49.888674,
    "status": "available"
  },
  {
    "stationId": "fcf40fcc-13c2-4d75-9f19-ee246ecb1c9c",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "Ba4wqDW8qq",
    "longitude": 6.5804164655761666,
    "latitude": 46.521933,
    "status": "available"
  },
  {
    "stationId": "9db830ba-1b3a-4ced-83a7-3bcbae9b3c61",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "jwI2jWOdhy",
    "longitude": 6.623544465576168,
    "latitude": 46.515409,
    "status": "available"
  },
  {
    "stationId": "cdbff01a-4a23-40f3-a369-b3c0bc0ac1ea",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "sLgR8vLgYa",
    "longitude": 6.127031465576156,
    "latitude": 52.016400999999966,
    "status": "available"
  },
  {
    "stationId": "bca501e7-0d0a-4489-93d4-30f16ee8e5bb",
    "tenantId": "52e2d3b5-d4b1-455f-a68d-b66094d6e57d",
    "chargePointId": "ThZJWyJsxy",
    "longitude": 8.307040465576154,
    "latitude": 52.835702,
    "status": "available"
  },
  {
    "stationId": "56e06e20-1648-4080-8c01-05d5b76335d1",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "5Kwpcanfxz",
    "longitude": 4.7515524655761565,
    "latitude": 45.38059900000001,
    "status": "available"
  },
  {
    "stationId": "d62302d1-96a7-44bb-8c70-db15fcf221dd",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "6O0kZOndPh",
    "longitude": 8.756110465576175,
    "latitude": 47.509349,
    "status": "available"
  },
  {
    "stationId": "5df88cd2-661e-4bdf-9c5e-c3e37371c157",
    "tenantId": "ee22d3e7-c9b3-46fc-99a0-4defe94b2206",
    "chargePointId": "OSxD5xSo5v",
    "longitude": 11.555334465576154,
    "latitude": 46.54502900000002,
    "status": "available"
  },
  {
    "stationId": "11afadc9-6830-4fb2-ae39-454aa8f0314f",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "2AjShraSbm",
    "longitude": 8.932217465576189,
    "latitude": 47.515143,
    "status": "available"
  },
  {
    "stationId": "82beadd8-5115-4a2b-8afc-088c3177a120",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "wyGz1y6KfB",
    "longitude": 5.10796546557617,
    "latitude": 52.090987000000005,
    "status": "available"
  },
  {
    "stationId": "594320ba-145f-4208-bd13-e02518bd48e0",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "qlOK44sx73",
    "longitude": 4.496770465576176,
    "latitude": 51.85768500000001,
    "status": "available"
  },
  {
    "stationId": "aa134418-0fb5-49c1-a32e-c74c07d8e195",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "6dzwvZHmhp",
    "longitude": 4.981673465576164,
    "latitude": 51.59221200000004,
    "status": "available"
  },
  {
    "stationId": "e1f5b2c0-985d-4e00-8e0f-ca1841ff9c3d",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "l4u3debB2U",
    "longitude": 5.080544465576171,
    "latitude": 51.56996300000001,
    "status": "available"
  },
  {
    "stationId": "161806b7-6ea3-48b1-b689-e66bd1910846",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "B4Ck7gtwQI",
    "longitude": 5.717910465576175,
    "latitude": 50.83593700000004,
    "status": "available"
  },
  {
    "stationId": "f0a837aa-d6f5-4eb2-b9a3-9d869f042f1d",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "5eNSxx3tsm",
    "longitude": 7.663262465576155,
    "latitude": 51.223342,
    "status": "available"
  },
  {
    "stationId": "384d18c5-35f8-439c-aec7-7d6cf7916faa",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "vYXqqjkvgs",
    "longitude": 5.589809465576172,
    "latitude": 52.184681,
    "status": "available"
  },
  {
    "stationId": "72489de7-903b-4e7c-9733-f598fec1ca5f",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "2f8onn1jVK",
    "longitude": 9.709737465576183,
    "latitude": 47.412276999999996,
    "status": "available"
  },
  {
    "stationId": "24e372ed-55b4-41fb-a731-8d14cb5dbe44",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "XRPF0PeOIj",
    "longitude": 6.567054465576185,
    "latitude": 45.37445400000001,
    "status": "available"
  },
  {
    "stationId": "9d090db4-bcdc-48d5-8da6-b36df85d6618",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "nhbODArsvS",
    "longitude": 9.666841465576152,
    "latitude": 47.41798299999999,
    "status": "available"
  },
  {
    "stationId": "30ce1e99-a74d-4484-ba53-1dd6365bd888",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "X0tOK3S7Tk",
    "longitude": 5.431111465576177,
    "latitude": 51.34983800000003,
    "status": "available"
  },
  {
    "stationId": "f14bd77c-d45e-412e-bc9d-26c6d4afb868",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "R3oFUKIWhg",
    "longitude": 5.254166465576171,
    "latitude": 52.065113000000004,
    "status": "available"
  },
  {
    "stationId": "9ce3ab9e-28ae-49e0-b9d9-3563184ad633",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "XvLvTKVvfd",
    "longitude": 4.815702465576157,
    "latitude": 45.77574400000004,
    "status": "available"
  },
  {
    "stationId": "a49f9850-27ae-448f-8f09-9b9a409e3141",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "CXVWvsovnc",
    "longitude": 6.608572465576188,
    "latitude": 52.134478999999985,
    "status": "available"
  },
  {
    "stationId": "e24c2c6d-864c-44b6-9968-fe540810259a",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "xhZdHKooyC",
    "longitude": 5.9414294655761735,
    "latitude": 49.50207100000002,
    "status": "available"
  },
  {
    "stationId": "d9c22186-e897-46d6-bd73-02585d0e20fa",
    "tenantId": "949e5429-e791-4184-af48-c50fa99e6cbd",
    "chargePointId": "NanLanihaC",
    "longitude": 7.4132434655761825,
    "latitude": 43.727575999999985,
    "status": "available"
  },
  {
    "stationId": "8a1be976-eac2-4014-b981-98233a5627fd",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "SfVAzx4SiV",
    "longitude": 9.03342746557616,
    "latitude": 45.524044,
    "status": "available"
  },
  {
    "stationId": "5f78df6b-3d62-4e70-b857-0866c3befae1",
    "tenantId": "ee22d3e7-c9b3-46fc-99a0-4defe94b2206",
    "chargePointId": "d13npIfnG1",
    "longitude": 19.045121465576184,
    "latitude": 47.47459199999999,
    "status": "available"
  },
  {
    "stationId": "d1e8c9c3-6174-4ec2-b002-d4c2538eb7a2",
    "tenantId": "2efebfa6-c096-43c9-9653-32eb6d50a1f6",
    "chargePointId": "ob5EU70LoB",
    "longitude": 8.943560465576184,
    "latitude": 46.005587999999996,
    "status": "available"
  },
  {
    "stationId": "5a4d6f34-d9a1-4679-bde6-39598ebe023c",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "5xiRF6z54J",
    "longitude": 5.049775465576176,
    "latitude": 51.552482,
    "status": "available"
  },
  {
    "stationId": "57c4a05c-d94a-4487-8255-896d0266ad6c",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "wLA0GX2Gj6",
    "longitude": 5.222854465576172,
    "latitude": 51.60182900000003,
    "status": "available"
  },
  {
    "stationId": "68f5626e-5cad-4de9-824c-9270aa52b60a",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "H6ufxPzdrZ",
    "longitude": 4.858709465576179,
    "latitude": 45.76977400000003,
    "status": "available"
  },
  {
    "stationId": "39c96bb3-e1bd-4135-9254-491fbaac0df9",
    "tenantId": "2efebfa6-c096-43c9-9653-32eb6d50a1f6",
    "chargePointId": "BhMvZFSpQ2",
    "longitude": 8.516668465576167,
    "latitude": 49.12774000000004,
    "status": "available"
  },
  {
    "stationId": "049516c3-7ff0-491b-8cfc-044a444705b4",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "oPfdcYcw5l",
    "longitude": 5.740580465576159,
    "latitude": 51.284709000000035,
    "status": "available"
  },
  {
    "stationId": "c86f2a89-2f43-442f-993f-f258e5e7a757",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "RDUvdZcf9U",
    "longitude": 5.362150465576154,
    "latitude": 51.426810999999994,
    "status": "available"
  },
  {
    "stationId": "3c498363-a705-458f-81d0-8240de51ca21",
    "tenantId": "2dfe6bf1-747b-4fa3-a9ab-ef5923d66b3e",
    "chargePointId": "kt4DN3gFal",
    "longitude": 4.288619465576189,
    "latitude": 50.79758999999998,
    "status": "available"
  },
  {
    "stationId": "8f51a117-0f23-4b00-ab14-23bfbf61c7a6",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "jvrivei1wd",
    "longitude": 7.27384046557618,
    "latitude": 47.125209000000034,
    "status": "available"
  },
  {
    "stationId": "7c63ce31-e57d-4eda-810e-e1d7defc5c57",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "v1b4kLcXMC",
    "longitude": 19.675625465576168,
    "latitude": 46.91648700000001,
    "status": "available"
  },
  {
    "stationId": "98575dd8-abca-477f-b871-d9522e41a4ee",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "JpPxruxR82",
    "longitude": 6.9486844655761715,
    "latitude": 51.684712,
    "status": "available"
  },
  {
    "stationId": "6bdd906a-599b-4097-8d55-1f53990e0151",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "hscaLbRslX",
    "longitude": 9.346605465576152,
    "latitude": 52.278963,
    "status": "available"
  },
  {
    "stationId": "ded4fbfa-da48-48b6-a9ed-209352b5ad34",
    "tenantId": "949e5429-e791-4184-af48-c50fa99e6cbd",
    "chargePointId": "F4MGaASpOy",
    "longitude": 7.426286465576188,
    "latitude": 43.74144299999998,
    "status": "available"
  },
  {
    "stationId": "ef6f0496-448e-4675-bf08-b62c18338fba",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "0D4FwoHdwe",
    "longitude": 8.227216465576163,
    "latitude": 47.53953400000001,
    "status": "available"
  },
  {
    "stationId": "4f581627-7cdb-4a1a-83f5-a7b8289765ba",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "TksFacdJlj",
    "longitude": 5.0310084655761855,
    "latitude": 51.542549,
    "status": "available"
  },
  {
    "stationId": "ca152553-edfe-45b9-a3a3-05f856603eae",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "1PXR47fgcW",
    "longitude": 9.420238465576167,
    "latitude": 47.51918700000001,
    "status": "available"
  },
  {
    "stationId": "e73de3b8-05bd-4f5b-92f9-961ddf15863b",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "rPj97AenF2",
    "longitude": 7.717474465576184,
    "latitude": 48.269406999999994,
    "status": "available"
  },
  {
    "stationId": "24f59ed6-3cdb-4a1f-86c5-7b087c649300",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "lNYGHGjCP6",
    "longitude": 12.138792465576183,
    "latitude": 45.44083,
    "status": "available"
  },
  {
    "stationId": "3dac71eb-ef33-4a1c-8395-833d34f60457",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "CdM1RYvt8d",
    "longitude": 11.18349646557617,
    "latitude": 47.327746,
    "status": "available"
  },
  {
    "stationId": "5df74694-0ae9-4370-91d2-44bcc04b9b48",
    "tenantId": "ee22d3e7-c9b3-46fc-99a0-4defe94b2206",
    "chargePointId": "5lnu0Au6ad",
    "longitude": 12.13312246557619,
    "latitude": 51.29016500000003,
    "status": "available"
  },
  {
    "stationId": "cbdda901-23c7-43b7-84cd-1fe1413a6bce",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "vU1uFisazf",
    "longitude": 9.171990465576165,
    "latitude": 48.781351000000015,
    "status": "available"
  },
  {
    "stationId": "10c957f0-5055-4503-977b-84132a778c79",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "3U3BIATqlg",
    "longitude": 5.837973465576178,
    "latitude": 51.16133600000001,
    "status": "available"
  },
  {
    "stationId": "30951d1c-4d20-4a1e-9d18-e7a164888711",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "hH2gF96Wp4",
    "longitude": 12.17893346557616,
    "latitude": 51.607258000000044,
    "status": "available"
  },
  {
    "stationId": "ac4a9f5b-3068-4766-8e6e-9bda0aeeec9f",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "UL84dDAIeW",
    "longitude": 4.859338465576184,
    "latitude": 45.75630100000001,
    "status": "available"
  },
  {
    "stationId": "f88ed0d1-0fbb-42b1-a28b-93c4c908ba06",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "9jLPrwCJnd",
    "longitude": 6.084947465576165,
    "latitude": 52.590196999999996,
    "status": "available"
  },
  {
    "stationId": "ebfb7fd9-7962-4740-b01a-f37acbaf907a",
    "tenantId": "2efebfa6-c096-43c9-9653-32eb6d50a1f6",
    "chargePointId": "AgnJ7YMSrT",
    "longitude": 19.045121465576184,
    "latitude": 47.47459199999999,
    "status": "available"
  },
  {
    "stationId": "2fb95cbe-3f04-464e-ac8c-bb09adccf599",
    "tenantId": "2efebfa6-c096-43c9-9653-32eb6d50a1f6",
    "chargePointId": "s0tjBWSK7l",
    "longitude": 8.607821465576153,
    "latitude": 47.04973900000002,
    "status": "available"
  },
  {
    "stationId": "a4d0b4e5-9e58-4e8b-93d7-a38dd4747c7d",
    "tenantId": "52e2d3b5-d4b1-455f-a68d-b66094d6e57d",
    "chargePointId": "wcbkQK1wOh",
    "longitude": 7.42600546557616,
    "latitude": 43.74013299999999,
    "status": "available"
  },
  {
    "stationId": "f4b3d653-b2aa-47c8-81d7-55aad4cc323b",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "4r9UkBiKMZ",
    "longitude": 9.094953465576156,
    "latitude": 48.74054399999998,
    "status": "available"
  },
  {
    "stationId": "d4693fd6-671f-40b3-a7b1-221354695a40",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "llgwVWNZDz",
    "longitude": 16.673656465576173,
    "latitude": 47.802582000000015,
    "status": "available"
  },
  {
    "stationId": "75afa855-e8da-4809-ae12-3f61bc6769d7",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "IgVVTl4Ckz",
    "longitude": 9.456044465576179,
    "latitude": 45.28070699999998,
    "status": "available"
  },
  {
    "stationId": "536e62d1-cb34-491b-8e5f-7871809a5694",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "kBVb1gZPac",
    "longitude": 12.998444465576164,
    "latitude": 50.58037499999999,
    "status": "available"
  },
  {
    "stationId": "58aa1a67-911e-4f32-b558-fd8b4d7f8b54",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "6mJzbTgIwn",
    "longitude": 6.7311944655761735,
    "latitude": 51.26125699999997,
    "status": "available"
  },
  {
    "stationId": "7e8c1e3c-f82a-4380-8b6e-c9b4163131e5",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "hV6cLkHpTl",
    "longitude": 10.161594465576185,
    "latitude": 46.214729,
    "status": "available"
  },
  {
    "stationId": "1fe03e17-6bcb-43da-aa9c-4286dcfdb804",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "16GtQYm7nI",
    "longitude": 9.189146465576155,
    "latitude": 45.459939999999996,
    "status": "available"
  },
  {
    "stationId": "6d377f26-670f-4acb-bc76-cf8ebaaf70d2",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "D2GxDD896j",
    "longitude": 9.520432615036011,
    "latitude": 51.268845790184955,
    "status": "available"
  },
  {
    "stationId": "fc0d7a1e-0329-403a-8e9a-87d26b95bc36",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "aC1WyVWjta",
    "longitude": 11.58667746557616,
    "latitude": 50.90170100000002,
    "status": "available"
  },
  {
    "stationId": "b1015afa-de09-459f-9019-d968ee5b24c7",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "8oAWpC0UlU",
    "longitude": 16.97404146557618,
    "latitude": 51.113688,
    "status": "available"
  },
  {
    "stationId": "8eb46171-8d97-4683-8d08-41d1e11d3b4c",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "uBt7w8JC3w",
    "longitude": 18.006264465576173,
    "latitude": 45.18934499999999,
    "status": "available"
  },
  {
    "stationId": "8fe5a399-8b40-40ea-aa3f-9b88685274f1",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "GuwweAEZhz",
    "longitude": 8.27588346557619,
    "latitude": 47.06547900000001,
    "status": "available"
  },
  {
    "stationId": "d2d1f936-3281-4317-82a6-b517432c7613",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "SShLlDkkcM",
    "longitude": 6.8842884655761605,
    "latitude": 49.97090800000002,
    "status": "available"
  },
  {
    "stationId": "55a5343d-8870-4e1b-b3d6-496ba84c6fa0",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "ScLH47h8XZ",
    "longitude": 4.323155465576156,
    "latitude": 51.59091599999998,
    "status": "available"
  },
  {
    "stationId": "a8c8a757-1a74-4dd8-9920-fdb00e12ffcf",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "vddaHxblGr",
    "longitude": 10.229378465576184,
    "latitude": 45.53298300000001,
    "status": "available"
  },
  {
    "stationId": "2208d64f-9929-4b90-9566-44592e0df0d2",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "vKuWSZ2eDo",
    "longitude": 5.289067465576163,
    "latitude": 51.670649999999995,
    "status": "available"
  },
  {
    "stationId": "14c860c9-c7e8-4ed0-8b26-6cf5b99a40c3",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "LzwTGR338V",
    "longitude": 5.081991465576152,
    "latitude": 51.54134099999998,
    "status": "available"
  },
  {
    "stationId": "33fbf3f5-61ee-4457-8438-7698b3c797a9",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "eypKznsuLB",
    "longitude": 13.73496846557618,
    "latitude": 51.06419000000001,
    "status": "available"
  },
  {
    "stationId": "15cb6936-ef6d-486e-82ac-61276c59c2bc",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "HgmxC8ssnJ",
    "longitude": 5.05134446557618,
    "latitude": 51.68239399999999,
    "status": "available"
  },
  {
    "stationId": "e381fdc3-a9f0-46a3-a8d1-a75c939ad94a",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "raJEsvI2S3",
    "longitude": 4.6365474655761885,
    "latitude": 51.82649399999998,
    "status": "available"
  },
  {
    "stationId": "61e46b6a-6f85-461c-a492-92bea4500ff5",
    "tenantId": "949e5429-e791-4184-af48-c50fa99e6cbd",
    "chargePointId": "1w81kCmF0c",
    "longitude": 15.888890465576164,
    "latitude": 50.56945300000001,
    "status": "available"
  },
  {
    "stationId": "0dd0c4bd-2e7a-49a6-a626-ebe4e4529b15",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "LLwCQf1YWT",
    "longitude": 10.802254465576153,
    "latitude": 53.520976,
    "status": "available"
  },
  {
    "stationId": "4323e3dd-f885-4236-beaf-baff6c725b09",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "iBGwR19SUO",
    "longitude": 10.74784846557618,
    "latitude": 47.22098500000002,
    "status": "available"
  },
  {
    "stationId": "c3c27335-c9c3-48d9-8146-17e056b4d019",
    "tenantId": "2dfe6bf1-747b-4fa3-a9ab-ef5923d66b3e",
    "chargePointId": "QBWxmxzhUZ",
    "longitude": 7.6278434655761895,
    "latitude": 51.96224800000001,
    "status": "available"
  },
  {
    "stationId": "e821f388-5fd6-4e37-8c17-e2357a7a8274",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "pPUPHbfcMG",
    "longitude": 6.573359465576161,
    "latitude": 53.07412500000001,
    "status": "available"
  },
  {
    "stationId": "4b0c9fd3-fb9a-42a7-87a8-a6d91f7004d3",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "qvuLztRNeA",
    "longitude": 15.74005546557617,
    "latitude": 48.35000699999999,
    "status": "available"
  },
  {
    "stationId": "3aff8436-7b2b-46c1-bd9f-a23a6f89ec11",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "MnXWMGGbvN",
    "longitude": 10.441736465576179,
    "latitude": 46.626627,
    "status": "available"
  },
  {
    "stationId": "b2d96183-57ba-4a16-899a-565ce249f01b",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "7gGcSTsQms",
    "longitude": 6.193298465576178,
    "latitude": 52.69504600000001,
    "status": "available"
  },
  {
    "stationId": "4c7d52e9-57f4-442d-9e46-1b04bd9cd9b2",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "4azZwoUJFn",
    "longitude": 4.487334465576174,
    "latitude": 50.87095299999999,
    "status": "available"
  },
  {
    "stationId": "a8605649-8ee3-4add-8e75-e914a24da510",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "r7lLY7Lrg3",
    "longitude": 4.856246465576186,
    "latitude": 52.176579999999994,
    "status": "available"
  },
  {
    "stationId": "f8d90e97-2a16-4fc8-a1a0-7853db4ee4a2",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "nQzw23SFTE",
    "longitude": 8.656607465576153,
    "latitude": 49.220304,
    "status": null
  },
  {
    "stationId": "c38ab04a-39cf-4243-a2af-bd5c48081442",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "VIw5nZ8Q1d",
    "longitude": 8.268042465576183,
    "latitude": 47.08241400000001,
    "status": null
  },
  {
    "stationId": "4d23dcc4-04e8-4be2-8d14-87f9a0dfc6ae",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "M2UE2APMD1",
    "longitude": 7.129051465576182,
    "latitude": 43.554835,
    "status": null
  },
  {
    "stationId": "d58f787f-1578-4625-93e0-99710da4856f",
    "tenantId": "949e5429-e791-4184-af48-c50fa99e6cbd",
    "chargePointId": "kGOliPVt2d",
    "longitude": 7.419323465576166,
    "latitude": 43.737336,
    "status": null
  },
  {
    "stationId": "8bc174d6-994d-47a4-96fe-ec5d5ef4768d",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "R7MNq6BWwF",
    "longitude": 7.583213465576173,
    "latitude": 44.83141199999999,
    "status": null
  },
  {
    "stationId": "e79d53f4-4fd9-414b-8aac-b0b0af0766f4",
    "tenantId": "004a3de4-ace9-4dbe-897b-86b4bf2428e2",
    "chargePointId": "TAbHS1tipa",
    "longitude": 7.927779465576177,
    "latitude": 47.545138,
    "status": null
  },
  {
    "stationId": "3ba099f3-f877-4dcc-8962-22fc6f091db3",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "dgXWp1RsvO",
    "longitude": 5.215503465576181,
    "latitude": 52.093743,
    "status": null
  },
  {
    "stationId": "eff2be11-a0d3-4eee-8a20-ba1cc752a63d",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "vfYdKIpf7Q",
    "longitude": 8.558498465576164,
    "latitude": 51.39847700000002,
    "status": null
  },
  {
    "stationId": "149ccab5-bf02-4038-9e0b-a274fc39004c",
    "tenantId": "2efebfa6-c096-43c9-9653-32eb6d50a1f6",
    "chargePointId": "hJQOImZaqs",
    "longitude": 10.905562465576173,
    "latitude": 48.955681000000006,
    "status": null
  },
  {
    "stationId": "168312f6-8d54-445d-95cf-5eb148d6487f",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "O634aSPOqN",
    "longitude": 19.048011465576174,
    "latitude": 47.49736100000002,
    "status": null
  },
  {
    "stationId": "b878dabf-e2e0-49c7-bb3a-d154af66cabc",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "I7KRdiE6M3",
    "longitude": 7.561914465576156,
    "latitude": 46.31213599999999,
    "status": null
  },
  {
    "stationId": "84bdc1b0-5b47-42d1-86f0-242fc1940bcc",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "aEufY3fDIt",
    "longitude": 12.68370146557618,
    "latitude": 45.733273999999994,
    "status": null
  },
  {
    "stationId": "493890d4-11b6-4425-a09d-63fe8992cc3a",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "oQohWLA3kR",
    "longitude": 4.51570946557617,
    "latitude": 51.857732999999996,
    "status": null
  },
  {
    "stationId": "b35bfabc-af96-4666-a357-7ebc8534a87d",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "GraseLivHl",
    "longitude": 4.864089465576158,
    "latitude": 45.72879400000002,
    "status": null
  },
  {
    "stationId": "00180c56-4106-4c6f-937e-8e74d991e4b2",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "MQVOj6BSoP",
    "longitude": 4.851713465576184,
    "latitude": 45.76247200000003,
    "status": null
  },
  {
    "stationId": "2fc9986c-0ec7-49be-a67c-0027084ff9ae",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "WjkcXoWFEm",
    "longitude": 4.973091465576158,
    "latitude": 51.57131000000002,
    "status": null
  },
  {
    "stationId": "a87c2cb9-a05e-4cbe-8fe7-60b0004fad45",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "5Hl9UN6Xdt",
    "longitude": 5.2562264655761926,
    "latitude": 52.360139000000046,
    "status": null
  },
  {
    "stationId": "60eaf165-474e-4081-8d82-a69f66aef7f5",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "unEBENcPpb",
    "longitude": 4.738195465576189,
    "latitude": 50.86679400000004,
    "status": "offline"
  },
  {
    "stationId": "6a7f8c03-e8f0-4ea6-b787-6c588b556f32",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "eoxHKPPZth",
    "longitude": 6.16070046557617,
    "latitude": 52.26845600000001,
    "status": "offline"
  },
  {
    "stationId": "46b21c9a-47ba-43fb-9b8b-47ccf7792d69",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "q5KZEcZCng",
    "longitude": 6.5515764655761854,
    "latitude": 52.62661799999999,
    "status": "offline"
  },
  {
    "stationId": "04dc1b7f-2fcc-4115-937f-00a461ca17a3",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "V5sI8IzALO",
    "longitude": 6.408966465576182,
    "latitude": 52.16307500000003,
    "status": "offline"
  },
  {
    "stationId": "d6ba93ce-2e91-4411-890f-5101a070c3d6",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "AmFzzTSyGF",
    "longitude": 5.78185546557616,
    "latitude": 52.37615699999999,
    "status": "offline"
  },
  {
    "stationId": "b8432096-90e2-4483-acfb-f887b867df88",
    "tenantId": "949e5429-e791-4184-af48-c50fa99e6cbd",
    "chargePointId": "H88jZYJSNm",
    "longitude": 7.414419465576163,
    "latitude": 43.72549599999998,
    "status": "offline"
  },
  {
    "stationId": "60479725-e43a-439d-9c19-d5cd9e09adfb",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "fcQmg8BQLd",
    "longitude": 9.650476465576183,
    "latitude": 53.753953,
    "status": "offline"
  },
  {
    "stationId": "f493b5ef-23a8-4d78-99ec-c9c532ba36fc",
    "tenantId": "2efebfa6-c096-43c9-9653-32eb6d50a1f6",
    "chargePointId": "fAG1gj5ayL",
    "longitude": 9.285723465576163,
    "latitude": 46.827003,
    "status": "offline"
  },
  {
    "stationId": "3d5abe25-316a-4352-9640-98aaad11aedd",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "fLqgO7rWIq",
    "longitude": 5.77111646557618,
    "latitude": 51.449358999999994,
    "status": "offline"
  },
  {
    "stationId": "fffcbdbc-1503-4e36-bc8b-86a7b3124efd",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "mxKn2nl4ZO",
    "longitude": 7.62209646557618,
    "latitude": 46.75817000000001,
    "status": "offline"
  },
  {
    "stationId": "4d920605-3b44-479b-a031-f1d12126cab4",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "j2sdJOCRhS",
    "longitude": 11.57803346557618,
    "latitude": 48.510721999999994,
    "status": "offline"
  },
  {
    "stationId": "4cfa4908-607a-4ae0-bf07-9859c8503a55",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "OP21U0RbAW",
    "longitude": 6.915624465576187,
    "latitude": 46.69742599999999,
    "status": "offline"
  },
  {
    "stationId": "d99db183-c5ef-4e7a-b9c4-46dc86595b43",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "k4bAgC95yM",
    "longitude": 16.57977146557616,
    "latitude": 47.689508,
    "status": "offline"
  },
  {
    "stationId": "347a5984-8969-41b0-82e2-a3ca1b094a11",
    "tenantId": "ee22d3e7-c9b3-46fc-99a0-4defe94b2206",
    "chargePointId": "vnVQywMPeG",
    "longitude": 7.245212465576154,
    "latitude": 47.138794999999995,
    "status": "offline"
  },
  {
    "stationId": "53a6ac8d-fdd8-4a62-ae0b-5c82779f78f9",
    "tenantId": "2efebfa6-c096-43c9-9653-32eb6d50a1f6",
    "chargePointId": "tKDMnNqDYb",
    "longitude": 8.95869146557617,
    "latitude": 46.15383400000005,
    "status": "offline"
  },
  {
    "stationId": "c4baa7c7-db3c-4dbd-8744-8bf08d0f69f7",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "i7ImVMvwn4",
    "longitude": 14.50379646557618,
    "latitude": 46.55926399999999,
    "status": "offline"
  },
  {
    "stationId": "9aa17fa0-110f-4b0a-bbd2-403344a2474d",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "R9UQaB9SS6",
    "longitude": 6.896970465576153,
    "latitude": 45.953504,
    "status": "offline"
  },
  {
    "stationId": "9507c185-9771-4f21-a823-55a4642a43e4",
    "tenantId": "2efebfa6-c096-43c9-9653-32eb6d50a1f6",
    "chargePointId": "23RhsV5VRs",
    "longitude": 9.749535465576157,
    "latitude": 50.35569299999999,
    "status": "offline"
  },
  {
    "stationId": "01137522-cdaf-4291-83b7-4452a21ed76b",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "BbC9hjjLoL",
    "longitude": 9.650476465576183,
    "latitude": 53.753953,
    "status": "offline"
  },
  {
    "stationId": "62d86b16-a773-41fb-b3e3-c8ad0e4755bd",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "xvSD6FlLqQ",
    "longitude": 18.850537465576153,
    "latitude": 48.58748100000002,
    "status": "offline"
  },
  {
    "stationId": "9e4c7666-8ebd-4832-8f2f-df92ef13840b",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "d7u0Hrkk5T",
    "longitude": 14.411800465576187,
    "latitude": 44.94824500000001,
    "status": "offline"
  },
  {
    "stationId": "fead9797-7970-48ac-9207-f2f7bbfee876",
    "tenantId": "2efebfa6-c096-43c9-9653-32eb6d50a1f6",
    "chargePointId": "eEXPF20PD5",
    "longitude": 5.801183465576165,
    "latitude": 52.27931199999998,
    "status": "offline"
  },
  {
    "stationId": "90819da6-c2c0-4fae-b321-664a304562d2",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "lazfhN4alJ",
    "longitude": 8.841061465576153,
    "latitude": 46.700930000000014,
    "status": "offline"
  },
  {
    "stationId": "779f6fb9-8c0a-467b-a024-51a62661076a",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "Ct28G849Yw",
    "longitude": 6.38802546557617,
    "latitude": 51.838261,
    "status": "offline"
  },
  {
    "stationId": "64541ace-5297-4db6-8e4c-718345574131",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "zUHSLEzvc4",
    "longitude": 9.645739465576169,
    "latitude": 53.748088000000045,
    "status": "offline"
  },
  {
    "stationId": "7ff6864d-a42a-4b34-b0bf-3f37509d62f7",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "NGbtsFlfxu",
    "longitude": 9.01346346557617,
    "latitude": 46.18177,
    "status": "offline"
  },
  {
    "stationId": "fdc6f367-bdd1-4c1c-bd12-e64b13d87892",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "USaxoR59dg",
    "longitude": 6.067343465576158,
    "latitude": 46.223427000000015,
    "status": "offline"
  },
  {
    "stationId": "dba712bf-44e8-476e-91fc-6af705ef9f02",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "NqVWxHIzsU",
    "longitude": 5.2082694655761586,
    "latitude": 52.37194300000003,
    "status": "offline"
  },
  {
    "stationId": "c617617b-55d3-40cc-b8f7-f0267758c7f5",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "QIVhluny9y",
    "longitude": 4.829900465576165,
    "latitude": 45.787278,
    "status": "offline"
  },
  {
    "stationId": "4968c3b3-bb05-49a9-b6e6-0186459bb1fb",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "TMe388XmQk",
    "longitude": 5.037814465576167,
    "latitude": 51.649583,
    "status": "offline"
  },
  {
    "stationId": "258439a7-c58a-4092-8ebb-8c9641b7d207",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "w6E8lThWqn",
    "longitude": 6.3872284655761735,
    "latitude": 51.91145799999999,
    "status": "offline"
  },
  {
    "stationId": "2edea530-3c13-4881-a437-b18446dd1c4d",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "Iz18aQ8pQf",
    "longitude": 7.538578465576182,
    "latitude": 46.892009000000016,
    "status": "offline"
  },
  {
    "stationId": "88d809a7-3906-465e-9367-ff2e1c145e83",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "W75ogM4Kvm",
    "longitude": 9.095666465576157,
    "latitude": 46.02901099999999,
    "status": "offline"
  },
  {
    "stationId": "cb082cfa-42fc-4432-ab52-6059715d6b4a",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "jI6oWWMJK5",
    "longitude": 5.955995465576174,
    "latitude": 51.348013000000016,
    "status": "offline"
  },
  {
    "stationId": "5dad5a81-be1e-402a-8b9a-59d016487f6f",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "mSoDJkXZrE",
    "longitude": 9.639473465576183,
    "latitude": 46.680730000000004,
    "status": "offline"
  },
  {
    "stationId": "d64156b8-8419-48ca-bca2-f85f93702ecc",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "NDW4lMm8oG",
    "longitude": 19.127446465576153,
    "latitude": 47.657937000000004,
    "status": "offline"
  },
  {
    "stationId": "7862632a-c3d0-4b9f-85c5-9911cee97cae",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "7yy4jnFLne",
    "longitude": 5.21459446557619,
    "latitude": 50.00767000000004,
    "status": "offline"
  },
  {
    "stationId": "e438d618-59a8-4b48-908f-2d680b4d28dd",
    "tenantId": "ee22d3e7-c9b3-46fc-99a0-4defe94b2206",
    "chargePointId": "uGIcV3TaX0",
    "longitude": 10.565152465576153,
    "latitude": 43.607221999999986,
    "status": "offline"
  },
  {
    "stationId": "61c5fde1-d7e0-4735-a0e7-b1c3abd9df66",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "plBLaZfzaN",
    "longitude": 7.0202454655761715,
    "latitude": 43.6518,
    "status": "offline"
  },
  {
    "stationId": "fb5c61b4-4dbb-41c6-8f3d-38e45d87d921",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "eBsanni5Dn",
    "longitude": 10.781546465576154,
    "latitude": 52.428883000000006,
    "status": "offline"
  },
  {
    "stationId": "1f6e4ef6-eaf4-4c0f-b61b-0853d7776452",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "E4uK3FVH6S",
    "longitude": 12.278278465576177,
    "latitude": 51.402409999999996,
    "status": "offline"
  },
  {
    "stationId": "789b2a99-218d-4661-b644-c19713ee80ad",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "10ot2kAkjk",
    "longitude": 4.799567465576153,
    "latitude": 45.76794,
    "status": "offline"
  },
  {
    "stationId": "20016a56-4c2d-431d-8690-e95c8ecfde93",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "M6r1qunrZ2",
    "longitude": 8.563821042297372,
    "latitude": 49.32079600000001,
    "status": "offline"
  },
  {
    "stationId": "e855514e-1bd8-4be7-8775-d5735e507b87",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "UNPtRtQuf9",
    "longitude": 9.189144465576188,
    "latitude": 45.462104,
    "status": "offline"
  },
  {
    "stationId": "ade11c44-ec1d-4673-a91c-c65b9ec93bdc",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "pdGoko8bdu",
    "longitude": 6.315546465576154,
    "latitude": 51.70670400000001,
    "status": "offline"
  },
  {
    "stationId": "f0c552bf-8cac-4f44-9bb6-da35849bc124",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "PYnLcAVoJb",
    "longitude": 8.618150465576182,
    "latitude": 47.41374100000001,
    "status": "offline"
  },
  {
    "stationId": "41ef5f66-73a0-4220-bdef-e963c130c9d8",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "qg7WEoDwLY",
    "longitude": 7.3976524655761855,
    "latitude": 53.08591599999998,
    "status": "offline"
  },
  {
    "stationId": "85bd0a09-0302-40fa-aeaf-d82cec4e8ff6",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "VNHfnvAbq4",
    "longitude": 5.455880465576173,
    "latitude": 51.48122000000004,
    "status": "offline"
  },
  {
    "stationId": "26e976b4-29a6-451d-8e02-ad1b870f13c4",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "Nykcht6adn",
    "longitude": 9.822734465576154,
    "latitude": 52.29777400000001,
    "status": "offline"
  },
  {
    "stationId": "166891e4-8161-4b9a-9311-8d220580f7cb",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "RMFiIhHRLS",
    "longitude": 7.660894465576189,
    "latitude": 45.034694999999985,
    "status": "offline"
  },
  {
    "stationId": "589ee5e7-3bac-40fc-af51-42bae68a14b4",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "AsWq3llglE",
    "longitude": 9.346574465576184,
    "latitude": 47.41417999999999,
    "status": "offline"
  },
  {
    "stationId": "7e4d8eaf-a181-4577-bc00-f2327ecd792b",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "nSX9mE8h08",
    "longitude": 5.389934465576172,
    "latitude": 51.431116000000046,
    "status": "offline"
  },
  {
    "stationId": "c871d3c2-81ab-4805-b53b-f00517f913f6",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "bpen15IsSR",
    "longitude": 7.474407105773935,
    "latitude": 46.95897200000001,
    "status": "offline"
  },
  {
    "stationId": "da316dba-e881-4abc-8f9c-6f3ba74729e7",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "dxdLN5qwAm",
    "longitude": 7.2797004655761866,
    "latitude": 50.93034600000001,
    "status": "offline"
  },
  {
    "stationId": "1504b11b-6e4b-4693-a288-3f2e46e189f1",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "7eBpqTh27P",
    "longitude": 19.988145465576153,
    "latitude": 50.025349,
    "status": "offline"
  },
  {
    "stationId": "5d0cfa9b-014d-4742-a6df-372c38eef23d",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "DI9uNEAday",
    "longitude": 13.889123465576185,
    "latitude": 48.61856699999999,
    "status": "offline"
  },
  {
    "stationId": "ffe686aa-7c15-42c4-9dfb-2c8eba16a750",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "GP7jUrubN9",
    "longitude": 4.859001465576158,
    "latitude": 45.761354999999995,
    "status": "offline"
  },
  {
    "stationId": "6191d1f1-e062-456a-a557-6c33d3490c42",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "UrAYRf5lGW",
    "longitude": 9.00579946557618,
    "latitude": 53.01765399999999,
    "status": "offline"
  },
  {
    "stationId": "b74f3d20-4605-49c4-9bdc-e785fcdc9123",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "IdDSQqhUjE",
    "longitude": 5.0702554655761745,
    "latitude": 51.547737000000005,
    "status": "offline"
  },
  {
    "stationId": "153de7d7-6434-4fb3-9c54-7bb33209576c",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "2tP27cOSN9",
    "longitude": 6.804720465576168,
    "latitude": 51.20694,
    "status": "offline"
  },
  {
    "stationId": "470dbce2-7da7-45a8-b65b-c3470a0c4177",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "Bwlos7D2ju",
    "longitude": 9.172084465576189,
    "latitude": 53.090868,
    "status": "offline"
  },
  {
    "stationId": "a99f3e82-299f-484e-a664-736aeb6f9104",
    "tenantId": "004a3de4-ace9-4dbe-897b-86b4bf2428e2",
    "chargePointId": "htHTSK3x6Z",
    "longitude": 13.549926465576169,
    "latitude": 52.556598,
    "status": "offline"
  },
  {
    "stationId": "73f9821b-39fa-4cff-94ec-8303db027bd8",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "O75VBLv6uF",
    "longitude": 6.8233554655761885,
    "latitude": 47.100897,
    "status": "offline"
  },
  {
    "stationId": "dcaf7441-ae69-47a9-9412-de1dba6b0b7f",
    "tenantId": "52e2d3b5-d4b1-455f-a68d-b66094d6e57d",
    "chargePointId": "J8PxDJbrrL",
    "longitude": 7.418011465576164,
    "latitude": 43.732470999999975,
    "status": "offline"
  },
  {
    "stationId": "42837978-e611-45cc-8b80-1e243e47340b",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "UCY8yz5lgJ",
    "longitude": 9.164295465576169,
    "latitude": 49.03881500000003,
    "status": "offline"
  },
  {
    "stationId": "7dae9c66-d246-495a-b682-a971408ae1ac",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "Uu19AVXGIF",
    "longitude": 7.904398465576157,
    "latitude": 46.598641,
    "status": "offline"
  },
  {
    "stationId": "1b305965-fd52-4e31-b80b-8fb705c1cc2b",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "YDb0RRrqnH",
    "longitude": 19.003245465576178,
    "latitude": 47.44489800000002,
    "status": "offline"
  },
  {
    "stationId": "7b0f2ae8-b90a-4193-a02e-0737853e364f",
    "tenantId": "ee22d3e7-c9b3-46fc-99a0-4defe94b2206",
    "chargePointId": "hgPJKfSTDC",
    "longitude": 4.031878465576191,
    "latitude": 50.94150600000004,
    "status": "offline"
  },
  {
    "stationId": "0eda0798-d191-4727-9a79-a2f98de222b8",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "mhqtosROeb",
    "longitude": 16.850404465576187,
    "latitude": 47.973413,
    "status": "offline"
  },
  {
    "stationId": "e5880565-dfa1-4c03-9d04-cceae3a915d4",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "Xlc7udQQje",
    "longitude": 3.4516394655761573,
    "latitude": 50.336704,
    "status": "offline"
  },
  {
    "stationId": "c955701e-1bb8-4ff5-95e6-c8791afba4f3",
    "tenantId": "2efebfa6-c096-43c9-9653-32eb6d50a1f6",
    "chargePointId": "gvOEieTOvS",
    "longitude": 12.48988746557619,
    "latitude": 50.716035999999995,
    "status": "offline"
  },
  {
    "stationId": "8558d381-14d3-4d67-b21b-1dbe22668392",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "nI4k6L0KDI",
    "longitude": 7.622595465576181,
    "latitude": 46.761770999999996,
    "status": "offline"
  },
  {
    "stationId": "0add23f0-f89f-4002-8741-563ff9748e89",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "A6MkepqGYG",
    "longitude": 8.641923465576182,
    "latitude": 50.097485,
    "status": "offline"
  },
  {
    "stationId": "5e7c9f93-2509-43ee-8d6f-a6d62b3c629c",
    "tenantId": "ee22d3e7-c9b3-46fc-99a0-4defe94b2206",
    "chargePointId": "oCBaHYgBse",
    "longitude": 18.717965465576164,
    "latitude": 49.227735000000024,
    "status": "offline"
  },
  {
    "stationId": "8ebded62-bae5-4eb6-b898-aa00d8549ce9",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "L3NLurPH63",
    "longitude": 6.704919465576191,
    "latitude": 49.106413999999994,
    "status": "offline"
  },
  {
    "stationId": "6eb2ca52-40ba-4bed-998e-db5a3bc701d1",
    "tenantId": "949e5429-e791-4184-af48-c50fa99e6cbd",
    "chargePointId": "weohV5JbVv",
    "longitude": 7.419323465576166,
    "latitude": 43.737336,
    "status": "offline"
  },
  {
    "stationId": "89c24aac-7e79-4fbe-ae32-0c24d4c7d7e1",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "8VFJCEu9pk",
    "longitude": 4.851713465576184,
    "latitude": 45.76247200000003,
    "status": "offline"
  },
  {
    "stationId": "01834e7d-1b6e-4645-b853-1c765933f6c1",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "KoeNMsXgkn",
    "longitude": 9.821601465576174,
    "latitude": 46.799005,
    "status": "offline"
  },
  {
    "stationId": "b7f2955f-ea88-4cf0-9fea-cb01fa4bd5c3",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "v6EL6jAvyZ",
    "longitude": 11.828237465576192,
    "latitude": 46.17868600000003,
    "status": "offline"
  },
  {
    "stationId": "3e71ce33-0605-45d5-ad80-9f888b3a71a9",
    "tenantId": "52e2d3b5-d4b1-455f-a68d-b66094d6e57d",
    "chargePointId": "b0K1zd8ZtM",
    "longitude": 9.459901465576163,
    "latitude": 52.301272999999995,
    "status": "offline"
  },
  {
    "stationId": "b57f2273-efd5-4334-87ec-6b2d27418cb2",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "gE1edNCNGl",
    "longitude": 9.390779465576168,
    "latitude": 47.434577000000004,
    "status": "offline"
  },
  {
    "stationId": "1cc150eb-1312-412f-8c6a-6f6e07613657",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "gpGD2jFAbW",
    "longitude": 6.926187465576152,
    "latitude": 50.960631000000014,
    "status": "offline"
  },
  {
    "stationId": "fcbf7b34-115f-4f2c-808c-5da2d5c802b4",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "TwBIRC7d8C",
    "longitude": 8.523320465576155,
    "latitude": 48.13245300000002,
    "status": "offline"
  },
  {
    "stationId": "2a85de54-d622-41d4-ad4f-5bf5ef9ddc9f",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "8Gp60YKrQk",
    "longitude": 12.439044465576176,
    "latitude": 51.40906899999999,
    "status": "offline"
  },
  {
    "stationId": "a5ffaf22-e977-4f77-90df-5889be175227",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "v8nFkyAzZN",
    "longitude": 5.2212814655761575,
    "latitude": 51.55799599999999,
    "status": "offline"
  },
  {
    "stationId": "3694fe1d-841f-4f81-8d9c-33702202aeb2",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "yTo2NO3T1Q",
    "longitude": 5.096811465576185,
    "latitude": 51.55728000000003,
    "status": "offline"
  },
  {
    "stationId": "cbf9cea0-61e5-439c-b4a2-fa556d62b1d9",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "6h8sRkRNWX",
    "longitude": 5.960901465576183,
    "latitude": 51.992537,
    "status": "offline"
  },
  {
    "stationId": "343e81c0-d270-4c65-ac68-4d6f56236c93",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "zKeBPHM5aO",
    "longitude": 18.08455146557617,
    "latitude": 48.30850699999999,
    "status": "offline"
  },
  {
    "stationId": "ca8b4cd9-1bd1-43c1-be82-52b156bbd0cc",
    "tenantId": "ee22d3e7-c9b3-46fc-99a0-4defe94b2206",
    "chargePointId": "v5rJQLw7j8",
    "longitude": 10.39421946557618,
    "latitude": 43.72595000000002,
    "status": "offline"
  },
  {
    "stationId": "9a33d61e-9249-4da1-8856-38b4fd73f15d",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "gSOegn3g1F",
    "longitude": 6.655768465576166,
    "latitude": 46.779043,
    "status": "offline"
  },
  {
    "stationId": "af9e6e29-df3c-4df7-8481-4972eee104e7",
    "tenantId": "52e2d3b5-d4b1-455f-a68d-b66094d6e57d",
    "chargePointId": "v5O63InpUt",
    "longitude": 12.388138465576185,
    "latitude": 51.313450000000046,
    "status": "offline"
  },
  {
    "stationId": "893c8030-06e0-4afa-b0f1-75d550d26229",
    "tenantId": "2efebfa6-c096-43c9-9653-32eb6d50a1f6",
    "chargePointId": "wYKyGrhwKS",
    "longitude": 7.626094465576161,
    "latitude": 45.931931999999996,
    "status": "offline"
  },
  {
    "stationId": "a08f6215-0618-40cc-91f1-3307d25f573d",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "9rXHR1J9hN",
    "longitude": 6.58523846557618,
    "latitude": 51.72913000000001,
    "status": "offline"
  },
  {
    "stationId": "c2d52b76-20ef-4045-8f6a-9956a4749be5",
    "tenantId": "ee22d3e7-c9b3-46fc-99a0-4defe94b2206",
    "chargePointId": "9I2jwxIPmz",
    "longitude": 13.406456465576193,
    "latitude": 48.64959600000001,
    "status": "offline"
  },
  {
    "stationId": "764cb7c9-269b-498b-8249-7b8d6bccf5f1",
    "tenantId": "c7ff36a8-ba29-47b1-a991-8055a5137006",
    "chargePointId": "HVOaHnG9cS",
    "longitude": 14.981429465576163,
    "latitude": 51.152593,
    "status": "offline"
  },
  {
    "stationId": "852d9282-41e9-4159-a62c-d00d0491ada5",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "FlrVck4cEc",
    "longitude": 5.546206465576158,
    "latitude": 51.475818000000004,
    "status": "offline"
  },
  {
    "stationId": "b041d6b0-92aa-4ac9-9ce6-b07139d6d228",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "COFsGDYeeV",
    "longitude": 8.95255646557619,
    "latitude": 46.00556000000001,
    "status": "offline"
  },
  {
    "stationId": "2ac8ebbf-d186-4bc7-9f6f-db3804b9a485",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "8N8EroNiZ8",
    "longitude": 5.553291465576162,
    "latitude": 50.66720599999999,
    "status": "offline"
  },
  {
    "stationId": "9f1bcb11-3563-464f-924c-2f2afbb77f2a",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "2if5iOnPJd",
    "longitude": 6.1093644655761725,
    "latitude": 46.234555000000015,
    "status": "offline"
  },
  {
    "stationId": "cd04d35a-3b8c-4920-9fe1-6ba7df81aa8d",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "y0z7xMVm4e",
    "longitude": 7.44628646557616,
    "latitude": 46.928995999999984,
    "status": "offline"
  },
  {
    "stationId": "4cc72aa0-7cdd-46c1-8947-34a79ba20423",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "Wp2XRbxPwi",
    "longitude": 7.189000465576152,
    "latitude": 47.060818000000005,
    "status": "offline"
  },
  {
    "stationId": "704bca48-347f-46d4-bec5-0c043dd969e8",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "pz1Ees21mD",
    "longitude": 4.502374465576184,
    "latitude": 51.859259,
    "status": "offline"
  },
  {
    "stationId": "dce17474-45ad-4cba-b443-43663be5ddb8",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "IlXnEzBOv9",
    "longitude": 7.368799465576168,
    "latitude": 47.276467999999994,
    "status": "offline"
  },
  {
    "stationId": "bacd88c1-b8bc-4ce1-ac44-67b3b115bb73",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "o70S6gZgxu",
    "longitude": 5.016431465576154,
    "latitude": 47.278160000000014,
    "status": "offline"
  },
  {
    "stationId": "4f79c9e3-b065-4cb3-b566-4e9ea1f3b088",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "2sfPXFj0SN",
    "longitude": 16.362276465576187,
    "latitude": 48.173611999999984,
    "status": "offline"
  },
  {
    "stationId": "9d49f87c-5be0-481c-8efa-2bfa68f8db82",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "90AE9IaP2M",
    "longitude": 13.60426046557618,
    "latitude": 49.74425399999999,
    "status": "offline"
  },
  {
    "stationId": "58db103d-2fba-4b86-8f23-db2220201e5e",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "nVtrH2TGWh",
    "longitude": 5.174631465576192,
    "latitude": 52.09137200000002,
    "status": "offline"
  },
  {
    "stationId": "97264497-0bde-47c2-9eb3-df5b78e37682",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "5RBYKS6MDp",
    "longitude": 11.876892465576185,
    "latitude": 43.456223,
    "status": "offline"
  },
  {
    "stationId": "bfb0b629-3715-4943-bd82-727c4b3e572b",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "EgUlkzztZP",
    "longitude": 5.404826465576167,
    "latitude": 52.165918000000005,
    "status": "offline"
  },
  {
    "stationId": "d67eedf2-1725-409e-9711-b3315bb08500",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "1tVjfauVco",
    "longitude": 15.56045446557619,
    "latitude": 51.25926600000002,
    "status": "offline"
  },
  {
    "stationId": "104ee669-b6d1-4763-8dd7-e266ec899437",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "yEoXDXpMUu",
    "longitude": 8.735440465576163,
    "latitude": 45.67418400000001,
    "status": "offline"
  },
  {
    "stationId": "4a8395df-42a0-425c-9393-e010abdf3ecc",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "hGStLWFQhg",
    "longitude": 5.744727465576158,
    "latitude": 51.55576100000001,
    "status": "offline"
  },
  {
    "stationId": "c7d242ca-e241-4e33-bc8e-a3bb5b896e7b",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "PQorCawmmA",
    "longitude": 5.4555254655761765,
    "latitude": 50.642405,
    "status": "offline"
  },
  {
    "stationId": "0c499c5a-868b-4637-a82d-76391e6637aa",
    "tenantId": "2efebfa6-c096-43c9-9653-32eb6d50a1f6",
    "chargePointId": "PoleXXU0UO",
    "longitude": 10.769830465576153,
    "latitude": 44.76763799999999,
    "status": "offline"
  },
  {
    "stationId": "7b8f3553-209b-4156-8627-bedcf9405918",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "DoYAxrrBpD",
    "longitude": 9.16682246557618,
    "latitude": 47.65748600000002,
    "status": "offline"
  },
  {
    "stationId": "51c2d782-4089-4fb2-b8c0-c319ab8a3843",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "mIhyiV541j",
    "longitude": 7.472739465576161,
    "latitude": 46.308558999999995,
    "status": "offline"
  },
  {
    "stationId": "74c8d1e8-86e9-4c96-9868-bec5129947d4",
    "tenantId": "949e5429-e791-4184-af48-c50fa99e6cbd",
    "chargePointId": "6oai1LSvSV",
    "longitude": 7.071220465576156,
    "latitude": 49.888674,
    "status": "offline"
  },
  {
    "stationId": "85045472-aa3f-4405-bcc8-36fae6ba9549",
    "tenantId": "52e2d3b5-d4b1-455f-a68d-b66094d6e57d",
    "chargePointId": "MEac7VIcle",
    "longitude": 19.042302465576153,
    "latitude": 50.254594000000004,
    "status": "offline"
  },
  {
    "stationId": "ff334ac4-65ab-4707-9d17-4f183ae2e56b",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "SGAYkgfj9B",
    "longitude": 7.185195465576153,
    "latitude": 43.709578000000015,
    "status": "offline"
  },
  {
    "stationId": "be390024-cbff-4a83-b737-5105d1bd9e55",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "UnonsdObzW",
    "longitude": 11.374141465576185,
    "latitude": 48.790661000000014,
    "status": "offline"
  },
  {
    "stationId": "8b2f837c-45c8-4f9e-bf7b-e0a951db41c6",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "FEgXHPICKR",
    "longitude": 14.502121465576158,
    "latitude": 46.40250299999999,
    "status": "offline"
  },
  {
    "stationId": "32980ee0-90f1-408e-9f3d-2d61dd3359fb",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "4Yu3ThrLxq",
    "longitude": 5.42718946557617,
    "latitude": 51.97121599999999,
    "status": "offline"
  },
  {
    "stationId": "79dea3d9-d411-4f2b-8315-858aab82d9df",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "G874KhXq9x",
    "longitude": 8.297945465576188,
    "latitude": 47.04974100000005,
    "status": "offline"
  },
  {
    "stationId": "e6aeb539-eb76-4e72-b4b0-039ef405a09e",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "jS2Yr7OrBa",
    "longitude": 12.665382465576167,
    "latitude": 53.37941,
    "status": "offline"
  },
  {
    "stationId": "13f9caf1-30fb-4a09-9ea3-8b7ff0b8bd16",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "aNcXr7i92M",
    "longitude": 12.01790346557618,
    "latitude": 47.853385,
    "status": "offline"
  },
  {
    "stationId": "e0d880cf-b19c-4aff-aeb6-348848e8977e",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "Smo0sqRNvd",
    "longitude": 7.27384046557618,
    "latitude": 47.125209000000034,
    "status": "offline"
  },
  {
    "stationId": "04e5a27b-1892-439d-89ae-a5bb7bd9df90",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "Z4NRtJo1Do",
    "longitude": 10.01211446557618,
    "latitude": 49.945558999999996,
    "status": "offline"
  },
  {
    "stationId": "6e749dbc-32d6-4cf0-a1b7-353b4eb09f57",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "VPL9Z4VDy9",
    "longitude": 6.042839465576186,
    "latitude": 51.866782,
    "status": "offline"
  },
  {
    "stationId": "7043a304-fdac-46ff-acc8-fb742a7a7fe0",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "kN8SkPeMMI",
    "longitude": 7.274902465576161,
    "latitude": 47.15356199999999,
    "status": "offline"
  },
  {
    "stationId": "0e21b865-0317-4d79-a458-4b02ccf8520e",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "UYGfOIRUap",
    "longitude": 11.647006465576156,
    "latitude": 46.70630399999999,
    "status": "offline"
  },
  {
    "stationId": "b8c23eee-db55-48e6-8103-f4dff8494ada",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "uW2t6wTHW8",
    "longitude": 16.60518046557615,
    "latitude": 47.67315200000003,
    "status": "offline"
  },
  {
    "stationId": "56ca1920-0d7a-47d1-a513-0321203c8162",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "9KUT8pgX5V",
    "longitude": 14.023801465576167,
    "latitude": 46.005962000000004,
    "status": "offline"
  },
  {
    "stationId": "f175a090-b396-4f3b-a4b0-79935f424531",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "rYkQWWOjrk",
    "longitude": 8.368935465576186,
    "latitude": 53.58184800000001,
    "status": "offline"
  },
  {
    "stationId": "742cadb0-adee-449c-9cf6-dbe0aefefd0d",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "lt7ty9bJiB",
    "longitude": 5.320349465576157,
    "latitude": 50.94191000000001,
    "status": "offline"
  },
  {
    "stationId": "6a402f19-2410-4a7c-8c8c-083454e76c4f",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "nVXwY95AAs",
    "longitude": 6.791012465576176,
    "latitude": 51.238001000000004,
    "status": "offline"
  },
  {
    "stationId": "dba8b07e-0003-4cca-9229-636cf787b138",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "kcijRi3KSi",
    "longitude": 11.173658465576159,
    "latitude": 43.81027899999998,
    "status": "offline"
  },
  {
    "stationId": "d3e49cfd-f9da-48af-a90e-d61b1faec7d5",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "B28k0fZ09C",
    "longitude": 15.904017465576178,
    "latitude": 46.87556699999999,
    "status": "offline"
  },
  {
    "stationId": "2e41cbc4-f1ab-46b5-9eeb-926333c7bc21",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "mhUx0S5y5O",
    "longitude": 6.91773846557616,
    "latitude": 51.22642400000003,
    "status": "offline"
  },
  {
    "stationId": "c993ca0b-22f9-4148-ae48-ebfe33a46f96",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "zXx7evrH5X",
    "longitude": 6.460281465576161,
    "latitude": 52.29928299999999,
    "status": "offline"
  },
  {
    "stationId": "62d9c940-fa30-4357-afd4-7af373fcf157",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "45OF3xpQMb",
    "longitude": 7.713730465576156,
    "latitude": 47.28688199999999,
    "status": "offline"
  },
  {
    "stationId": "a3e4b00b-2feb-4539-8300-b1ece49c01ec",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "PwknAHJ40M",
    "longitude": 14.939197465576157,
    "latitude": 46.54420500000001,
    "status": "offline"
  },
  {
    "stationId": "7bc6506e-9d36-4d28-9add-034b68150906",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "xE0ns1ewQ1",
    "longitude": 9.791938465576164,
    "latitude": 49.49576399999999,
    "status": "offline"
  },
  {
    "stationId": "2f7e28b5-fe3e-4566-bab8-8115b3e452a8",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "To02bMtTn5",
    "longitude": 7.703536465576186,
    "latitude": 48.52922400000001,
    "status": "offline"
  },
  {
    "stationId": "67e95d23-880e-4bc0-9780-7c8147961e80",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "p5Hla5SFM5",
    "longitude": 4.472752465576169,
    "latitude": 51.82845799999999,
    "status": "offline"
  },
  {
    "stationId": "44f207ad-a2fb-49a3-a1e4-dd8a0282b703",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "kY20oXFOuc",
    "longitude": 9.501172465576152,
    "latitude": 46.851853000000006,
    "status": "offline"
  },
  {
    "stationId": "45017bf6-825b-48b9-a811-cfade3603d20",
    "tenantId": "52e2d3b5-d4b1-455f-a68d-b66094d6e57d",
    "chargePointId": "1OBSmwaI2K",
    "longitude": 10.762442465576179,
    "latitude": 43.86166399999998,
    "status": "offline"
  },
  {
    "stationId": "a80427a8-6e34-4938-bab1-36c888a23486",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "5sWwt0IeRS",
    "longitude": 7.890026465576181,
    "latitude": 46.293519999999994,
    "status": "offline"
  },
  {
    "stationId": "2ae0f67d-bad1-4d21-acb3-7e7f5b155438",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "u8dYAsg1kR",
    "longitude": 7.292909465576178,
    "latitude": 50.94214999999999,
    "status": "offline"
  },
  {
    "stationId": "c7c31d87-4a42-4e74-93a6-92e74933aa72",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "1XiQ2ali8I",
    "longitude": 12.440265465576163,
    "latitude": 43.93789300000001,
    "status": "offline"
  },
  {
    "stationId": "ac297d47-62f5-4080-a3b7-5c829b512595",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "UfDmk2RbZC",
    "longitude": 4.582504465576154,
    "latitude": 51.578868,
    "status": "offline"
  },
  {
    "stationId": "218ab0ff-c434-4dbb-a976-2d09b6d3a424",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "IBKEEsFL6t",
    "longitude": 15.559965465576177,
    "latitude": 46.394963,
    "status": "offline"
  },
  {
    "stationId": "dfa9b9c2-452f-4f89-b38a-46bf0ee2f770",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "VGFZUfl0FF",
    "longitude": 8.037500465576155,
    "latitude": 52.84439499999997,
    "status": "offline"
  },
  {
    "stationId": "e222ff4a-eb1c-4b76-9b3f-bd751214359d",
    "tenantId": "ee22d3e7-c9b3-46fc-99a0-4defe94b2206",
    "chargePointId": "esochrb0WO",
    "longitude": 9.019270465576188,
    "latitude": 46.193552,
    "status": "offline"
  },
  {
    "stationId": "ad3d3331-9b03-4099-9947-bc944ebc1fc8",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "nu204VPrtM",
    "longitude": 11.597444465576178,
    "latitude": 44.84289100000001,
    "status": "offline"
  },
  {
    "stationId": "dfd5b04b-df55-4c29-a362-f49b1eb2ebf4",
    "tenantId": "949e5429-e791-4184-af48-c50fa99e6cbd",
    "chargePointId": "Q2NpLjg9SZ",
    "longitude": 17.44571846557617,
    "latitude": 49.99530100000002,
    "status": "offline"
  },
  {
    "stationId": "48f3b70d-21ab-4b53-bc71-5dbeb476effe",
    "tenantId": "2dfe6bf1-747b-4fa3-a9ab-ef5923d66b3e",
    "chargePointId": "JTRgXVaWBU",
    "longitude": 11.555036465576158,
    "latitude": 48.101144,
    "status": "offline"
  },
  {
    "stationId": "e084cf50-8963-4a0b-9494-c8b8bc2bb7cb",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "bPuCahjOhr",
    "longitude": 6.382718465576156,
    "latitude": 49.53582100000001,
    "status": "offline"
  },
  {
    "stationId": "9e4a293d-c86e-4249-bf85-010647ea2227",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "5rXwmI2sed",
    "longitude": 14.01278246557616,
    "latitude": 48.14974400000001,
    "status": "offline"
  },
  {
    "stationId": "a25347f2-9803-4025-822c-a12d76a03f07",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "0d6J633IAI",
    "longitude": 6.9266414655761865,
    "latitude": 52.319031999999986,
    "status": "offline"
  },
  {
    "stationId": "a12a874e-e88a-448e-b3b2-785f471a3427",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "Rif7PiCzhB",
    "longitude": 8.870675465576188,
    "latitude": 47.564251000000006,
    "status": "offline"
  },
  {
    "stationId": "4e65b593-8a3f-47df-befc-5c57256a2146",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "vVGmyTBJxS",
    "longitude": 6.521501465576178,
    "latitude": 52.11676299999999,
    "status": "offline"
  },
  {
    "stationId": "7db2c231-2814-4f70-af92-316918e7a6cc",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "bvyJaojaaA",
    "longitude": 14.506728917938236,
    "latitude": 46.08160687004712,
    "status": "offline"
  },
  {
    "stationId": "a1b85854-b8a5-49ff-9208-0d09be584b29",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "rrHD0B44Hp",
    "longitude": 5.715076465576181,
    "latitude": 51.253959,
    "status": "offline"
  },
  {
    "stationId": "1ecbc6d2-359e-459c-889c-c011ce306c6f",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "ODb1EvjHZD",
    "longitude": 5.868874465576184,
    "latitude": 51.72751700000005,
    "status": "offline"
  },
  {
    "stationId": "f742205b-bd2d-4df7-91c5-02e27a53405a",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "YrHVg9yWx3",
    "longitude": 13.22038446557617,
    "latitude": 43.715195999999985,
    "status": "offline"
  },
  {
    "stationId": "23c4c21b-83ad-4ed7-bebb-c25f1fd47e08",
    "tenantId": "ee22d3e7-c9b3-46fc-99a0-4defe94b2206",
    "chargePointId": "0XMfh9wzYt",
    "longitude": 6.974180121643085,
    "latitude": 45.45297092264987,
    "status": "offline"
  },
  {
    "stationId": "8bab1af2-7bf5-4c0d-a1a3-bd94ca95112c",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "bzwR6PVINb",
    "longitude": 4.163138465576179,
    "latitude": 50.409222,
    "status": "offline"
  },
  {
    "stationId": "ffe686aa-7c15-42c4-9dfb-2c8eba16a750",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "GP7jUrubN9",
    "longitude": 4.859001465576158,
    "latitude": 45.761354999999995,
    "status": "offline"
  },
  {
    "stationId": "a17d8405-5f4f-4ab1-b6ea-f71c74b90153",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "qjQMiKD0CX",
    "longitude": 5.599007087249737,
    "latitude": 52.26589225668493,
    "status": "offline"
  },
  {
    "stationId": "6adbc7c8-8781-4333-b729-8830fe47d1c1",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "Fs0qMrGQAP",
    "longitude": 5.060181465576181,
    "latitude": 51.56843800000003,
    "status": "offline"
  },
  {
    "stationId": "e0373886-9469-4dde-b07c-53d5ff76a2ef",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "C1otyWZe5G",
    "longitude": 16.207760465576172,
    "latitude": 47.80547,
    "status": "offline"
  },
  {
    "stationId": "d97cadc7-8e84-4b0a-8398-cebeb6f57e18",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "M3Q0r9CNvs",
    "longitude": 4.858598465576187,
    "latitude": 45.758725,
    "status": "offline"
  },
  {
    "stationId": "941e2e2b-406f-4072-ab84-49c3310c08a6",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "gaWTK3gARj",
    "longitude": 5.127772465576159,
    "latitude": 52.09892500000001,
    "status": "offline"
  },
  {
    "stationId": "c374d9d3-211d-4dbe-bd4f-617c1046484a",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "xzctSjUlF7",
    "longitude": 6.421356465576156,
    "latitude": 52.517876000000015,
    "status": "offline"
  },
  {
    "stationId": "35123517-ad59-4911-8047-7390443f0d12",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "y0Nbfee2w3",
    "longitude": 6.65198946557616,
    "latitude": 52.58805700000001,
    "status": "offline"
  },
  {
    "stationId": "e6455af8-d7d7-42a0-82d7-62ac58cba320",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "R0Ck7AhoH4",
    "longitude": 7.416211465576152,
    "latitude": 43.735082,
    "status": "offline"
  },
  {
    "stationId": "e80e8999-9aa5-42f9-87d9-4275ecefbf3a",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "pu1EkNqtPk",
    "longitude": 15.964610465576156,
    "latitude": 47.28143300000001,
    "status": "offline"
  },
  {
    "stationId": "c4b607b6-3aaf-4f72-8771-4445e78a7564",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "OWbUUlNzmO",
    "longitude": 9.094953465576156,
    "latitude": 48.74054399999998,
    "status": "offline"
  },
  {
    "stationId": "a739c748-30c9-41c2-8125-8344a94e7831",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "oTMYheN2rf",
    "longitude": 19.01768046557617,
    "latitude": 47.490284,
    "status": "offline"
  },
  {
    "stationId": "8ef0b2f9-fcc0-4042-bcc8-0157690c0901",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "SoAyKRsAIi",
    "longitude": 9.80921446557617,
    "latitude": 53.57642400000001,
    "status": "offline"
  },
  {
    "stationId": "6eb2ca52-40ba-4bed-998e-db5a3bc701d1",
    "tenantId": "949e5429-e791-4184-af48-c50fa99e6cbd",
    "chargePointId": "weohV5JbVv",
    "longitude": 7.419323465576166,
    "latitude": 43.737336,
    "status": "offline"
  },
  {
    "stationId": "b8c5f9f5-be72-453c-9211-dd4d40d4d148",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "TxN2SqhpE9",
    "longitude": 4.637920465576162,
    "latitude": 51.871657,
    "status": "offline"
  },
  {
    "stationId": "011fecef-20f1-447d-8f4b-622af046bc9c",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "5TgRMPbg8g",
    "longitude": 6.10652746557617,
    "latitude": 46.219103999999994,
    "status": "offline"
  },
  {
    "stationId": "e4d2193d-bbf5-44c8-a3b1-2e1738a532dc",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "rccYu90236",
    "longitude": 5.690648465576182,
    "latitude": 50.84802,
    "status": "offline"
  },
  {
    "stationId": "37542e14-fb30-4e2f-a705-9f596f391537",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "amwOfJ8NKe",
    "longitude": 5.214361465576176,
    "latitude": 52.37770000000001,
    "status": "offline"
  },
  {
    "stationId": "128309e6-8744-4bb1-b88b-eb6b367d5338",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "NQZiFHRpoX",
    "longitude": 8.834556465576178,
    "latitude": 47.29949899999999,
    "status": "offline"
  },
  {
    "stationId": "86cbbbbc-9f09-47bc-a328-8ef4ded57214",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "YFgvKtVKua",
    "longitude": 10.943758465576172,
    "latitude": 51.230266999999984,
    "status": "offline"
  },
  {
    "stationId": "23491ffb-d073-430f-80c7-8ab4f0be9ae7",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "UD8s9qFmFJ",
    "longitude": 13.616198465576165,
    "latitude": 45.46223600000001,
    "status": "offline"
  },
  {
    "stationId": "c1e5772f-653f-4fa6-92b1-bf74b0682ad5",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "alVpqljB1c",
    "longitude": 4.869486465576185,
    "latitude": 45.771618999999994,
    "status": "offline"
  },
  {
    "stationId": "71c87a13-c48f-4a29-b2e8-5bbe6366f9db",
    "tenantId": "ee22d3e7-c9b3-46fc-99a0-4defe94b2206",
    "chargePointId": "ALudU78TaS",
    "longitude": 9.944192465576153,
    "latitude": 53.57971899999998,
    "status": "offline"
  },
  {
    "stationId": "d50b4518-f219-4935-807f-8a31e20ef008",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "jmCDw8ximS",
    "longitude": 6.323079465576176,
    "latitude": 46.459706,
    "status": "offline"
  },
  {
    "stationId": "511237d8-7ef2-426a-8f45-0e3afb456bb8",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "qNfsE0lEC8",
    "longitude": 7.722421465576188,
    "latitude": 48.62438400000001,
    "status": "offline"
  },
  {
    "stationId": "7f8bc522-4e3d-44f2-8ae6-80692d0ca05f",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "axwekmKs8g",
    "longitude": 4.946414465576168,
    "latitude": 51.972079,
    "status": "offline"
  },
  {
    "stationId": "68f34a24-6381-4206-bc2b-877e145d73ec",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "bTikJ5e7vT",
    "longitude": 8.932457465576181,
    "latitude": 45.98534000000001,
    "status": "offline"
  },
  {
    "stationId": "7251dce6-f1e0-484a-8a44-f3e1737d1e49",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "866bUgzieq",
    "longitude": 5.774170465576192,
    "latitude": 52.10226100000003,
    "status": "offline"
  },
  {
    "stationId": "d2fb19bb-bdff-4e04-8a7a-da685a944293",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "n4y94l7DiL",
    "longitude": 7.292909465576178,
    "latitude": 50.94214999999999,
    "status": "offline"
  },
  {
    "stationId": "ac56e031-58be-4b23-9aae-e1700a512fc1",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "YM0y10qX7E",
    "longitude": 5.670381465576182,
    "latitude": 51.60428399999999,
    "status": "offline"
  },
  {
    "stationId": "93195584-51a3-4276-a98c-f983e336001c",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "Y7eF80Vyft",
    "longitude": 15.977821465576154,
    "latitude": 45.814420999999996,
    "status": "offline"
  },
  {
    "stationId": "e60d8667-fbe5-4e97-9d0d-13fdb88c55c5",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "txuDnKTv4N",
    "longitude": 7.979052465576157,
    "latitude": 46.35869,
    "status": "offline"
  },
  {
    "stationId": "a8eba6c5-94d9-4db3-a49f-cfd21dc30ac2",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "ukzAr4SiqI",
    "longitude": 7.011039465576174,
    "latitude": 52.93010100000001,
    "status": "offline"
  },
  {
    "stationId": "0cb362f6-4b97-4870-b718-f535165eba68",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "fSu3cGdV6G",
    "longitude": 7.568804465576173,
    "latitude": 47.077679,
    "status": "offline"
  },
  {
    "stationId": "e7e33f27-75c5-4604-8119-6c83d31e021c",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "uDn3VFOzQj",
    "longitude": 7.075353465576155,
    "latitude": 51.56910700000003,
    "status": "offline"
  },
  {
    "stationId": "26f800ca-4568-4af4-9f90-34a0a667b5c9",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "GJcGfsLBHv",
    "longitude": 12.146892465576155,
    "latitude": 48.995507,
    "status": "offline"
  },
  {
    "stationId": "77eff412-3bb3-4a0f-9b31-d191307399b2",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "K90MQSJDqX",
    "longitude": 5.73078946557616,
    "latitude": 50.87583700000002,
    "status": "offline"
  },
  {
    "stationId": "59fbdaf5-8466-4ca3-a275-4145c76cebf2",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "qs32NjCjPt",
    "longitude": 7.213983465576188,
    "latitude": 43.66936599999999,
    "status": "offline"
  },
  {
    "stationId": "057896f2-24a7-475c-aad8-9d74c092ef78",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "EI6CQI11ds",
    "longitude": 6.617512465576159,
    "latitude": 46.79197000000002,
    "status": "offline"
  },
  {
    "stationId": "38d647f9-b47f-4b0c-9575-4f364ff8311b",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "zo9nqwMFUU",
    "longitude": 5.556403465576176,
    "latitude": 51.465264,
    "status": "offline"
  },
  {
    "stationId": "ed5ef0f7-6ba5-4d79-8961-756595090c40",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "pHR5vXKo1K",
    "longitude": 14.23658346557619,
    "latitude": 48.23681899999999,
    "status": "offline"
  },
  {
    "stationId": "74f45914-b08e-4363-9855-ac4084e728bb",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "AtghFYby82",
    "longitude": 12.373992465576164,
    "latitude": 47.449310000000025,
    "status": "offline"
  },
  {
    "stationId": "0b5dbc88-f8b8-4e67-8fbe-a316aa761b61",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "RFzj1xTrTF",
    "longitude": 13.471259465576185,
    "latitude": 52.480169000000004,
    "status": "offline"
  },
  {
    "stationId": "02237c54-e4c3-436f-ab7c-b1b30b16d0a9",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "kQMQ14sJgN",
    "longitude": 9.71154346557617,
    "latitude": 52.370554,
    "status": "offline"
  },
  {
    "stationId": "c6168317-3fa9-443f-976e-a3586e1f61aa",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "sW4WWWY4zv",
    "longitude": 5.900269465576176,
    "latitude": 51.65246300000002,
    "status": "offline"
  },
  {
    "stationId": "4ddbc600-3381-4a80-95c7-bdaf6a516839",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "LurgBcm1D9",
    "longitude": 9.699600465576172,
    "latitude": 53.47744699999999,
    "status": "offline"
  },
  {
    "stationId": "6afa2d2c-bde7-4b26-ab00-fe595d3b0591",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "6VaphZTtpr",
    "longitude": 9.085110465576172,
    "latitude": 47.29585500000001,
    "status": "offline"
  },
  {
    "stationId": "76a70515-455b-4d70-a539-2646e3edfe40",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "PrHHLwxz2V",
    "longitude": 11.649952465576185,
    "latitude": 48.24472699999999,
    "status": "offline"
  },
  {
    "stationId": "2805079f-bdff-4562-9365-1cf76d10a6e7",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "Tyfab2MrjG",
    "longitude": 12.277729465576156,
    "latitude": 46.73232899999999,
    "status": "offline"
  },
  {
    "stationId": "3e8f68e3-f8d2-4431-9814-aabd3da3e354",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "OXfvLNdPZk",
    "longitude": 12.891045465576182,
    "latitude": 53.101484,
    "status": "offline"
  },
  {
    "stationId": "07135fd4-9d69-4825-83ef-eb00d3caed32",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "m9mC6i88Tf",
    "longitude": 5.794216465576172,
    "latitude": 51.28075100000001,
    "status": "offline"
  },
  {
    "stationId": "db42dabc-b1ed-4483-9193-b6bfc0b5dff8",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "KkQM8ddwKL",
    "longitude": 8.582182465576155,
    "latitude": 46.668434999999995,
    "status": "offline"
  },
  {
    "stationId": "ab39b07e-9234-4c01-9092-bcaacf0a5034",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "D6K6LF4yWL",
    "longitude": 8.028451465576158,
    "latitude": 46.62418200000002,
    "status": "offline"
  },
  {
    "stationId": "004c5ed0-92c6-4cd9-9cc2-85a62d6d2aca",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "lVGEvgQIPx",
    "longitude": 9.028961465576186,
    "latitude": 48.741543000000014,
    "status": "offline"
  },
  {
    "stationId": "42eea72f-4eee-4995-a688-e90de24d4254",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "10MFdibLdh",
    "longitude": 4.977451465576155,
    "latitude": 51.595032999999994,
    "status": "offline"
  },
  {
    "stationId": "8c7963bf-fdd0-4818-b8c5-d9492393377f",
    "tenantId": "02c73622-45dd-4909-8200-88101bfc629e",
    "chargePointId": "1LCj25owh1",
    "longitude": 8.59696346557616,
    "latitude": 49.123308,
    "status": "offline"
  },
  {
    "stationId": "e632981e-6b4e-4a38-8101-7713315ee1ae",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "tAmQTqkENz",
    "longitude": 5.818935465576187,
    "latitude": 50.859553000000005,
    "status": "offline"
  },
  {
    "stationId": "81127da6-f219-4170-86df-a77f9756fe87",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "YH2JNDVEk2",
    "longitude": 11.596146465576176,
    "latitude": 47.29589600000002,
    "status": "offline"
  },
  {
    "stationId": "8552fba6-d266-4957-8957-3ce823537bf5",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "KfABykPS5g",
    "longitude": 8.465472465576163,
    "latitude": 49.833653,
    "status": "offline"
  },
  {
    "stationId": "d487cb8c-0e25-42f8-be9a-d892e9cf24d2",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "KSnqJLYQfq",
    "longitude": 5.2854444655761545,
    "latitude": 52.17600000000002,
    "status": "offline"
  },
  {
    "stationId": "5e8d5c25-96fd-4c14-b7cb-5e3df4012e5a",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "QtK7IoykHK",
    "longitude": 16.343130465576174,
    "latitude": 48.16874700000001,
    "status": "offline"
  },
  {
    "stationId": "eaf1ad27-c3fb-4962-9f55-c3871de1ba69",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "aYArxvjAzO",
    "longitude": 10.671473465576188,
    "latitude": 53.88074000000003,
    "status": "offline"
  },
  {
    "stationId": "bb43f1b8-2d96-48a5-b379-e898be216b03",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "Hyc2Xf8QaN",
    "longitude": 8.332949465576188,
    "latitude": 47.45638000000001,
    "status": "offline"
  },
  {
    "stationId": "1bbedf26-877c-4c67-be87-846baedd3838",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "42YtlZCGqK",
    "longitude": 5.3088934655761655,
    "latitude": 51.53451499999999,
    "status": "offline"
  },
  {
    "stationId": "d27bace8-c1e4-4472-8146-22db4c064137",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "nfrmKE9R2w",
    "longitude": 13.674522465576175,
    "latitude": 51.163962999999995,
    "status": "offline"
  },
  {
    "stationId": "8e8c037a-d9a3-455a-a648-39b49448c3bf",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "Vo1V8au03y",
    "longitude": 6.124929465576177,
    "latitude": 52.014474,
    "status": "offline"
  },
  {
    "stationId": "aaeace77-9957-4a39-af0e-b55e50fcea86",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "yakbQhdIxu",
    "longitude": 8.286996465576179,
    "latitude": 47.11372399999998,
    "status": "offline"
  },
  {
    "stationId": "a368844c-7836-48d0-8b33-4903ded886ae",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "eXolHHqlQR",
    "longitude": 8.895592465576158,
    "latitude": 48.85099600000001,
    "status": "offline"
  },
  {
    "stationId": "8976cff7-cd1a-4215-bf3c-6b6d879eabd3",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "njYz7G45yF",
    "longitude": 7.685828465576168,
    "latitude": 46.62441199999999,
    "status": "offline"
  },
  {
    "stationId": "c3d2425e-049d-4c57-9bb6-c8dcd4d7589c",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "sMX4anfE6X",
    "longitude": 3.7359804655761764,
    "latitude": 51.05009100000001,
    "status": "offline"
  },
  {
    "stationId": "622c0f84-fe48-41f1-b211-d2b02790fa0b",
    "tenantId": "2efebfa6-c096-43c9-9653-32eb6d50a1f6",
    "chargePointId": "Nus4PqMaKk",
    "longitude": 4.831621465576155,
    "latitude": 47.02679099999998,
    "status": "offline"
  },
  {
    "stationId": "6b0e0d05-799b-4e77-8612-ee363b02e10d",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "MZAQ9ODVZG",
    "longitude": 9.389150465576156,
    "latitude": 47.389574,
    "status": "offline"
  },
  {
    "stationId": "2be297f9-7b08-4d5a-a816-05bb95d4ecf2",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "VlnLr5dB5m",
    "longitude": 3.7338504655761584,
    "latitude": 51.04869299999998,
    "status": "offline"
  },
  {
    "stationId": "1f91decf-e4f2-443f-a6aa-3a56978d9ebd",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "GYpVLy2z7e",
    "longitude": 8.080149465576172,
    "latitude": 47.384354000000016,
    "status": "offline"
  },
  {
    "stationId": "c8e7d8ae-a594-480e-a6ce-e38b28df51bf",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "rZyidpyIbJ",
    "longitude": 9.094953465576156,
    "latitude": 48.74054399999998,
    "status": "offline"
  },
  {
    "stationId": "7b244340-40e4-4f2a-a822-e368625a953f",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "OZOdE5sow3",
    "longitude": 8.740947465576179,
    "latitude": 47.49580199999998,
    "status": "offline"
  },
  {
    "stationId": "a0aafa27-fc88-4a4d-bc7e-ef045209f306",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "WsiMbK3rgB",
    "longitude": 9.98350646557617,
    "latitude": 53.448905,
    "status": "offline"
  },
  {
    "stationId": "3e586f98-2992-4e14-a8ea-a8b107a66bd1",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "gnsJnON5HO",
    "longitude": 5.097127465576152,
    "latitude": 51.90207299999996,
    "status": "offline"
  },
  {
    "stationId": "75ae3984-0d90-4357-a5d4-90e5499317df",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "K0Lj9ltWvf",
    "longitude": 16.383674465576163,
    "latitude": 48.20468699999999,
    "status": "offline"
  },
  {
    "stationId": "74498c37-2e97-465d-86da-0eb5b18271ce",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "IZpC5tVUIn",
    "longitude": 9.521902465576172,
    "latitude": 51.271759,
    "status": "offline"
  },
  {
    "stationId": "81651fad-fc0d-4ef4-a7fe-f6cb0e1c9a59",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "mIux1NIstw",
    "longitude": 7.221375465576174,
    "latitude": 50.440458,
    "status": "offline"
  },
  {
    "stationId": "64add387-2b92-4c42-9ed7-119895d5a636",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "KGxxfyjdze",
    "longitude": 16.38550546557618,
    "latitude": 48.217374,
    "status": "offline"
  },
  {
    "stationId": "67f6f964-ae4c-4866-b54e-1a80b73195e9",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "93PVBmFQSQ",
    "longitude": 5.497455465576175,
    "latitude": 52.49965000000001,
    "status": "offline"
  },
  {
    "stationId": "bc3b1997-0c36-45df-b14c-02b9aec2b694",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "vG48XmrQVn",
    "longitude": 9.93576146557617,
    "latitude": 53.579531,
    "status": "offline"
  },
  {
    "stationId": "ab1f939f-7959-40c8-9e51-bce495ae27a9",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "bTQAN9dqOc",
    "longitude": 4.830204465576178,
    "latitude": 45.78138100000001,
    "status": "offline"
  },
  {
    "stationId": "cf52c962-bbab-4db2-8cb9-c014968a1f4d",
    "tenantId": "02c73622-45dd-4909-8200-88101bfc629e",
    "chargePointId": "WYAnj1aIKB",
    "longitude": 15.727657465576174,
    "latitude": 50.90626000000001,
    "status": "offline"
  },
  {
    "stationId": "ada6b8a0-f530-4886-a75f-4774144fd673",
    "tenantId": "2efebfa6-c096-43c9-9653-32eb6d50a1f6",
    "chargePointId": "TK7iBJmUil",
    "longitude": 8.162044465576175,
    "latitude": 47.73711099999999,
    "status": "offline"
  },
  {
    "stationId": "433c6d32-78c9-43b4-a195-ccbef42bcaac",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "LjZQAJNvxJ",
    "longitude": 13.376522465576182,
    "latitude": 52.50479300000004,
    "status": "offline"
  },
  {
    "stationId": "c4d80c93-e8bd-456a-8e5d-b379d0ee9c46",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "VpK3ok099M",
    "longitude": 10.628782465576174,
    "latitude": 47.614037,
    "status": "offline"
  },
  {
    "stationId": "d08efa26-ea5e-4f40-9bf7-495fb9c63267",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "rnsx60vNFB",
    "longitude": 6.136011527725205,
    "latitude": 52.88754692329005,
    "status": "offline"
  },
  {
    "stationId": "d164771b-5406-4c54-a5d4-10a29eb09a1c",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "KxUX4K47e1",
    "longitude": 6.10652746557617,
    "latitude": 46.219103999999994,
    "status": "offline"
  },
  {
    "stationId": "bf4242c2-69ea-43b9-b20a-f322a34bfecc",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "bw8LpZX3m3",
    "longitude": 14.485669465576185,
    "latitude": 50.03021800000002,
    "status": "offline"
  },
  {
    "stationId": "d554f7d4-2410-46c5-a09a-cc32bfd32340",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "3VHaAaNTAm",
    "longitude": 6.92685646557619,
    "latitude": 51.825476999999985,
    "status": "offline"
  },
  {
    "stationId": "3531c923-94f9-4601-98bc-9ad9b318484e",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "aZtyvoywgy",
    "longitude": 4.973258465576187,
    "latitude": 45.69847500000001,
    "status": "offline"
  },
  {
    "stationId": "d08b9571-4c15-4bf9-87da-e4e730c2b5e6",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "PUVCC370Tr",
    "longitude": 11.435636465576176,
    "latitude": 43.906855,
    "status": "offline"
  },
  {
    "stationId": "f08cfa9f-7461-49d5-89ab-79b491804299",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "5OW3nAwC80",
    "longitude": 18.224392465576162,
    "latitude": 46.07144100000001,
    "status": "offline"
  },
  {
    "stationId": "45d46f42-b183-4377-9f67-f1a277dd16db",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "uWIaPFzhq0",
    "longitude": 7.430391465576189,
    "latitude": 53.22193,
    "status": "offline"
  },
  {
    "stationId": "e0137ca5-1604-4e8f-a787-455f4a3c0485",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "GgRpQY9kz7",
    "longitude": 6.16070046557617,
    "latitude": 52.26845600000001,
    "status": "offline"
  },
  {
    "stationId": "14faf24f-bda8-4cd4-bf0e-7f08101df3e7",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "NSiT4jvApp",
    "longitude": 8.72144046557619,
    "latitude": 47.610968,
    "status": "offline"
  },
  {
    "stationId": "da37c863-a44a-475d-9c65-501ee1dc8551",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "OYq3aJBrzE",
    "longitude": 15.903431465576174,
    "latitude": 46.991182000000016,
    "status": "offline"
  },
  {
    "stationId": "3b57580b-d2cf-4996-be2f-eb1d64cae9ea",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "29vEUxxqtY",
    "longitude": 4.937485465576188,
    "latitude": 51.971089000000006,
    "status": "offline"
  },
  {
    "stationId": "1cb8e22b-fdbf-4478-92fe-a90a0e790acc",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "hwQ5cyzrMj",
    "longitude": 8.30472346557617,
    "latitude": 47.04873099999999,
    "status": "offline"
  },
  {
    "stationId": "6a9215e1-44d3-4fbf-926c-0cd24c380988",
    "tenantId": "2efebfa6-c096-43c9-9653-32eb6d50a1f6",
    "chargePointId": "nywKjXz0i4",
    "longitude": 8.621400465576183,
    "latitude": 49.870978,
    "status": "offline"
  },
  {
    "stationId": "08edcffd-446d-4ff3-8eec-b50a39bd7322",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "ku6N4RqhFl",
    "longitude": 4.999934465576175,
    "latitude": 51.60869200000002,
    "status": "offline"
  },
  {
    "stationId": "34b8729c-c227-4e4f-92ac-3d6d8375fa33",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "RbdBGBp5BA",
    "longitude": 6.015086465576176,
    "latitude": 51.63435,
    "status": "offline"
  },
  {
    "stationId": "87686c76-21b0-4f6c-880b-9b109fac8a8f",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "V52UBNEQIT",
    "longitude": 10.987438465576162,
    "latitude": 50.960411999999984,
    "status": "offline"
  },
  {
    "stationId": "753f6d62-d04e-4f3c-914d-addf3833dd40",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "R4x1Me7hIQ",
    "longitude": 7.967494465576159,
    "latitude": 47.200979999999994,
    "status": "offline"
  },
  {
    "stationId": "abed0c41-64f7-44c4-899c-3fe366402305",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "q0tyr4fsSs",
    "longitude": 13.523415465576164,
    "latitude": 52.432544,
    "status": "offline"
  },
  {
    "stationId": "2be328be-40d1-47a7-b0b1-fc029c9b385d",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "QU8b6BN4w2",
    "longitude": 10.108147465576183,
    "latitude": 48.123840999999985,
    "status": "offline"
  },
  {
    "stationId": "207a1cee-a20e-4350-80e0-3050c566f941",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "fhUtFG9ZEw",
    "longitude": 8.86118446557619,
    "latitude": 44.42157000000001,
    "status": "offline"
  },
  {
    "stationId": "5d6a9080-156d-4fdb-91b9-4db7df8e5aaa",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "AXgvXxZkgd",
    "longitude": 14.402657465576167,
    "latitude": 45.34515600000001,
    "status": "offline"
  },
  {
    "stationId": "842bc603-94b6-47cd-a3e2-43f914b3a51b",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "LZjPnCxdin",
    "longitude": 10.802254465576153,
    "latitude": 53.520976,
    "status": "offline"
  },
  {
    "stationId": "f11f42e3-e78e-45c0-9ac9-fd242425e545",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "vCu0xmpRN6",
    "longitude": 7.262953465576185,
    "latitude": 46.493233,
    "status": "offline"
  },
  {
    "stationId": "1bedcf5c-18f7-4197-9b08-c3e5402995be",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "51OjDqHwGn",
    "longitude": 8.312758465576161,
    "latitude": 47.055061000000016,
    "status": "offline"
  },
  {
    "stationId": "1a8735a1-c33b-42c9-9ad7-990a12e59a89",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "LE5Wjhl8lx",
    "longitude": 5.350616465576183,
    "latitude": 51.722331999999994,
    "status": "offline"
  },
  {
    "stationId": "4150e6f2-2fcd-4d18-8ec4-0e96135a9bcd",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "x2exwQJubX",
    "longitude": 5.297526465576183,
    "latitude": 51.50857999999999,
    "status": "offline"
  },
  {
    "stationId": "27b9f438-c004-42f1-b417-70a806629127",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "G7A09CV3Eg",
    "longitude": 9.002762465576177,
    "latitude": 48.702464,
    "status": "offline"
  },
  {
    "stationId": "166c56db-1dcf-438b-9933-3817ae07facb",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "EPHwJSl65z",
    "longitude": 11.770975465576162,
    "latitude": 50.40547300000001,
    "status": "offline"
  },
  {
    "stationId": "c7d5cc94-0808-4817-9473-aee0ade6caaf",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "n9hwMcrYP8",
    "longitude": 4.869709465576171,
    "latitude": 45.762676,
    "status": "offline"
  },
  {
    "stationId": "1cc361db-7d39-4126-91b3-4aad9fde9a9c",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "r3DxZ6DGiy",
    "longitude": 4.775220465576182,
    "latitude": 45.763187999999985,
    "status": "offline"
  },
  {
    "stationId": "b83db817-d853-4c3c-a976-c8682863c797",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "Rx8GJL7PcT",
    "longitude": 6.450510465576178,
    "latitude": 52.600705,
    "status": "offline"
  },
  {
    "stationId": "6da4098d-787b-4e13-8f68-701bfc8b3741",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "44exW6Xoim",
    "longitude": 5.97225246557616,
    "latitude": 49.492675999999996,
    "status": "offline"
  },
  {
    "stationId": "d4a77b30-6f18-4cc9-a1f4-01d74ccabc97",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "hxY69Q6S9c",
    "longitude": 13.04625946557616,
    "latitude": 47.812258,
    "status": "offline"
  },
  {
    "stationId": "a13e761d-dcbe-409e-99b5-90b09362701f",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "eUsgqJACrO",
    "longitude": 8.904062431182842,
    "latitude": 48.61277031572424,
    "status": "offline"
  },
  {
    "stationId": "2b2e8031-91aa-48ac-be15-af3cb3f0c058",
    "tenantId": "52e2d3b5-d4b1-455f-a68d-b66094d6e57d",
    "chargePointId": "P5UaZc348D",
    "longitude": 7.1281214655761715,
    "latitude": 50.624370000000006,
    "status": "offline"
  },
  {
    "stationId": "c13964e0-45d0-480e-ace2-cbda92a16558",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "mR7vncfVya",
    "longitude": 9.312505465576168,
    "latitude": 47.41722900000001,
    "status": "offline"
  },
  {
    "stationId": "06207c41-e172-4e62-a597-84102bbc32a9",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "XXgKr0u2kM",
    "longitude": 7.00939546557616,
    "latitude": 43.57199600000005,
    "status": "offline"
  },
  {
    "stationId": "2bb9b197-c332-4acd-bcf8-7518b6caefd9",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "xcXYvjoZUo",
    "longitude": 18.630019465576176,
    "latitude": 47.492369,
    "status": "offline"
  },
  {
    "stationId": "f556ccc0-4f64-4b10-802d-cccadbdbedaa",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "DBKIBqsfna",
    "longitude": 4.612864465576161,
    "latitude": 51.78179800000002,
    "status": "offline"
  },
  {
    "stationId": "4ca8fabd-f93f-4171-9feb-d9c57319772a",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "HJjrp6eogW",
    "longitude": 8.95255646557619,
    "latitude": 46.00556000000001,
    "status": "offline"
  },
  {
    "stationId": "e967f945-8ffc-4383-9833-7768601aca3b",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "fYiw27E4CC",
    "longitude": 7.243950465576172,
    "latitude": 47.14125200000001,
    "status": "available"
  },
  {
    "stationId": "b5f9bc22-ae77-4edc-94e5-36feed085e6a",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "v5MwCDhAdg",
    "longitude": 8.64057246557619,
    "latitude": 49.0989,
    "status": null
  },
  {
    "stationId": "bcc127e0-3c9f-4220-9fae-d674ecb8974e",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "Vi23wwoU6X",
    "longitude": 15.454940465576179,
    "latitude": 47.069077000000014,
    "status": null
  },
  {
    "stationId": "1cc361db-7d39-4126-91b3-4aad9fde9a9c",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "r3DxZ6DGiy",
    "longitude": 4.775220465576182,
    "latitude": 45.763187999999985,
    "status": null
  },
  {
    "stationId": "40f2113e-6968-40ec-b801-e185a4dbeeea",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "a3gSTVAQAk",
    "longitude": 11.274104465576187,
    "latitude": 46.46349400000001,
    "status": null
  },
  {
    "stationId": "c1018bde-8ae9-44d5-94e7-82f462c06d13",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "IAMe0ktJKp",
    "longitude": 5.233164465576188,
    "latitude": 52.051445999999984,
    "status": null
  },
  {
    "stationId": "b81a08b7-9105-4cd4-88bb-47b5b128a8ea",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "Fua9A2MdcF",
    "longitude": 16.50080646557618,
    "latitude": 50.85418000000003,
    "status": null
  },
  {
    "stationId": "691318b0-ab2d-4c7c-8635-46618787f8a5",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "EtVW1BJDQx",
    "longitude": 4.8488004655761685,
    "latitude": 45.77225700000002,
    "status": null
  },
  {
    "stationId": "cf1bdff2-9c5c-4205-8a71-0d106004a70e",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "JlcIPBwkDU",
    "longitude": 8.518576465576162,
    "latitude": 47.548348000000026,
    "status": null
  },
  {
    "stationId": "05822857-c277-4feb-981d-dfe35185eb97",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "uOC7FVfiCU",
    "longitude": 7.147510465576188,
    "latitude": 43.65327300000003,
    "status": null
  },
  {
    "stationId": "5c5ff0d1-8727-404f-8d7e-fe74d30619b1",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "9P7GFmCQe1",
    "longitude": 4.848624465576155,
    "latitude": 45.741125000000004,
    "status": null
  },
  {
    "stationId": "c8e08dee-3486-4f96-a1cd-9bb245f0c2f2",
    "tenantId": "ee22d3e7-c9b3-46fc-99a0-4defe94b2206",
    "chargePointId": "9mndsLyGaB",
    "longitude": 9.84912446557618,
    "latitude": 46.813047000000005,
    "status": null
  },
  {
    "stationId": "45d53cd0-c264-4ec7-a07c-6e2bfa900f83",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "BurqSlL7qP",
    "longitude": 4.80609746557616,
    "latitude": 45.786969000000006,
    "status": null
  },
  {
    "stationId": "34ad9fca-0204-469d-a535-2b57b99a5ed4",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "FdstkipAe3",
    "longitude": 8.807302465576168,
    "latitude": 47.336682999999994,
    "status": null
  },
  {
    "stationId": "569858e5-2f52-424a-86f1-28edb3180707",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "dPY4vHRP77",
    "longitude": 8.213855465576184,
    "latitude": 47.424127000000006,
    "status": "available"
  },
  {
    "stationId": "2e2c1a13-bbe6-47e1-ad3c-da1f9eb1252d",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "uwvKHeQ9Ow",
    "longitude": 4.831944465576181,
    "latitude": 45.779854000000014,
    "status": "available"
  },
  {
    "stationId": "1dfcde18-c81f-4b35-b722-cd9975244bd7",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "nq9BMDZ1d6",
    "longitude": 11.539436465576175,
    "latitude": 48.12810100000001,
    "status": "available"
  },
  {
    "stationId": "c799835b-09f1-42cf-accc-070ed415039e",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "DtuG9swwSk",
    "longitude": 5.468829465576155,
    "latitude": 51.35261200000001,
    "status": "available"
  },
  {
    "stationId": "90b90d78-349f-4764-a1eb-1111158586c4",
    "tenantId": "9e6cf7ba-c88a-45a2-9f4b-1fc8394f6d41",
    "chargePointId": "PCwaRj44k5",
    "longitude": 14.708680465576158,
    "latitude": 49.26327800000001,
    "status": "available"
  },
  {
    "stationId": "8a304b7a-2a88-45c3-8ee2-0dc698cd61b0",
    "tenantId": "52e2d3b5-d4b1-455f-a68d-b66094d6e57d",
    "chargePointId": "izRzskbypb",
    "longitude": 7.4229464655761745,
    "latitude": 43.739911000000006,
    "status": "available"
  },
  {
    "stationId": "fae78393-9f10-4708-8916-0781600fce6c",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "QmunqbRoCN",
    "longitude": 5.533386465576178,
    "latitude": 51.751946,
    "status": "available"
  },
  {
    "stationId": "fca80cf9-6016-4bfb-b4f9-3ff17dbc879a",
    "tenantId": "ee22d3e7-c9b3-46fc-99a0-4defe94b2206",
    "chargePointId": "C3235k8bKy",
    "longitude": 19.940396465576185,
    "latitude": 50.066775000000014,
    "status": "available"
  },
  {
    "stationId": "743ea4d8-9894-446c-a657-d1f960c25347",
    "tenantId": "004a3de4-ace9-4dbe-897b-86b4bf2428e2",
    "chargePointId": "EcUM85tmG1",
    "longitude": 9.23221546557619,
    "latitude": 48.591311,
    "status": "available"
  },
  {
    "stationId": "fc5be902-f46b-498f-82a8-630931c7b3eb",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "QUWbJfuaNt",
    "longitude": 6.902801465576158,
    "latitude": 46.438413999999995,
    "status": "available"
  },
  {
    "stationId": "6601e02b-d830-4a18-99d0-8c0856dc13a6",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "bWfOgczxNe",
    "longitude": 8.646963465576167,
    "latitude": 50.109938,
    "status": "available"
  },
  {
    "stationId": "0624fbdf-1f98-4b74-947f-38e9c37b75b3",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "OcRBijvAtS",
    "longitude": 10.165673465576152,
    "latitude": 49.804636000000016,
    "status": "available"
  },
  {
    "stationId": "a8dd3b78-a428-4f30-913e-b232d69c6d82",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "U6taHYgu3m",
    "longitude": 8.572992465576164,
    "latitude": 47.216752999999976,
    "status": "available"
  },
  {
    "stationId": "3e537771-ddac-4b7c-a00a-a72761266c4d",
    "tenantId": "ae9922d9-f4dd-49c5-bf2c-556a663ca943",
    "chargePointId": "r3PjqdgSg8",
    "longitude": 13.06463446557617,
    "latitude": 47.749156,
    "status": "available"
  },
  {
    "stationId": "d52c8f3f-ba37-4fd7-8900-267a310ea645",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "XfSnbnA4kn",
    "longitude": 7.214965465576184,
    "latitude": 51.47087299999997,
    "status": "available"
  },
  {
    "stationId": "4aab6298-cbde-40b8-a68a-9b0509c5c7c9",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "1vvwJvcIL7",
    "longitude": 18.142406465576183,
    "latitude": 47.19979499999999,
    "status": "available"
  },
  {
    "stationId": "89588a3e-c199-4b55-93e4-d6fc9f8e928d",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "9wCgY9wSwG",
    "longitude": 15.655697465576175,
    "latitude": 45.899269000000004,
    "status": "available"
  },
  {
    "stationId": "3eb40d7f-7fa1-4ce0-90ee-ff4f1fbad2ea",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "33QE8c88r6",
    "longitude": 16.854983465576158,
    "latitude": 48.112195000000014,
    "status": "available"
  },
  {
    "stationId": "703c27ac-afab-4645-b930-7d9bb8192545",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "CzrHyZBbvI",
    "longitude": 9.06160046557619,
    "latitude": 45.488412,
    "status": "available"
  },
  {
    "stationId": "4821e52e-52d1-47a1-b4f7-6b383e29d2d6",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "OldcjJlQ8M",
    "longitude": 5.250672465576165,
    "latitude": 51.79624899999998,
    "status": "available"
  },
  {
    "stationId": "e2167990-4d71-4fbb-821e-896117238076",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "k6krgdT6DZ",
    "longitude": 19.01104946557616,
    "latitude": 47.52268600000001,
    "status": "available"
  },
  {
    "stationId": "a811b656-f6ff-45a4-8c1e-83ff36fe65f5",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "z9pBrQ2oap",
    "longitude": 15.74005546557617,
    "latitude": 48.35000699999999,
    "status": "available"
  },
  {
    "stationId": "336d43ae-688c-4b95-b229-63a9aeece34e",
    "tenantId": "ee22d3e7-c9b3-46fc-99a0-4defe94b2206",
    "chargePointId": "CUoraMlw7C",
    "longitude": 6.804046465576157,
    "latitude": 51.27847,
    "status": "available"
  },
  {
    "stationId": "683acbc6-1a59-46a0-b290-8ea0124ca1bf",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "HLIo9O3bhS",
    "longitude": 7.2882974655761545,
    "latitude": 47.161207000000005,
    "status": "available"
  },
  {
    "stationId": "6d213331-356d-4a77-a7ad-3613611af6e9",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "k9ZPrEn1gn",
    "longitude": 5.302661465576155,
    "latitude": 51.503082000000006,
    "status": "available"
  },
  {
    "stationId": "3f7ab3f7-6aa8-461c-b256-c297f8709711",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "0wrMtcoIxC",
    "longitude": 5.701794465576184,
    "latitude": 50.848198000000046,
    "status": "available"
  },
  {
    "stationId": "c5f29e53-6c51-45f9-ae35-a83ed7bedc49",
    "tenantId": "11ba4769-101a-47db-be71-f180bfb11826",
    "chargePointId": "q24uCXdEzs",
    "longitude": 4.640721465576183,
    "latitude": 51.844820000000006,
    "status": "available"
  },
  {
    "stationId": "30f9115a-f2f1-4621-8bd8-9923e3996931",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "Oc7MWQaHXH",
    "longitude": 4.520326465576168,
    "latitude": 51.87936999999999,
    "status": "available"
  },
  {
    "stationId": "9639d169-d16f-4b15-b4ff-e855c5150f3d",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "7G89MWg2ZG",
    "longitude": 8.881341465576162,
    "latitude": 45.614620999999985,
    "status": "available"
  },
  {
    "stationId": "dfcdeac5-a0fc-4a87-857c-ba61e368c863",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "mA6HdPouDT",
    "longitude": 6.902801465576158,
    "latitude": 46.438413999999995,
    "status": "available"
  },
  {
    "stationId": "15998987-fff1-4685-8e41-72250e021e6f",
    "tenantId": "2efebfa6-c096-43c9-9653-32eb6d50a1f6",
    "chargePointId": "gWW5W1a0M1",
    "longitude": 14.154649465576158,
    "latitude": 47.700862000000036,
    "status": "available"
  },
  {
    "stationId": "8f42ae92-0f18-4126-b33b-cfe2e78b19a2",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "vUnZWovnIU",
    "longitude": 11.613237465576182,
    "latitude": 48.15291199999999,
    "status": "available"
  },
  {
    "stationId": "721f808d-f38b-4276-aa1c-25a3625ea66c",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "f3hSfePQDr",
    "longitude": 13.371686465576168,
    "latitude": 49.75268899999998,
    "status": "available"
  },
  {
    "stationId": "578331a4-9f5e-49bb-9e81-934d93a003e8",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "b8BELmNOP7",
    "longitude": 7.660908465576188,
    "latitude": 45.072100000000006,
    "status": "available"
  },
  {
    "stationId": "3c7b67fc-6252-410c-8ff2-4f2d2576e1ad",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "bDBPGPeTb6",
    "longitude": 4.704584465576178,
    "latitude": 52.017675999999994,
    "status": "available"
  },
  {
    "stationId": "3b32f69a-1d52-462f-aa79-7fd61eb323ea",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "H4S7UlkqeH",
    "longitude": 11.657659465576176,
    "latitude": 48.12151100000003,
    "status": "available"
  },
  {
    "stationId": "157efc85-0f65-4967-845f-8aea130ee4db",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "FhimeelpZW",
    "longitude": 15.323445465576171,
    "latitude": 48.59017500000003,
    "status": "available"
  },
  {
    "stationId": "cc191ab3-502e-4d08-a2b4-81a70af4965a",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "T3pz3I3Ozw",
    "longitude": 6.8066374655761885,
    "latitude": 51.272833,
    "status": "available"
  },
  {
    "stationId": "5858d8cf-3dc7-45da-a374-ca87038bb714",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "fcsXJ9L7AZ",
    "longitude": 13.765597465576182,
    "latitude": 46.810697,
    "status": "available"
  },
  {
    "stationId": "d8b73f51-076c-4c59-8e4d-99e252346a2d",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "35pVGzR1KJ",
    "longitude": 11.382617698364243,
    "latitude": 48.772319141307115,
    "status": "available"
  },
  {
    "stationId": "28401250-23d8-4143-9de9-bf21bf49fc4d",
    "tenantId": "ee22d3e7-c9b3-46fc-99a0-4defe94b2206",
    "chargePointId": "bKdR7yqroy",
    "longitude": 5.388292465576163,
    "latitude": 52.130496000000015,
    "status": "available"
  },
  {
    "stationId": "d2f0c527-06ee-4928-938c-fa6de0b65056",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "Kj9nIQwjJE",
    "longitude": 11.780739465576167,
    "latitude": 50.32454099999999,
    "status": "available"
  },
  {
    "stationId": "bb5da1d1-49bc-4e79-995d-5b01fd359659",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "8IwGcVclbu",
    "longitude": 9.897324465576176,
    "latitude": 46.493656000000016,
    "status": "available"
  },
  {
    "stationId": "d86472ea-a6c5-4052-aa18-128da4d9fac9",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "gnN1R1CKON",
    "longitude": 7.115018465576157,
    "latitude": 50.879821,
    "status": "available"
  },
  {
    "stationId": "25eab2e0-1908-4c82-b8bb-9172964c88e1",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "b8w2p89WWc",
    "longitude": 11.033789465576168,
    "latitude": 49.662707000000005,
    "status": "available"
  },
  {
    "stationId": "bca536f6-0b3f-4adb-af6c-d0884a84af22",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "mobeDhR0nK",
    "longitude": 6.822991465576167,
    "latitude": 47.10003000000004,
    "status": "available"
  },
  {
    "stationId": "e384047a-a81a-4d17-9a8c-6bb773bd8734",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "SeOtpDSSeN",
    "longitude": 15.66880446557616,
    "latitude": 47.606707,
    "status": "available"
  },
  {
    "stationId": "f587d0dd-0f7e-42a1-8cb4-0440a0263438",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "Mnx5zt7o58",
    "longitude": 5.60755646557618,
    "latitude": 51.44343400000002,
    "status": "available"
  },
  {
    "stationId": "19e9e721-b977-4063-a9c0-1da6fcddee16",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "JCTiN46sjJ",
    "longitude": 10.966295465576183,
    "latitude": 43.661491000000005,
    "status": "available"
  },
  {
    "stationId": "c9c8eca3-688c-4ec0-8a91-0fff80d98d5a",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "vDazjrQ513",
    "longitude": 17.03903246557618,
    "latitude": 48.202175,
    "status": "available"
  },
  {
    "stationId": "e5110b0f-74c6-4188-b96c-09fb566f3266",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "nxUngyWIhV",
    "longitude": 4.166660465576184,
    "latitude": 50.88688000000002,
    "status": "available"
  },
  {
    "stationId": "76845ea9-a85d-4986-8274-7e9f29e26480",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "NetWHfvoQj",
    "longitude": 8.081213465576157,
    "latitude": 53.124291,
    "status": "available"
  },
  {
    "stationId": "f0f7c1ac-2f96-4ed8-86a9-80b180f168d1",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "mIYGz9PHzM",
    "longitude": 8.239138465576183,
    "latitude": 47.09752400000001,
    "status": "available"
  },
  {
    "stationId": "edb347fd-6d6a-43de-bd8a-4fede8c5e5f1",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "zorC6RPaJV",
    "longitude": 10.065772465576174,
    "latitude": 53.66886700000002,
    "status": "available"
  },
  {
    "stationId": "248780b8-5afb-4549-b63f-06f740799ab7",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "cIJvA0gk6W",
    "longitude": 9.875195465576189,
    "latitude": 47.348777000000005,
    "status": "available"
  },
  {
    "stationId": "13f9caf1-30fb-4a09-9ea3-8b7ff0b8bd16",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "aNcXr7i92M",
    "longitude": 12.01790346557618,
    "latitude": 47.853385,
    "status": "available"
  },
  {
    "stationId": "4a68fda5-663d-4961-8c68-a63f3772aece",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "zUZ10GneHe",
    "longitude": 6.2214594655761735,
    "latitude": 49.10047899999998,
    "status": "available"
  },
  {
    "stationId": "3c36d01b-f57f-4e28-898c-ffd555eb1daf",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "mT4n800dzR",
    "longitude": 5.245881465576159,
    "latitude": 50.70618800000005,
    "status": "available"
  },
  {
    "stationId": "d823473a-0859-46df-bcad-1f916ea3cfa5",
    "tenantId": "2efebfa6-c096-43c9-9653-32eb6d50a1f6",
    "chargePointId": "sMoEuyccqW",
    "longitude": 19.940396465576185,
    "latitude": 50.066775000000014,
    "status": "available"
  },
  {
    "stationId": "71f345b7-50f4-47b5-906a-dd2bbe1f5c82",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "p2iyGIUgnx",
    "longitude": 5.240468465576167,
    "latitude": 52.02548700000001,
    "status": "available"
  },
  {
    "stationId": "1b4cbd4f-dfb1-4565-9cc0-5476c007b53b",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "DkMNQJG8P1",
    "longitude": 14.509239465576176,
    "latitude": 46.07630800000001,
    "status": "available"
  },
  {
    "stationId": "056a7a3f-d105-47d2-a9a9-c68ebeeb4a8f",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "IodkMTtUBl",
    "longitude": 6.456636465576171,
    "latitude": 52.36106300000001,
    "status": "available"
  },
  {
    "stationId": "98e8c26c-acce-4e0b-b6c4-f27bfa51c38e",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "QF0qMC2w4y",
    "longitude": 6.149865465576161,
    "latitude": 46.254374999999996,
    "status": "available"
  },
  {
    "stationId": "b38f847e-e9fd-49d9-8fe0-06fda5c0622a",
    "tenantId": "ee22d3e7-c9b3-46fc-99a0-4defe94b2206",
    "chargePointId": "TdMSMzEwyw",
    "longitude": 5.814724465576169,
    "latitude": 49.648233,
    "status": "available"
  },
  {
    "stationId": "31ee4875-c363-4aea-add7-3bd6dcb00d9f",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "3tY578JxFi",
    "longitude": 4.8488004655761685,
    "latitude": 45.77225700000002,
    "status": "available"
  },
  {
    "stationId": "c38717e8-3ca8-419c-b013-9939993baac7",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "7nOD6S9BaE",
    "longitude": 9.725359465576187,
    "latitude": 52.36979699999999,
    "status": "available"
  },
  {
    "stationId": "585cbb9a-6cfe-42bf-b1f2-fe89a758c9f5",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "AInKl8J375",
    "longitude": 9.389150465576156,
    "latitude": 47.389574,
    "status": "available"
  },
  {
    "stationId": "d446c623-dbf4-43f4-b867-3d52144fc7af",
    "tenantId": "ee22d3e7-c9b3-46fc-99a0-4defe94b2206",
    "chargePointId": "N7NlrFFfH4",
    "longitude": 8.88219246557619,
    "latitude": 45.97157100000002,
    "status": "available"
  },
  {
    "stationId": "d2460e22-89af-4ac2-bc14-a93bb58da1e7",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "Sc08opKcQR",
    "longitude": 5.289726465576172,
    "latitude": 51.33774999999999,
    "status": "available"
  },
  {
    "stationId": "dcf335ed-1c11-4d7e-91fd-7af4b57d9c4a",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "R35tzAZiRj",
    "longitude": 6.764642465576167,
    "latitude": 51.27673899999999,
    "status": "available"
  },
  {
    "stationId": "783f375b-2fb1-4837-810b-22b80d9d72e5",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "jIk3J5YOV7",
    "longitude": 5.136839465576166,
    "latitude": 52.352012000000016,
    "status": "available"
  },
  {
    "stationId": "f21f573f-94f2-48d4-bc7b-db7e9d987b41",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "Hj2S6hnxjd",
    "longitude": 15.48831646557617,
    "latitude": 47.028470000000006,
    "status": "available"
  },
  {
    "stationId": "0daabe1a-87b6-4ad2-8e4c-5cc0dca7ddee",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "zWPxpVAdaF",
    "longitude": 5.106362465576191,
    "latitude": 52.08242399999998,
    "status": "available"
  },
  {
    "stationId": "9ccdeaa9-8054-4002-b636-f88d1a2d5157",
    "tenantId": "ee22d3e7-c9b3-46fc-99a0-4defe94b2206",
    "chargePointId": "6WMjxfFt2F",
    "longitude": 16.64386446557616,
    "latitude": 47.239862,
    "status": "available"
  },
  {
    "stationId": "2bbc292c-fb60-4095-bf9a-edb05a5a24ce",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "1wZw6CnkdU",
    "longitude": 4.5911024655761645,
    "latitude": 51.87626,
    "status": "available"
  },
  {
    "stationId": "0c0b0ed8-9d39-42ba-9502-af6dd5f61a72",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "kYLt69dE6P",
    "longitude": 7.625353465576161,
    "latitude": 46.76135299999999,
    "status": "available"
  },
  {
    "stationId": "a9c030ee-930f-4a5a-8d97-865e1b79bc12",
    "tenantId": "949e5429-e791-4184-af48-c50fa99e6cbd",
    "chargePointId": "gkret9BO19",
    "longitude": 4.643481465576169,
    "latitude": 51.82167499999999,
    "status": "available"
  },
  {
    "stationId": "8a419df1-aa3e-4e50-aedc-8a35b0827375",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "pUsk2LsRDJ",
    "longitude": 18.114564465576162,
    "latitude": 50.37183199999999,
    "status": "available"
  },
  {
    "stationId": "ab93b6e8-d8d1-41bb-ade6-10fdefaeae3a",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "FEiASVHMJo",
    "longitude": 13.914404465576178,
    "latitude": 48.226732000000005,
    "status": "available"
  },
  {
    "stationId": "e71ff6b8-0577-4285-b850-f4338b21ece2",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "0mZfjJAxlJ",
    "longitude": 4.980424465576179,
    "latitude": 51.580629000000016,
    "status": "available"
  },
  {
    "stationId": "977ba844-f2e6-414a-a669-09139917cd5a",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "fdL9ozX2K0",
    "longitude": 8.218287465576184,
    "latitude": 47.538560000000004,
    "status": "available"
  },
  {
    "stationId": "36229ebb-94a3-4a0e-aa90-d3574f0f8747",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "zgyLy3nvaI",
    "longitude": 15.996941465576175,
    "latitude": 45.80229,
    "status": "available"
  },
  {
    "stationId": "a4b697ef-2259-46df-8172-7ae3d04dd909",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "eUChwEiar5",
    "longitude": 7.307788465576177,
    "latitude": 43.703355000000016,
    "status": "available"
  },
  {
    "stationId": "756f8344-5fb1-46cd-a8c6-17d2e720d348",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "SmCUFa0ij7",
    "longitude": 5.2604864655761885,
    "latitude": 51.39942899999999,
    "status": "available"
  },
  {
    "stationId": "ba0f3e2b-e5eb-49f2-abf4-60a7dc6aa078",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "kAh7DyOGkb",
    "longitude": 8.344999465576167,
    "latitude": 53.02126700000001,
    "status": "available"
  },
  {
    "stationId": "9b5f61de-87ec-43b4-9546-307a4f632c15",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "CoMgTmixMf",
    "longitude": 7.775136465576176,
    "latitude": 47.224237000000024,
    "status": "available"
  },
  {
    "stationId": "9e924a57-8fd2-4b50-8f84-aba7d9a7e416",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "5yLBjeAaAj",
    "longitude": 9.303467465576162,
    "latitude": 47.408799999999985,
    "status": "available"
  },
  {
    "stationId": "b7929bd7-4719-4d43-af4f-43578ada2bb3",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "o0vXEd4enN",
    "longitude": 12.227221465576163,
    "latitude": 44.73440699999999,
    "status": "available"
  },
  {
    "stationId": "5d0e34bb-4349-4e9d-afe0-76ce54b1a2f5",
    "tenantId": "949e5429-e791-4184-af48-c50fa99e6cbd",
    "chargePointId": "Lwg4OM2nlS",
    "longitude": 7.414419465576163,
    "latitude": 43.72549599999998,
    "status": "available"
  },
  {
    "stationId": "7f8b9f37-4de2-4566-a224-402e07713f97",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "SIsxoaOyfy",
    "longitude": 11.11107646557616,
    "latitude": 42.787930000000024,
    "status": "available"
  },
  {
    "stationId": "4be51a75-4712-495f-afee-d8aeb9b7782a",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "q87gWLq53D",
    "longitude": 6.888221465576159,
    "latitude": 52.22262800000002,
    "status": "available"
  },
  {
    "stationId": "f47405d4-7c7b-4601-b9fc-a2019433d640",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "xxomODwsz2",
    "longitude": 4.995263465576185,
    "latitude": 51.84320000000001,
    "status": "available"
  },
  {
    "stationId": "b84ad966-7346-4364-89a7-a604b4e09c68",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "xkuhEzyIgJ",
    "longitude": 8.765997465576163,
    "latitude": 46.15558400000005,
    "status": "available"
  },
  {
    "stationId": "e4360671-7ded-42c1-babe-edf9d9a90654",
    "tenantId": "2dfe6bf1-747b-4fa3-a9ab-ef5923d66b3e",
    "chargePointId": "osyKLoM6T3",
    "longitude": 5.861650465576189,
    "latitude": 51.82630900000002,
    "status": "available"
  },
  {
    "stationId": "43431a2b-9f92-4f63-acba-7b9b61157583",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "lhm2XLxDus",
    "longitude": 5.708001465576165,
    "latitude": 50.306318,
    "status": "available"
  },
  {
    "stationId": "3033d23c-f8d3-4087-b638-4b8081c99c99",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "gY1lmxW9MO",
    "longitude": 5.043442465576162,
    "latitude": 52.01680799999999,
    "status": "available"
  },
  {
    "stationId": "79c697d7-de49-4a2e-a6e9-a20cd0b19869",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "vmyVDy8RLZ",
    "longitude": 6.125800465576181,
    "latitude": 46.19313600000001,
    "status": "available"
  },
  {
    "stationId": "f59651ff-4e20-4a08-b27f-246fddcde9f2",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "JxHKm0Md0c",
    "longitude": 7.7353684655761645,
    "latitude": 48.54451200000001,
    "status": "available"
  },
  {
    "stationId": "d440904c-04de-4537-bde4-2847014d5fa5",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "tOOaTvtRx9",
    "longitude": 4.62405946557618,
    "latitude": 51.570168000000024,
    "status": "available"
  },
  {
    "stationId": "7b8261f8-58cd-49e4-95e4-333f3b140399",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "nW3vlGEhNG",
    "longitude": 4.775220465576182,
    "latitude": 45.763187999999985,
    "status": "available"
  },
  {
    "stationId": "40154beb-3953-45d1-a8ac-2da656ea8ffe",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "54ud35Jnju",
    "longitude": 12.246768465576183,
    "latitude": 44.783762,
    "status": "available"
  },
  {
    "stationId": "573f350c-a9cf-4550-8f10-1ccd04bba97c",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "SE7xmqpgsF",
    "longitude": 9.88840746557619,
    "latitude": 47.283875000000016,
    "status": "available"
  },
  {
    "stationId": "eba72b8f-ffd9-42f9-8ad6-3af96c763f27",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "uRE2gk8VAY",
    "longitude": 10.881212465576153,
    "latitude": 47.30943799999999,
    "status": "available"
  },
  {
    "stationId": "4eb7028a-47ff-4325-970e-e87af1f6d0c1",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "7hABNgS5k9",
    "longitude": 8.319291465576176,
    "latitude": 49.996579000000004,
    "status": "available"
  },
  {
    "stationId": "84d4c9ae-2af9-4b32-8579-464211406f04",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "1vPw4x4r8T",
    "longitude": 5.608147465576159,
    "latitude": 51.657553000000036,
    "status": "available"
  },
  {
    "stationId": "ca909d1a-c09b-4f60-bb0c-f497c1d237b9",
    "tenantId": "02c73622-45dd-4909-8200-88101bfc629e",
    "chargePointId": "JC7Si87VdZ",
    "longitude": 12.172859465576193,
    "latitude": 47.80123800000001,
    "status": "available"
  },
  {
    "stationId": "6ecbba53-fad4-42fa-afbd-425b5748dced",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "VwQsN9W3DK",
    "longitude": 9.700910911422728,
    "latitude": 52.37273830849964,
    "status": "available"
  },
  {
    "stationId": "3fe80953-4504-4869-97f3-0a59096314de",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "uLj6wawDUl",
    "longitude": 9.671998465576186,
    "latitude": 47.373078000000014,
    "status": "available"
  },
  {
    "stationId": "c73af251-f51f-41da-836a-f669803bca02",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "bognTRwizM",
    "longitude": 10.104734465576163,
    "latitude": 47.201216999999964,
    "status": "available"
  },
  {
    "stationId": "e59b0198-bf1f-4e92-af74-52c072e23ea2",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "P0cuH5WuhD",
    "longitude": 5.24808746557619,
    "latitude": 51.80158900000003,
    "status": "available"
  },
  {
    "stationId": "a54aded4-8858-496f-b39d-99225f7a1a65",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "T8cQleKN5f",
    "longitude": 11.646028465576173,
    "latitude": 48.095455,
    "status": "available"
  },
  {
    "stationId": "ca822d6d-43f6-4393-9335-5ec90a39fa5c",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "QJ3uEL8FAZ",
    "longitude": 6.014363465576187,
    "latitude": 50.75618099999999,
    "status": "available"
  },
  {
    "stationId": "82ccc127-014d-424d-be31-d200dd66f61a",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "R8JU5eFYbT",
    "longitude": 8.574918465576168,
    "latitude": 49.15344000000001,
    "status": "available"
  },
  {
    "stationId": "a4658803-969b-4042-b658-a314e9ab8ac7",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "bgZG5dZMm5",
    "longitude": 7.6538514655761825,
    "latitude": 46.60127300000003,
    "status": "available"
  },
  {
    "stationId": "77f4c8b4-3382-4711-ba7d-340ca015a429",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "4iCifE2Lk1",
    "longitude": 5.095375465576155,
    "latitude": 51.56273200000001,
    "status": "available"
  },
  {
    "stationId": "47a1b90f-fa0f-4d16-8ad1-24c1f6804bbe",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "VANfgwrgyw",
    "longitude": 4.855335465576189,
    "latitude": 51.590515000000025,
    "status": "available"
  },
  {
    "stationId": "c2113e60-e648-4bc0-aa8e-0a22f3862048",
    "tenantId": "02c73622-45dd-4909-8200-88101bfc629e",
    "chargePointId": "A9fMSfNohh",
    "longitude": 17.646846465576168,
    "latitude": 46.775212000000046,
    "status": "available"
  },
  {
    "stationId": "b2c210c5-6761-4faa-86dc-c130d15aa49a",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "Lt6hU6IoOl",
    "longitude": 19.156068465576162,
    "latitude": 47.41239099999999,
    "status": "available"
  },
  {
    "stationId": "e4ebd1c4-dd09-4a3e-9ac1-ec3f0c7a3167",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "8TshQCIGjh",
    "longitude": 6.941021465576185,
    "latitude": 46.25815099999999,
    "status": "available"
  },
  {
    "stationId": "da978866-16d1-4eb8-ba0b-f069805dcc29",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "OTklUvMkym",
    "longitude": 17.303385465576184,
    "latitude": 49.558947,
    "status": "available"
  },
  {
    "stationId": "487c76b6-9a19-441a-b9ae-3e41cb772427",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "HBBSIAFJ9P",
    "longitude": 4.882131465576154,
    "latitude": 45.74941700000001,
    "status": "available"
  },
  {
    "stationId": "b51ab3a4-f359-4fd3-9de3-0f4dacfcd54c",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "p3ZndHCi05",
    "longitude": 8.579007465576165,
    "latitude": 47.529416,
    "status": "available"
  },
  {
    "stationId": "3edd98d3-ac79-4c00-8551-2a94aa3d5608",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "Od4NkH1oUi",
    "longitude": 4.886551465576159,
    "latitude": 45.75848900000004,
    "status": "available"
  },
  {
    "stationId": "396fece5-97d0-4699-b18f-d5d11db4ee54",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "LkbCghsXUt",
    "longitude": 5.347369003921516,
    "latitude": 52.163332000000004,
    "status": "available"
  },
  {
    "stationId": "22b469c9-f6f3-4f16-9963-33412d71f565",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "G75IzjF8gk",
    "longitude": 5.239391465576184,
    "latitude": 52.07905,
    "status": "available"
  },
  {
    "stationId": "abafb381-e515-4c03-9749-04779b493f35",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "LK1BPNldm9",
    "longitude": 4.868058465576177,
    "latitude": 45.77896599999999,
    "status": "available"
  },
  {
    "stationId": "78b61deb-70a5-4720-85e3-e96f6d2e85de",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "1ddypXiLLP",
    "longitude": 9.52150946557619,
    "latitude": 47.003957999999976,
    "status": "available"
  },
  {
    "stationId": "52cc0c51-69ab-4c18-896a-e5f5734dc511",
    "tenantId": "fdb5bcc2-4346-40ec-98d7-b5d8931599c8",
    "chargePointId": "y1EmCxXqE2",
    "longitude": 9.821601465576174,
    "latitude": 46.799005,
    "status": "available"
  },
  {
    "stationId": "4142843e-f74e-46f6-a11e-024ff80fd2f6",
    "tenantId": "a0332b3f-950e-4bdf-a50f-488a09e6fdb6",
    "chargePointId": "oXbqkg9JSu",
    "longitude": 4.563755465576174,
    "latitude": 51.89618500000001,
    "status": "available"
  },
  {
    "stationId": "41579d51-13e0-4a09-a00f-20a066165e32",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "QTml33SiS6",
    "longitude": 10.975905465576155,
    "latitude": 45.41341300000001,
    "status": "available"
  },
  {
    "stationId": "6da82dec-5886-46b7-871d-fbaad597e1f9",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "Wwtghruf9e",
    "longitude": 7.004076465576192,
    "latitude": 53.103792000000006,
    "status": "available"
  },
  {
    "stationId": "ccbed1f1-c873-49b2-a2d6-1ff29cb08d16",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "qvIwcJjFLp",
    "longitude": 8.64619146557616,
    "latitude": 47.51759500000002,
    "status": "available"
  },
  {
    "stationId": "6f8fa77d-1255-4295-af3e-fdfcfbf47fe3",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "JAsK3Yz1PQ",
    "longitude": 5.263968465576161,
    "latitude": 52.39117500000001,
    "status": "available"
  },
  {
    "stationId": "443eea43-d558-4d1e-86fa-971ab855c840",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "JVl06ExLjv",
    "longitude": 9.372769465576182,
    "latitude": 45.84997300000002,
    "status": "available"
  },
  {
    "stationId": "28430d9b-dde4-4433-9c87-6f48782d1cda",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "WQEhbt0JTv",
    "longitude": 13.427845465576182,
    "latitude": 52.510146000000006,
    "status": "available"
  },
  {
    "stationId": "102a0f2e-758d-4015-9056-d67f57573594",
    "tenantId": "d393ab33-023c-4bf7-b1b2-20bab02ca732",
    "chargePointId": "B9OmlPstmF",
    "longitude": 10.16005346557618,
    "latitude": 47.341942,
    "status": "available"
  },
  {
    "stationId": "8b1cad91-1960-4670-a5e7-af9515dfe59a",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "L5Uw81syn7",
    "longitude": 7.243950465576172,
    "latitude": 47.14125200000001,
    "status": "available"
  },
  {
    "stationId": "dc87d501-66f6-4e35-b79c-64b4a8d04cb0",
    "tenantId": "14fa4fb4-c77c-49a0-923d-f99d07bf39dd",
    "chargePointId": "iYYzRd3YZp",
    "longitude": 4.845225465576175,
    "latitude": 45.753301,
    "status": "available"
  },
  {
    "stationId": "543b6566-4635-4ab3-ab54-7089f101a4e4",
    "tenantId": "2efebfa6-c096-43c9-9653-32eb6d50a1f6",
    "chargePointId": "7KMrTdvG3B",
    "longitude": 15.08940313365175,
    "latitude": 47.920697945134116,
    "status": "available"
  },
  {
    "stationId": "c1df6776-a84c-4a43-ae41-c51d3aaf48e0",
    "tenantId": "7b75851f-9d11-48a8-9335-f93872aab598",
    "chargePointId": "cRnchqBO7n",
    "longitude": 8.450568465576174,
    "latitude": 48.06087499999998,
    "status": "available"
  },
  {
    "stationId": "c99b5cfa-d4de-4eef-aea3-f58786bf0fd6",
    "tenantId": "e4ee4422-1a2a-466a-af2c-159b22cdf710",
    "chargePointId": "xrkH4y4Ntn",
    "longitude": 7.624187465576169,
    "latitude": 46.754473999999995,
    "status": "available"
  },
  {
    "stationId": "5c0ef6a6-1b60-4d46-8c5d-f0cd4bac47b9",
    "tenantId": "2efebfa6-c096-43c9-9653-32eb6d50a1f6",
    "chargePointId": "x70cL9wHjU",
    "longitude": 16.206251465576177,
    "latitude": 47.80460200000001,
    "status": "available"
  },
  {
    "stationId": "6a357cb9-89e3-4c4d-900c-6475f1536b73",
    "tenantId": "d7b62a78-7bb4-4eea-9c9b-a0ffff973b25",
    "chargePointId": "2iK4y4d8MX",
    "longitude": 13.90158146557619,
    "latitude": 45.888321,
    "status": "available"
  }
]''';
