import '../../config/app_config.dart';
import 'console_log.dart';
import 'local_log.dart';

class Log {
  static final bool _writeConsoleLog = enableConsoleLog;
  static final bool _writeLocalLog = enableLocalLog;

  static void log(
    String text, {
    data,
    enableConsoleLogArg = true,
    enableLocalLogArg = true,
  }) {
    if (_writeConsoleLog && enableConsoleLogArg) Console.log(text, data);
    if (_writeLocalLog && enableLocalLogArg) LocalLog.info(text);
  }

  static void info(
    String text, {
    data,
    enableConsoleLogArg = true,
    enableLocalLogArg = true,
  }) {
    if (_writeConsoleLog && enableConsoleLogArg) Console.info(text, data);
    if (_writeLocalLog && enableLocalLogArg) LocalLog.info(text);
  }

  static void success(
    String text, {
    data,
    enableConsoleLogArg = true,
    enableLocalLogArg = true,
  }) {
    if (_writeConsoleLog && enableConsoleLogArg) Console.success(text, data);
    if (_writeLocalLog && enableLocalLogArg) LocalLog.success(text);
  }

  static void warning(
    String text, {
    data,
    enableConsoleLogArg = true,
    enableLocalLogArg = true,
  }) {
    if (_writeConsoleLog && enableConsoleLogArg) Console.warning(text, data);
    if (_writeLocalLog && enableLocalLogArg) LocalLog.warning(text);
  }

  static void danger(
    String text, {
    data,
    enableConsoleLogArg = true,
    enableLocalLogArg = true,
  }) {
    if (_writeConsoleLog && enableConsoleLogArg) Console.danger(text, data);
    if (_writeLocalLog && enableLocalLogArg) LocalLog.danger(text, stack: data);
  }
}
