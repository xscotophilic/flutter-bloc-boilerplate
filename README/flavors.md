- Add below config in `android` section of `android/app/build.gradle`
```gradle
productFlavors {
    development {
        dimension "app"
        resValue "string", "app_name", "Development_Gradle"
        applicationIdSuffix ".dev"
    }
    staging {
        dimension "app"
        resValue "string", "app_name", "Staging_Gradle"            
        applicationIdSuffix ".stg"
    }
    production {
        dimension "app"
        resValue "string", "app_name", "Production_Gradle"            
        applicationIdSuffix ""

    }
}
```
- Add below config in `application` tag in `AndroidManifest.xml`
```xml
    android:label="@string/APP_DISPLAY_NAME"
```

## iOS

- add development, staging schema on runner project in xcode and edit name of runner schema to production schema.

- add configs for development, staging in configuration in info of runner (project) in xcode.
<img src='./readme assets/ios_config.png'>

- Edit development, staging and production schema configurations and set suitable configuration (which we did add in previous step.)

- In runner(target) > go to build settings > search for bundle identifier and set accordingly.
<img src='./readme assets/ios_bundle_identifier.png'>

- add user defined variable APP_DISPLAY_NAME
<img src='./readme assets/ios_app_display_name.png'>

- In info.plist add
```plist
<key>CFBundleDisplayName</key>
<string>$(APP_DISPLAY_NAME)</string>
```

# Run app in different environments

environment | command
--- | --- 
Development | flutter run --target lib/main_development.dart --flavor development
Staging | flutter run --target lib/main_staging.dart --flavor staging
Production | flutter run --target lib/main_production.dart --flavor production

## VS Code config

- create .vscode directory, inside that create launch.json with content given below

```json
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Launch Development",
            "request": "launch",
            "type": "dart",
            "args": [
                "--flavor",
                "development",
                "--target",
                "lib/main_development.dart"
            ]
        },
        {
            "name": "Launch Staging",
            "request": "launch",
            "type": "dart",
            "args": [
                "--flavor",
                "staging",
                "--target",
                "lib/main_staging.dart"
            ]
        },
        {
            "name": "Launch Production",
            "request": "launch",
            "type": "dart",
            "args": [
                "--flavor",
                "production",
                "--target",
                "lib/main_production.dart"
            ]
        }
    ]
}
```