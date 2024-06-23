import 'package:dlog/core/resource/datastate/data_state.dart';
import 'package:dlog/data/models/dto/address/create/city_dto.dart';
import 'package:dlog/data/models/dto/address/create/district_dto.dart';
import 'package:dlog/data/models/dto/address/create/region_dto.dart';
import 'package:dlog/data/models/dto/address/create/township_dto.dart';

abstract class AddressApiRepository {
  Future<DataState<List<RegionDTO>>> region(
    String token,
  );

  Future<DataState<List<DistrictDTO>>> district(
    String token,
    String regionPostalCode,
  );

  Future<DataState<List<TownshipDTO>>> township(
    String token,
    String districtPostalCode,
  );

  Future<DataState<List<CityDTO>>> city(
    String token,
    String regionPostalCode,
    String districtPostalCode,
    String townshipPostalCode,
  );
}
