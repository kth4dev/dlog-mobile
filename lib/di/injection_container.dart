import 'package:dlog/di/features/core.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

Future<void> setUpServiceLocators() async {
  await provideCore();
}