import 'package:dlog/core/resource/usecase/usecase.dart';
import 'package:dlog/data/localization/app_locale.dart';
import 'package:dlog/features/app/domain/repository/app_repo.dart';

class GetLocaleUseCase extends UseCase<DLogLocale, void> {
  final AppRepository appRepo;

  GetLocaleUseCase({required this.appRepo});

  @override
  Future<DLogLocale> call({params}) async {
    return appRepo.getLocale();
  }
}
