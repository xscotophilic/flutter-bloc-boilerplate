import 'config.dart';

class AppConfig {
  static late final Config _config;
  static Config get config => _config;

  AppConfig(Config configArg) {
    _config = configArg;
  }
}
