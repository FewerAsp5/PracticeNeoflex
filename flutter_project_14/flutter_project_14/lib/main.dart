import 'package:flutter/material.dart';
import 'package:flutter_project_14/core/di/configure_dependencies.dart';
import 'package:flutter_project_14/feature/color/presentation/page/color_page.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Clean Arch Demo',
      routes: {
        '/': (context) => const CubitPage(),
        '/second': (context) => const CubitPage(),
      },
    );
  }
}