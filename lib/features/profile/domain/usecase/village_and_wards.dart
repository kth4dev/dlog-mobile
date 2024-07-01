import 'package:dlog/core/resource/datastate/data_state.dart';
import 'package:dlog/core/resource/usecase/usecase.dart';
import 'package:dlog/data/models/dto/address/create/village_and_wards_dto.dart';
import 'package:dlog/features/profile/data/model/address/village_and_wards.dart';
import 'package:dlog/features/profile/domain/repository/api_repo.dart';

class VillageAndWardsUseCase extends UseCase<DataState<List<VillageAndWardsDTO>>, GetVillageAndWardsParams> {
  final ProfileApiRepository apiRepo;

  VillageAndWardsUseCase(this.apiRepo);

  @override
  Future<DataState<List<VillageAndWardsDTO>>> call({GetVillageAndWardsParams? params}) async {
    final response = await apiRepo.villageAndWards(params?.search ?? "", params!.cityAndVillageTractsId);

    switch (response) {
      case DataSuccess<List<VillageAndWardsDTO>>():
        return DataSuccess(response.data!);

      case DataFailed<List<VillageAndWardsDTO>>():
        return DataFailed(message: response.message, type: response.type);
    }
  }
}