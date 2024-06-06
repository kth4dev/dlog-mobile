import 'package:dlog/data/app-pref/app_data_store.dart';
import 'package:dlog/data/localization/app_locale.dart';
import 'package:dlog/data/localization/app_localization_manager.dart';
import 'package:dlog/features/app/domain/repository/app_repo.dart';

class AppRepositoryImpl extends AppRepository {
  final AppLocalizationManager appLocalizationManager;
  final AppDataStore appDs;

  AppRepositoryImpl({
    required this.appLocalizationManager,
    required this.appDs,
  });

  @override
  Future<void> translateLocale(String locale) async {
    await appLocalizationManager.translate(locale);
  }

  @override
  Future<void> saveLocale(int value) async {
    await appDs.setLocale(value);
  }

  @override
  DLogLocale getLocale() {
    int locale = appDs.getLocale();
    return DLogLocale.fromValue(locale);
  }
}
