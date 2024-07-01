import 'package:dlog/core/resource/datastate/data_state.dart';
import 'package:dlog/core/resource/datastate/network_response.dart';
import 'package:dlog/core/resource/datastate/safe_api_call.dart';
import 'package:dlog/data/models/dto/address/create/city_and_village_tracts_dto.dart';
import 'package:dlog/data/models/dto/address/create/region_dto.dart';
import 'package:dlog/data/models/dto/address/create/township_dto.dart';
import 'package:dlog/data/models/dto/address/create/village_and_wards_dto.dart';
import 'package:dlog/features/profile/data/remote/profile_service.dart';
import 'package:dlog/features/profile/domain/repository/api_repo.dart';

class ProfileAPIRepositoryImpl implements ProfileApiRepository {
  final ProfileService service;

  ProfileAPIRepositoryImpl({required this.service});

  @override
  Future<DataState<List<RegionDTO>>> region(String search) async {
    final response = await safeApiCall<List<RegionDTO>>(
        () => service.region(search: search));
    switch (response) {
      case NetworkSuccess<List<RegionDTO>>():
        return DataSuccess(response.data);
      case NetworkFailed<List<RegionDTO>>():
        return DataFailed(message: response.message, type: response.type);
    }
  }

  @override
  Future<DataState<List<TownshipDTO>>> township(
      String search, String regionId) async {
    final response = await safeApiCall<List<TownshipDTO>>(
        () => service.township(search: search, regionId: regionId));
    switch (response) {
      case NetworkSuccess<List<TownshipDTO>>():
        return DataSuccess(response.data);
      case NetworkFailed<List<TownshipDTO>>():
        return DataFailed(
          message: response.message,
          type: response.type,
        );
    }
  }

  @override
  Future<DataState<List<CityAndVillageTractsDTO>>> cityAndVillageTracts(
      String search, String townshipId) async {
    final response = await safeApiCall<List<CityAndVillageTractsDTO>>(() =>
        service.cityAndVillageTracts(search: search, townshipId: townshipId));
    switch (response) {
      case NetworkSuccess<List<CityAndVillageTractsDTO>>():
        return DataSuccess(response.data);
      case NetworkFailed<List<CityAndVillageTractsDTO>>():
        return DataFailed(
          message: response.message,
          type: response.type,
        );
    }
  }

  @override
  Future<DataState<List<VillageAndWardsDTO>>> villageAndWards(
      String search, String cityAndVillageTractsId) async{
    final response = await safeApiCall<List<VillageAndWardsDTO>>(() =>
        service.villageAndWards(search: search, cityAndVillageTractsId: cityAndVillageTractsId));
    switch (response) {
      case NetworkSuccess<List<VillageAndWardsDTO>>():
        return DataSuccess(response.data);
      case NetworkFailed<List<VillageAndWardsDTO>>():
        return DataFailed(
          message: response.message,
          type: response.type,
        );
    }
  }
}
