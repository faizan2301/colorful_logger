# Colorful Logger

A simple and lightweight Dart package for printing colorful logs in the terminal.  
With `colorful_logger`, you can easily differentiate between different levels of logs: `info`, `warning`, and `error`—all displayed with distinct colors.

---

## Features

- Color-coded log levels:
  - **Info** logs are displayed in green.
  - **Warning** logs are displayed in yellow.
  - **Error** logs are displayed in red.
- Time-stamped logs for better debugging.
- Simple and intuitive API.

---

## Installation

Add the following dependency to your `pubspec.yaml`:

```yaml
dependencies:
  colorful_logger: ^0.0.1
```

Run the command:

```bash
flutter pub get
```

---

## Usage

To use `colorful_logger` in your Flutter or Dart project:

1. Import the package:

```dart
import 'package:colorful_logger/colorful_logger.dart';
```

2. Start logging:

```dart
void main() {
  Logger.info('Application started successfully.');
  Logger.warning('This is a warning log.');
  Logger.error('An error occurred.');
}
```

### Example Output
In the terminal, the logs appear with timestamps and different colors:

```
MyApp [12:34:56] INFO: Application started successfully.
MyApp [12:34:57] WARNING: This is a warning log.
MyApp [12:34:58] ERROR: An error occurred.
```

> **Note:** The colors are visible only in terminal outputs that support ANSI escape codes.

---

## API Reference

### `Logger`
`Logger` is the main class for logging messages.

| Method             | Description                          |
|--------------------|--------------------------------------|
| `Logger.info()`    | Logs an informational message.       |
| `Logger.warning()` | Logs a warning message.              |
| `Logger.error()`   | Logs an error message.               |

#### Example

```dart
Logger.info('This is an informational message.');
Logger.warning('This is a warning message.');
Logger.error('This is an error message.');
```

---

## Example Project

An example usage is available in the `example/` directory of the package. You can run it as follows:

```bash
dart example/example.dart
```

---

## Contributions

Contributions are welcome!  
Feel free to open issues and submit pull requests on [GitHub](https://github.com/faizan2301/colorful_logger).

---

## License

This package is licensed under the MIT License. See the [LICENSE](./LICENSE) file for details.

---

## Changelog

All notable changes are documented in [CHANGELOG.md](./CHANGELOG.md).

