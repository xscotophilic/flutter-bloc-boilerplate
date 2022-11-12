# Use boilerplate files in new project

[[toc]]

## Step 1. Create a new flutter project
```shell
flutter create --org com.yourdomain your_app_name
```

## Step 2. Copy the lib and packages directory to your project

## Step 3. Add below dependencies in pubspec.yaml

```yaml
  # Date and Time
  intl: ^0.17.0
  # Console Log
  colorize: ^3.0.0
  # State management
  equatable: ^2.0.5
  flutter_bloc: ^8.1.1
  # Local APIs
  theme_api:
    path: packages/theme_api
  universal_file:
    path: packages/universal_file
```

## Step 4. [Setup Flavors](../basic-config/flavors)

## Step 5. Run app

environment | command
--- | --- 
Development | flutter run --target lib/main_development.dart --flavor development
Staging | flutter run --target lib/main_staging.dart --flavor staging
Production | flutter run --target lib/main_production.dart --flavor production
