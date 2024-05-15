import 'package:dlog/di/injection_container.dart';
import 'package:logger/logger.dart';

Future<void> provideCore() async {
  locator.registerSingleton(Logger());
}
