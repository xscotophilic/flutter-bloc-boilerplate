# Log module (_internal directory)

[[toc]]

## About

::: danger
We will use Log class for logs. We will never use ConsoleLog class or LocalLog class directly. The Log class will decide which log class to use according to the enable log variables. Check
:::

The directory `lib/_internal/log` takes care of logging. As of now there are two types of logging: `console` and `local`. `console` logs are printed in the console. `local` logs are stored in a file. The file is created using [`universal_file`](./universalfile.md) package.

We have 4 types of logs: `info`, `success`, `warning`, and `error`. Each type of log has a different color. The color of the log is decided by the type of log. Info logs are printed in blue color, success logs are printed in green color, warning logs are printed in yellow color, and error logs are printed in red color.

## Usage

### Enable/Disable logs

<br/>

#### enableConsoleLog

> Check [`AppConfig`](./envs.md) documentation.
`AppConfig.config.enableConsoleLog` variable enables console logging. It takes a boolean value as an argument. If the value is `true`, then console logging is enabled. If the value is `false`, then console logging is disabled.

#### enableLocalLog

> Check [`AppConfig`](./envs.md) documentation. 
`AppConfig.config.enableLocalLog` variable enables local logging. It takes a boolean value as an argument. If the value is `true`, then local logging is enabled. If the value is `false`, then local logging is disabled.

#### Enabling logs by hardcoding values

> You can enable logs by hardcoding the value of `_writeConsoleLog` and `_writeLocalLog` variables in `_internal/log/log.dart` file.

```dart
// _internal/log/log.dart
...

class Log {
  static final bool _writeConsoleLog = true;
  static final bool _writeLocalLog = true;
  ...
}
```

### Import the module in your dart file

```dart
import 'package:template/_internal/log/log.dart';
```

### How to Log

```dart
Log.info('This is an info log');
Log.success('This is a success log');
Log.warning('This is a warning log');
Log.error('This is an error log');
```

### TODOs

### Directory Structure

| **Directory Or File** | **Description** |
| --------- | ----------- |
| root/lib/_internal/log | *Contains the log module.* |
| root/lib/_internal/log/log.dart | *Contains the log class.* |
| root/lib/_internal/log/console_log.dart | *Contains the console log class.* |
| root/lib/_internal/log/local_log.dart | *Contains the local log class.* |
| root/lib/_internal/log/readme.md | *Contains the documentation for log module.* |

### About the files

`log.dart`

> Responsible for logging. It decides which log class to use according to the enable log variables.

`console_log.dart`

> Responsible for console logging. We never call this class directly. We call the Log class.

`local_log.dart`

> Responsible for local logging. We never call this class directly. We call the Log class.
