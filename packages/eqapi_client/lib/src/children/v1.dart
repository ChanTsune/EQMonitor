import 'package:dio/dio.dart';
import 'package:eqapi_types/eqapi_types.dart';
import 'package:eqapi_types/lib.dart';
import 'package:eqapi_types/model/v1/earthquake_early.dart';
import 'package:retrofit/retrofit.dart';

part 'v1.g.dart';

@RestApi()
abstract class V1 {
  factory V1(Dio dio, {String baseUrl}) = _V1;

  @GET('/v1/earthquake/list')
  Future<HttpResponse<List<EarthquakeV1>>> getEarthquakes({
    /// 1~100
    @Query('limit') int limit = 10,

    /// 0~100000
    @Query('offset') int offset = 0,

    /// 0~10
    @Query('magnitudeLte') double? magnitudeLte,

    /// 0~10
    @Query('magnitudeGte') double? magnitudeGte,

    /// 0~1000
    @Query('depthLte') double? depthLte,

    /// 0~1000
    @Query('depthGte') double? depthGte,
    @Query('intensityLte') String? intensityLte,
    @Query('intensityGte') String? intensityGte,
  });

  @GET('/v1/earthquake/detail/{eventId}')
  Future<HttpResponse<EarthquakeV1>> getEarthquakeDetail({
    @Path('eventId') required String eventId,
  });

  @GET('/v1/earthquake/region')
  Future<HttpResponse<List<RegionItem>>> getEarthquakeRegions({
    /// 1~100
    @Query('limit') int limit = 10,

    /// 0~10000
    @Query('offset') int offset = 0,
    @Query('regionCode') required String regionCode,
    @Query('intensityLte') String? intensityLte,
    @Query('intensityGte') String? intensityGte,
  });

  @GET('/v1/information')
  Future<HttpResponse<List<InformationV1>>> getInformations({
    /// 1~100
    @Query('limit') int limit = 10,

    /// 0~10000
    @Query('offset') int offset = 0,
  });

  @GET('/v1/eew')
  Future<HttpResponse<List<EewV1>>> getEew({
    /// 1~100
    @Query('limit') int limit = 10,

    /// 0~10000
    @Query('offset') int offset = 0,
  });

  @GET('/v1/eew/latest')
  Future<HttpResponse<List<EewV1>>> getEewLatest();

  @GET('/v1/earthquake-early/list')
  Future<HttpResponse<List<EarthquakeEarly>>> getEarthquakeEarlies({
    /// 1~100
    @Query('limit') int limit = 10,

    /// 0~
    @Query('offset') int offset = 0,

    /// 0~10
    @Query('magnitudeLte') double? magnitudeLte,

    /// 0~10
    @Query('magnitudeGte') double? magnitudeGte,

    /// 0~1000
    @Query('depthLte') double? depthLte,

    /// 0~1000
    @Query('depthGte') double? depthGte,
    @Query('intensityLte') String? intensityLte,
    @Query('intensityGte') String? intensityGte,
    @Query('originTimeLte') DateTime? originTimeLte,
    @Query('originTimeGte') DateTime? originTimeGte,
    @Query('sort')
    EarthquakeEarlySortType sort = EarthquakeEarlySortType.origin_time,
    @Query("ascending") bool ascending = false,
  });
}

enum EarthquakeEarlySortType {
  origin_time,
  magnitude,
  depth,
  max_intensity,
}
