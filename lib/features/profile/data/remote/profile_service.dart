import 'package:dio/dio.dart';
import 'package:dlog/core/utils/config.dart';
import 'package:dlog/data/models/dto/address/create/city_and_village_tracts_dto.dart';
import 'package:dlog/data/models/dto/address/create/region_dto.dart';
import 'package:dlog/data/models/dto/address/create/township_dto.dart';
import 'package:dlog/data/models/dto/address/create/village_and_wards_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'profile_service.g.dart';

@RestApi(baseUrl: Config.profileUrl)
abstract class ProfileService {
  factory ProfileService(Dio dio) = _ProfileService;

  @GET(regionPath)
  Future<HttpResponse<List<RegionDTO>>> region({
    @Query('search') required String search,
  });

  @GET(townshipPath)
  Future<HttpResponse<List<TownshipDTO>>> township({
    @Query('search') required String search,
    @Query('region_id',encoded: true) required String regionId,
  });

  @GET(cityAndVillageTractsPath)
  Future<HttpResponse<List<CityAndVillageTractsDTO>>> cityAndVillageTracts({
    @Query('search') required String search,
    @Query('township_id',encoded: true) required String townshipId,
  });

  @GET(villageAndWardsPath)
  Future<HttpResponse<List<VillageAndWardsDTO>>> villageAndWards({
    @Query('search') required String search,
    @Query('city_and_village_tract_id',encoded: true) required String cityAndVillageTractsId,
  });
}

/// ******************************************
///  Title : End Points
/// ******************************************
const String regionPath = "address/regions";
const String townshipPath = "address/townships";
const String cityAndVillageTractsPath = "address/city-and-village-tracts";
const String villageAndWardsPath = "address/village-and-wards";
