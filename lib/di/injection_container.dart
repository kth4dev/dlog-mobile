import 'package:dlog/di/features/core.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> setUpServiceLocators() async {
  await provideCore();
}