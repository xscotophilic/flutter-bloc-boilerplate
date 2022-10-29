import 'package:flutter/material.dart';

import 'bootstrap.dart';
import 'config/app_config.dart';
import 'config/config.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppConfig(stagingConfig);
  await bootstrap();
}
