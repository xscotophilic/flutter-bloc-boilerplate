import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:universal_file/universal_file.dart';

// if running tests then uncomment the following line in lib/src/io_file.dart:
// String supportDir = './test/fixtures/core';
// if running tests then comment the following line in lib/src/io_file.dart:
// String supportDir = (await getApplicationSupportDirectory()).path;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  group('UniversalFile', () {
    late UniversalFile file;
    const String content = '\'test content\'';

    setUp(() async {
      file = UniversalFile('test.txt');
    });

    test('test UniversalFile', () async {
      expect(file, isNotNull);
    });

    test('Create new directory if not exist', () async {
      file.write(''); // delete ./test/fixtures/core directory if exists
      expect(file, isNotNull);
    });

    test('test write file', () async {
      await file.write(content);
      expect(file, isNotNull);
    });

    test('test read file', () async {
      String result = await file.read();
      expect(result, equals(content));
    });

    // catch exception for createDirIfNotExists method
    test('test createDirIfNotExists exception', () async {});
  });
}
