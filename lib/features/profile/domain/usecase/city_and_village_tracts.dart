import 'package:dlog/core/resource/datastate/data_state.dart';
import 'package:dlog/core/resource/usecase/usecase.dart';
import 'package:dlog/data/models/dto/address/create/city_and_village_tracts_dto.dart';
import 'package:dlog/features/profile/data/model/address/city_and_village_tracts.dart';
import 'package:dlog/features/profile/domain/repository/api_repo.dart';

class CityAndVillageTractsUseCase extends UseCase<DataState<List<CityAndVillageTractsDTO>>, GetCityAndVillageTractsParams> {
  final ProfileApiRepository apiRepo;

  CityAndVillageTractsUseCase(this.apiRepo);

  @override
  Future<DataState<List<CityAndVillageTractsDTO>>> call({GetCityAndVillageTractsParams? params}) async {
    final response = await apiRepo.cityAndVillageTracts(params?.search ?? "", params!.townshipId);

    switch (response) {
      case DataSuccess<List<CityAndVillageTractsDTO>>():
        return DataSuccess(response.data!);

      case DataFailed<List<CityAndVillageTractsDTO>>():
        return DataFailed(message: response.message, type: response.type);
    }
  }
}