import 'package:logger/logger.dart';

void logError(String message) {
  Logger().e(message);
}

void logDebug(String message) {
  Logger().d(message);
}

void logTrace(String message) {
  Logger().t(message);
}
