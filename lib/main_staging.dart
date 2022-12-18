import 'package:flutter/material.dart';

import 'bootstrap.dart';
import '_internal/config/app_config.dart';
import '_internal/config/config.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppConfig(stagingConfig);
  await bootstrap();
}
