import 'package:dio/dio.dart';
import 'package:dlog/core/utils/config.dart';
import 'package:dlog/data/models/dto/address/create/city_dto.dart';
import 'package:dlog/data/models/dto/address/create/district_dto.dart';
import 'package:dlog/data/models/dto/address/create/region_dto.dart';
import 'package:dlog/data/models/dto/address/create/township_dto.dart';
import 'package:dlog/data/models/dto/auth/user/user_response.dart';
import 'package:dlog/features/auth/data/models/login/login_request.dart';
import 'package:dlog/features/auth/data/models/signup/signup_request.dart';
import 'package:retrofit/retrofit.dart';

part 'address_service.g.dart';

@RestApi(baseUrl: Config.addressUrl)
abstract class AddressService {
  factory AddressService(Dio dio) = _AddressService;

  @GET(regionPath)
  Future<HttpResponse<List<RegionDTO>>> region({
    @Header("Authorization") required String token,
  });

  @GET(districtPath)
  Future<HttpResponse<List<DistrictDTO>>> district({
    @Header("Authorization") required String token,
    @Query('regionPostalCode',encoded: true) required String regionPostalCode,
  });

  @GET(townshipPath)
  Future<HttpResponse<List<TownshipDTO>>> township({
    @Header("Authorization") required String token,
    @Query('districtPostalCode',encoded: true) required String districtPostalCode,
  });

  @GET(cityPath)
  Future<HttpResponse<List<CityDTO>>> city({
    @Header("Authorization") required String token,
    @Query('regionPostalCode',encoded: true) required String regionPostalCode,
    @Query('districtPostalCode',encoded: true) required String districtPostalCode,
    @Query('townshipPostalCode',encoded: true) required String townshipPostalCode,

  });
}

/// ******************************************
///  Title : End Points
/// ******************************************
const String regionPath = "regions";
const String districtPath = "districts";
const String townshipPath = "townships";
const String cityPath = "cities";
