import 'package:dlog/data/models/vo/address/create/city_and_village_tracts_vo.dart';
import 'package:dlog/data/models/vo/address/create/region_vo.dart';
import 'package:dlog/data/models/vo/address/create/township_vo.dart';
import 'package:dlog/data/models/vo/address/create/village_and_wards_vo.dart';

class AddressVO {
  final List<RegionVo>? regions;
  final List<TownshipVo>? townships;
  final List<CityAndVillageTractsVo>? cities;
  final List<VillageAndWardsVo>? villages;

  const AddressVO({
    this.townships,
    this.cities,
    this.villages,
    this.regions,
  });
}
