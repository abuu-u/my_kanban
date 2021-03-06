import 'package:flutter/material.dart';
import 'package:my_kanban/presentation/core/app_widget.dart';

import 'injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(AppWidget());
}
