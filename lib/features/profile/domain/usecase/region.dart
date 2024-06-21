import 'package:dlog/core/resource/datastate/data_state.dart';
import 'package:dlog/core/resource/usecase/usecase.dart';
import 'package:dlog/data/models/dto/address/create/region_dto.dart';
import 'package:dlog/features/profile/domain/repository/api_repo.dart';

class RegionUseCase extends UseCase<DataState<List<RegionDTO>>, String> {
  final AddressApiRepository apiRepo;

  RegionUseCase(this.apiRepo);

  @override
  Future<DataState<List<RegionDTO>>> call({String? params}) async {
    final response = await apiRepo.region(params!);

    switch (response) {
      case DataSuccess<List<RegionDTO>>():
        return DataSuccess(response.data!);

      case DataFailed<List<RegionDTO>>():
        return DataFailed(message: response.message, type: response.type);
    }
  }
}