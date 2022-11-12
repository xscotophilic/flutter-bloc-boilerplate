# Setup Flavors

[[toc]]

::: info
Flavors Documentation here is only for Android and iOS, if you wish to extend it, feel free to do so.
:::

## Android
- Add below config in `android` section of `android/app/build.gradle`
```groovy
flavorDimensions "app"
productFlavors {
    development {
        dimension "app"
        resValue "string", "APP_DISPLAY_NAME", "dev APP_DISPLAY_NAME"
        applicationIdSuffix ".dev"
    }
    staging {
        dimension "app"
        resValue "string", "APP_DISPLAY_NAME", "stg APP_DISPLAY_NAME"            
        applicationIdSuffix ".stg"
    }
    production {
        dimension "app"
        resValue "string", "APP_DISPLAY_NAME", "prod APP_DISPLAY_NAME"            
        applicationIdSuffix ""
    }
}
```
- replace `android:label` in `application` tag in `android/app/src/main/AndroidManifest.xml`
```xml
    android:label="@string/APP_DISPLAY_NAME"
```

## iOS
- add development, staging schema on runner project in xcode and edit name of runner schema to production schema.

- add configs for development, staging in configuration in info of runner (project) in xcode.
<img src='../../assets/flavors/iOS/ios_config.png'>

- Edit development, staging and production schema configurations and set suitable configuration (which we did add in previous step.)

- In runner(target) > go to build settings > search for bundle identifier and set accordingly.
<img src='../../assets/flavors/iOS/ios_bundle_identifier.png'>

- add user defined variable APP_DISPLAY_NAME
<img src='../../assets/flavors/iOS/ios_app_display_name.png'>

- In info.plist add
```xml
<key>CFBundleDisplayName</key>
<string>$(APP_DISPLAY_NAME)</string>
```

## VS Code config (.vscode/settings.json)

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