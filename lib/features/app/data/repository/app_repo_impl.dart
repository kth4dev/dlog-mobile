import 'package:dlog/data/localization/app_localization_manager.dart';
import 'package:dlog/features/app/domain/repository/app_repo.dart';

class AppRepositoryImpl extends AppRepository {
  final AppLocalizationManager appLocalizationManager;

  AppRepositoryImpl({required this.appLocalizationManager});

  @override
  Future<void> translateLocale(String locale) async{
    await appLocalizationManager.translate(locale);
  }
}
