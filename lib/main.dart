import 'package:flutter/material.dart';

import 'di.dart' as di;
import 'movies/presentation/pages/orchestrator_screen.dart';

void main() {
  di.setupDi();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OrchestratorScreen(),
    );
  }
}
