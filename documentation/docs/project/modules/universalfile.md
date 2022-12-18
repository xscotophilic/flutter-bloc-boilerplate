# Universal file

[[toc]]

## About

The universal file is a package that allows you to create, read, write, update a local file irrespective of plateform. The file is created in the `ApplicationSupportDirectory`. For web, the file is stored using the `shared_preferences`.

## Usage

### Import the package in pubspec.yaml (if not already done `OR` is not there in the dependencies)

```yaml
dependencies:
  universal_file:
    path: packages/universal_file
```

### Import the package in your dart file

```dart
import 'package:universal_file/universal_file.dart';
```

### Create a file

No need to create a file, it is created automatically.

```dart
UniversalFile file = UniversalFile('my_file.txt');
```

### Write in a file

```dart
final append = true;
await file.write('Hello world', append);
```

### Read a file

```dart
String content = await file.read();
```

### TODOs

Delete a file

### Directory Structure

| **Directory Or File** | **Description** |
| --- | --- |
| root/packages/universal_file | *Contains the source code of the package.* |
| root/packages/universal_file/test | *Contains the tests.* |
| root/packages/universal_file/lib/universal_file.dart | *Exports the package.* |
| root/packages/universal_file/lib/src | *Contains the source code of the package.* |
| root/packages/universal_file/lib/src/universal_file.dart | *Contains the abstract class UniversalFile. And depending on the platform, the class web_file.dart or io_file.dart is imported.* |
| root/packages/universal_file/lib/src/io_file.dart | *Contains the class IoFile which implements the abstract class UniversalFile.* |
| root/packages/universal_file/lib/src/web_file.dart | *Contains the class WebFile which implements the abstract class UniversalFile.* |