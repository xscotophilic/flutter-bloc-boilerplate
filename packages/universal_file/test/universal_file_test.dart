void main() {}
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:universal_file/universal_file.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   group(
//     'File operations',
//     () {
//       late UniversalFile universalFile;

//       String filename = 'test.txt';
//       String message = 'test';

//       setUp(
//         () {
//           universalFile = UniversalFile(filename);
//         },
//       );

//       group(
//         'File Name',
//         () {
//           test('works properly', () {
//             expect(
//               universalFile.fileName,
//               filename,
//             );
//           });
//         },
//       );

//       group(
//         'file operations',
//         () {
//           test(
//             'read',
//             () async {
//               expect(
//                 await universalFile.read(),
//                 '',
//               );
//             },
//           );
//           test(
//             'write',
//             () async {
//               String newmessage = '>$message<';
//               universalFile.write(newmessage);
//               expect(
//                 await universalFile.read(),
//                 returnsNormally,
//               );
//             },
//           );
//         },
//       );
//     },
//   );
// }
