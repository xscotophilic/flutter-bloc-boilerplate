# Environments, App Config, & Flavors

[[toc]]

There are 3 environments in the project: `development`, `staging`, and `production`. The environment is set using the `main_development.dart`, `main_staging.dart`, and `main_production.dart` files. The environment is used to set the environment specific variables. Depending on the environment, the app will use different environment specific variables from [AppConfig](#_3-app-config). We use different [flavors](../basic-config/flavors.md) to build the app for different environments.

`Environment, App Config, & Flavors are closely related to each other. It is important to understand the relationship between them.`

## 1. Environments

::: tip Targeting a specific environment

We need to specify target file to run the app. This is because we need to set the environment variables (AppConfig) for each environment. We can't set the environment variables in the `main.dart` file because it doesn't exist in the build process.

:::

For using development environment, run the following command:

```bash
flutter run --target lib/main_development.dart
```

For using staging environment, run the following command:

```bash
flutter run --target lib/main_development.dart
```

For using production environment, run the following command:

```bash
flutter run --target lib/main_development.dart
```

::: danger Error
Running above commands will throw an error because we haven't set the flavor. We need to set the flavor to build the app for the specific environment. So to run the app we need to specify the flavor as well.
:::

## 2. Flavors [(Check details)](../basic-config/flavors.md)

For using development flavour, run the following command:

```bash
flutter run --flavor development
```

For using staging flavour, run the following command:

```bash
flutter run --flavor staging
```

For using production flavour, run the following command:

```bash
flutter run --flavor production
```

::: danger Error
Running above commands will throw an error because we haven't set the target file and default target file `lib/main.dart` does not exist. We need to set the flavor to build the app for the specific environment. So to run the app we need to specify the target file also.
:::

## 3. App Config

The AppConfig module resides in `lib/_internal/config`. It contains the environment specific variables. 

::: danger
Developer should not use `Config` class directly to access the environment variables. `AppConfig` class has the `config` property which is used to access the environment specific variables.
:::

### Directory Structure

| **Directory Or File** | **Description** |
| --------- | ----------- |
| lib/_internal/config | *Contains the AppConfig.* |
| lib/_internal/config/config.dart | *Contains the Config class. It also contains defaultConfig, developmentConfig, stagingConfig, and productionConfig.* |
| lib/_internal/config/app_config.dart | *Contains the AppConfig class.*  |

### Config Class

As of now, the `Config` class contains the following variables:
appTitle, appTitleShort, envType, version, build, firebaseAnalyticsId, enableConsoleLog, enableLocalLog, enableCloudLog

| **Variable name** | **Description** |
| --------- | ----------- |
| appTitle | *Full app title.* |
| appTitleShort | *Short app title.* |
| envType | *Environment type. It can be development, staging, or production.* |
| version | *App version.* |
| build | *App build number.* |
| firebaseAnalyticsId | *Firebase analytics id.* |
| enableConsoleLog | *To Enable or Disable console log.* |
| enableLocalLog | *To Enable or Disable local log.* |
| enableCloudLog | *To Enable or Disable cloud log.* |

### AppConfig Class

The `AppConfig` class contains the config property. Which is set to the defaultConfig, developmentConfig, stagingConfig, or productionConfig depending on the environment. Different main files set the AppConfig accordingly.

#### Initialization

The `Config` class is initialized in the `config.dart` file.

```dart
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
```

We can use `copyWith` method to copy the config and change the values.

```dart
final Config developmentConfig = defaultConfig.copyWith(
  appTitle: 'development',
  envType: EnvType.development,
);
```

The `AppConfig` class is initialized in the `main_development.dart`, `main_staging.dart`, and `main_production.dart` files.

e.g. For development environment, the `AppConfig` class is initialized
```dart
AppConfig(developmentConfig);
```