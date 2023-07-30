import 'package:campeonato/core/app/app.dart';
import 'package:flutter/material.dart';

import 'core/inject/inject.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Inject().initialize();
  runApp(const AppWidget());
}
