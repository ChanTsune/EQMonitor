// ignore_for_file: deprecated_consistency

import 'package:dio/dio.dart';
import 'package:eqapi_client/src/children/auth.dart';
import 'package:eqapi_client/src/children/objects.dart';
import 'package:eqapi_client/src/children/v1.dart';
import 'package:eqapi_types/eqapi_types.dart';
import 'package:eqapi_types/lib.dart';
import 'package:retrofit/retrofit.dart';

export 'children/v1.dart';

part 'eqapi_client.g.dart';

class EqApi {
  EqApi({
    required this.dio,
    required this.objectsDio,
  });

  final Dio dio;
  final Dio objectsDio;

  V1 get v1 => V1(dio);

  AuthApiClient get auth => AuthApiClient(dio);

  V3 get v3 => V3(dio);

  Objects get objects => Objects(objectsDio);
}

@RestApi()
abstract class V3 {
  factory V3(Dio dio, {String baseUrl}) = _V3;
  @GET('/v3/information')
  Future<InformationV3Result> getInformation({
    @Query('offset') int offset = 0,
    @Query('limit') int limit = 10,
  });

  @GET('/v3/app_information')
  Future<AppInformation> getAppInformation();
}
