import '../../config/app_config.dart';
import 'console_log.dart';
import 'local_log.dart';

class Log {
  static final bool _writeConsoleLog = enableConsoleLog;
  static final bool _writeLocalLog = enableLocalLog;

  static void log(String text, [data]) {
    if (_writeConsoleLog) Console.log(text, data);
    if (_writeLocalLog) LocalLog.info(text);
  }

  static void info(String text, [data]) {
    if (_writeConsoleLog) Console.info(text, data);
    if (_writeLocalLog) LocalLog.info(text);
  }

  static void success(String text, [data]) {
    if (_writeConsoleLog) Console.success(text, data);
    if (_writeLocalLog) LocalLog.success(text);
  }

  static void warning(String text, [data]) {
    if (_writeConsoleLog) Console.warning(text, data);
    if (_writeLocalLog) LocalLog.warning(text);
  }

  static void danger(String text, [data]) {
    if (_writeConsoleLog) Console.danger(text, data);
    if (_writeLocalLog) LocalLog.danger(text, stack: data);
  }
}
