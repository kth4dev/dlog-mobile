import 'package:dlog/core/resource/usecase/usecase.dart';
import 'package:dlog/data/localization/app_locale.dart';
import 'package:dlog/features/app/domain/repository/app_repo.dart';

class SaveLocaleUseCase extends UseCase<void, DLogLocale> {
  final AppRepository appRepo;

  SaveLocaleUseCase({required this.appRepo});

  @override
  Future<void> call({DLogLocale? params}) async {
    await appRepo.translateLocale(params!.name);
  }
}
