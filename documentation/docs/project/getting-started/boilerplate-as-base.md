# Use boilerplate as base and add new files in this project only

[[toc]]

## Step 1: Change package name (Optional)

### Android

- Navigate to the `android > app > src > main > AndroidManifest.xml`, `android > app > src > debug > AndroidManifest.xml` and `android > app > src > profile > AndroidManifest.xml` files and update the package value to the new one.

```xml
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.template">
```

- Open the `android > app > build.gradle` file. Find the `defaultConfig` section and update the `applicationId` to the new package name.
```groovy
defaultConfig {
    // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
    applicationId "com.example.template"
    ...
}
```

- Now, navigate to the `android > app > src > main > kotlin > MainActivity.kt` and change the package name in the first line.
```kotlin
package com.example.template
```

- Change the directory structure in  `android > app > src > main > kotlin` as per the new package name. For example, if you change the package name from com.example.oldcompany to com.example.newcompany, make sure to refactor/rename the oldcompany directory to newcompany.
<img src='../../assets/packagename/android_dir_structure.png'>

### iOS

-  Open your Flutter project in Xcode > Click on the `Runner` in the left side menu > Select the `Build Settings` tab > Go to `packaging` section > Under the `Product bundle` section, find the Bundle Identifier and change it's values.

<img src='../../assets/packagename/ios_bundle_identifier.gif'>

## Step 2: Change labels (Optional)

### Android

- Change `APP_DISPLAY_NAME` (for dev, stg and prod) values in `android` section of `android/app/build.gradle`
```groovy
    production {
        dimension "app"
        resValue "string", "APP_DISPLAY_NAME", "Your app name"            
        applicationIdSuffix ""
    }
```

### iOS

- change user defined variable APP_DISPLAY_NAME values for dev, stg and prod
<img src='../../assets/flavors/iOS/ios_app_display_name.png'>

## Step 3: Run app

environment | command
--- | --- 
Development | flutter run --target lib/main_development.dart --flavor development
Staging | flutter run --target lib/main_staging.dart --flavor staging
Production | flutter run --target lib/main_production.dart --flavor production
