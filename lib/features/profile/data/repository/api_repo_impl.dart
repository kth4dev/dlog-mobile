import 'package:dlog/core/resource/datastate/data_state.dart';
import 'package:dlog/core/resource/datastate/network_response.dart';
import 'package:dlog/core/resource/datastate/safe_api_call.dart';
import 'package:dlog/data/models/dto/address/create/city_dto.dart';
import 'package:dlog/data/models/dto/address/create/district_dto.dart';
import 'package:dlog/data/models/dto/address/create/region_dto.dart';
import 'package:dlog/data/models/dto/address/create/township_dto.dart';
import 'package:dlog/features/profile/data/remote/address/address_service.dart';
import 'package:dlog/features/profile/domain/repository/api_repo.dart';

class AddressAPIRepositoryImpl implements AddressApiRepository {
  final AddressService service;

  AddressAPIRepositoryImpl({required this.service});

  @override
  Future<DataState<List<RegionDTO>>> region(String token) async {
    final response = await safeApiCall<List<RegionDTO>>(
      () => service.region(
          token:
              "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjdXN0b21lcl9udW1iZXIiOiJETVNNQzAwMDAxIiwiaWF0IjoxNzE4OTU4MDUxLCJleHAiOjE3MjAxNjc2NTF9.2tsHX04v8E592ijyc_eg_luzgzaeSdKRQYj7QZwobF0"),
    );
    switch (response) {
      case NetworkSuccess<List<RegionDTO>>():
        return DataSuccess(response.data);
      case NetworkFailed<List<RegionDTO>>():
        return DataFailed(message: response.message, type: response.type);
    }
  }

  @override
  Future<DataState<List<DistrictDTO>>> district(
      String token, String regionPostalCode) async {
    final response = await safeApiCall<List<DistrictDTO>>(
      () => service.district(
          token:
              "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjdXN0b21lcl9udW1iZXIiOiJETVNNQzAwMDAxIiwiaWF0IjoxNzE4OTU4MDUxLCJleHAiOjE3MjAxNjc2NTF9.2tsHX04v8E592ijyc_eg_luzgzaeSdKRQYj7QZwobF0",
          regionPostalCode: "2134"),
    );
    switch (response) {
      case NetworkSuccess<List<DistrictDTO>>():
        return DataSuccess(response.data);
      case NetworkFailed<List<DistrictDTO>>():
        return DataFailed(
          message: response.message,
          type: response.type,
        );
    }
  }

  @override
  Future<DataState<List<TownshipDTO>>> township(
      String token, String districtPostalCode) async {
    final response = await safeApiCall<List<TownshipDTO>>(
      () => service.township(
        token:
            "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjdXN0b21lcl9udW1iZXIiOiJETVNNQzAwMDAxIiwiaWF0IjoxNzE4OTU4MDUxLCJleHAiOjE3MjAxNjc2NTF9.2tsHX04v8E592ijyc_eg_luzgzaeSdKRQYj7QZwobF0",
        districtPostalCode: "2134",
      ),
    );
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
  Future<DataState<List<CityDTO>>> city(String token, String regionPostalCode,
      String districtPostalCode, String townshipPostalCode) async {
    final response = await safeApiCall<List<CityDTO>>(
      () => service.city(
        token:
            "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjdXN0b21lcl9udW1iZXIiOiJETVNNQzAwMDAxIiwiaWF0IjoxNzE4OTU4MDUxLCJleHAiOjE3MjAxNjc2NTF9.2tsHX04v8E592ijyc_eg_luzgzaeSdKRQYj7QZwobF0",
        regionPostalCode: "23455",
        districtPostalCode: "23455",
        townshipPostalCode: "34555",
      ),
    );
    switch (response) {
      case NetworkSuccess<List<CityDTO>>():
        return DataSuccess(response.data);
      case NetworkFailed<List<CityDTO>>():
        return DataFailed(
          message: response.message,
          type: response.type,
        );
    }
  }
}
