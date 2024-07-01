import 'package:dlog/core/resource/datastate/data_state.dart';
import 'package:dlog/core/resource/usecase/usecase.dart';
import 'package:dlog/data/models/dto/address/create/township_dto.dart';
import 'package:dlog/features/profile/data/model/address/township.dart';
import 'package:dlog/features/profile/domain/repository/api_repo.dart';

class TownshipUseCase extends UseCase<DataState<List<TownshipDTO>>, GetTownshipParams> {
  final ProfileApiRepository apiRepo;

  TownshipUseCase(this.apiRepo);

  @override
  Future<DataState<List<TownshipDTO>>> call({GetTownshipParams? params}) async {
    final response = await apiRepo.township(params?.search ?? "", params!.regionId);

    switch (response) {
      case DataSuccess<List<TownshipDTO>>():
        return DataSuccess(response.data!);

      case DataFailed<List<TownshipDTO>>():
        return DataFailed(message: response.message, type: response.type);
    }
  }
}