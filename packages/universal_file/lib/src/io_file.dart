import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import './universal_file.dart';

class IoFileWriter implements UniversalFile {
  late Directory dataPath;
  bool _hasDataPath = false;

  @override
  String fileName;

  IoFileWriter(this.fileName);

  String get fullPath => p.join(dataPath.path, fileName);

  Future getDataPath() async {
    if (_hasDataPath) return;
    _hasDataPath = true;
    String supportDir = (await getApplicationSupportDirectory()).path;
    dataPath = Directory(supportDir);
    createDirIfNotExists(dataPath);
  }

  @override
  Future<String> read() async {
    await getDataPath();
    return await File(fullPath).readAsString();
  }

  @override
  Future write(String value, [bool append = false]) async {
    await getDataPath();
    await File(fullPath).writeAsString(
      value,
      mode: append ? FileMode.append : FileMode.write,
    );
  }

  static void createDirIfNotExists(Directory dir) async {
    //Create directory if it doesn't exist
    if (!await dir.exists()) {
      //Catch error since disk io can always fail.
      await dir.create(recursive: true).catchError((e, stack) {
        return Directory(".");
      });
    }
  }
}

UniversalFile getPlatformFileWriter(String string) => IoFileWriter(string);
