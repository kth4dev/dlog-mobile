import 'package:dlog/data/di/injection_container.dart';
import 'package:logger/logger.dart';


class AppLogs {
  static final _logger = sl<Logger>();

  static void info(String message) {
    _logger.i(message);
  }

  static void trace(String message) {
    _logger.t(message);
  }

  static void debug(String message) {
    _logger.d(message);
  }

  static void warning(String message) {
    _logger.w(message);
  }

  static void error(String message) {
    _logger.e(message);
  }
}
