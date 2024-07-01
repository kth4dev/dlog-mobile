import 'package:dlog/core/resource/datastate/data_state.dart';
import 'package:dlog/data/models/dto/address/create/city_and_village_tracts_dto.dart';
import 'package:dlog/data/models/dto/address/create/region_dto.dart';
import 'package:dlog/data/models/dto/address/create/township_dto.dart';
import 'package:dlog/data/models/dto/address/create/village_and_wards_dto.dart';

abstract class ProfileApiRepository {
  Future<DataState<List<RegionDTO>>> region(
    String search,
  );

  Future<DataState<List<TownshipDTO>>> township(
    String search,
    String regionId,
  );

  Future<DataState<List<CityAndVillageTractsDTO>>> cityAndVillageTracts(
    String search,
    String townshipId,
  );

  Future<DataState<List<VillageAndWardsDTO>>> villageAndWards(
    String search,
    String cityAndVillageTractsId,
  );
}
