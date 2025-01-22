library colorful_logger;

/// Enum to define log levels
enum LogLevel { info, warning, error }

/// A simple logger class to print colorful logs
class Logger {
  static const String _appName =
      'MyApp'; // Optionally, allow customizing this in the future.

  static void info(String message) {
    _log(message, LogLevel.info);
  }

  static void warning(String message) {
    _log(message, LogLevel.warning);
  }

  static void error(String message) {
    _log(message, LogLevel.error);
  }

  static void _log(String message, LogLevel level) {
    final now = DateTime.now();
    final timeString =
        "${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')}";

    String colorCode;
    switch (level) {
      case LogLevel.info:
        colorCode = '\x1B[32m'; // Green
        break;
      case LogLevel.warning:
        colorCode = '\x1B[33m'; // Yellow
        break;
      case LogLevel.error:
        colorCode = '\x1B[31m'; // Red
        break;
    }

    print(
        '$_appName $colorCode[$timeString] ${level.name.toUpperCase()}: $message\x1B[0m');
  }
}
