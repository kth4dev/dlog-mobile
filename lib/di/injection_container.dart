import 'package:get_it/get_it.dart';
import 'features/features.dart';

final sl = GetIt.instance;

Future<void> setUpServiceLocators() async {
  await provideCore();
  await provideMain();
}
