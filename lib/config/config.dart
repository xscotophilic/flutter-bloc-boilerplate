enum EnvType { development, staging, production }

class Config {
  final String appTitle;
  final String appTitleShort;
  final EnvType envType;
  final String version;
  final String build;
  final String firebaseAnalyticsId;
  final bool enableConsoleLog;
  final bool enableLocalLog;
  final bool enableCloudLog;

  const Config({
    required this.appTitle,
    required this.appTitleShort,
    required this.envType,
    required this.version,
    required this.build,
    required this.firebaseAnalyticsId,
    this.enableConsoleLog = true,
    this.enableLocalLog = false,
    this.enableCloudLog = false,
  });

  Config copyWith({
    String? appTitle,
    String? appTitleShort,
    EnvType? envType,
    String? version,
    String? build,
    String? firebaseAnalyticsId,
    bool? enableConsoleLog,
    bool? enableLocalLog,
    bool? enableCloudLog,
  }) {
    return Config(
      appTitle: appTitle ?? this.appTitle,
      appTitleShort: appTitleShort ?? this.appTitleShort,
      envType: envType ?? this.envType,
      version: version ?? this.version,
      build: build ?? this.build,
      firebaseAnalyticsId: firebaseAnalyticsId ?? this.firebaseAnalyticsId,
      enableConsoleLog: enableConsoleLog ?? this.enableConsoleLog,
      enableLocalLog: enableLocalLog ?? this.enableLocalLog,
      enableCloudLog: enableCloudLog ?? this.enableCloudLog,
    );
  }
}

const Config defaultConfig = Config(
  appTitle: 'App',
  appTitleShort: 'App',
  envType: EnvType.development,
  version: '1.0.0',
  build: '2022102901',
  firebaseAnalyticsId: '',
  enableConsoleLog: true,
  enableLocalLog: true,
  enableCloudLog: true,
);

final Config developmentConfig = defaultConfig.copyWith(
  appTitle: 'development',
  envType: EnvType.development,
);

final Config stagingConfig = defaultConfig.copyWith(
  appTitle: 'staging',
  envType: EnvType.staging,
  enableCloudLog: false,
);

final Config productionConfig = defaultConfig.copyWith(
  appTitle: 'production',
  envType: EnvType.production,
  enableConsoleLog: false,
  enableLocalLog: false,
  enableCloudLog: true,
);
