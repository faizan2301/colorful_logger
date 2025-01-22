import 'package:colorful_logger/colorful_logger.dart';
import 'package:test/test.dart';

void main() {
  group('Logger Tests', () {
    test('Log info message', () {
      expect(() => Logger.info('This is a test info log'), returnsNormally);
    });

    test('Log warning message', () {
      expect(
          () => Logger.warning('This is a test warning log'), returnsNormally);
    });

    test('Log error message', () {
      expect(() => Logger.error('This is a test error log'), returnsNormally);
    });

    test('Log with empty message', () {
      expect(() => Logger.info(''), returnsNormally);
    });

    test('Ensure no exception on null-like message', () {
      expect(() => Logger.info('null'), returnsNormally);
    });
  });
}
