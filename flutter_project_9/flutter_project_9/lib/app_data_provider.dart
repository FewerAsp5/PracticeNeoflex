import 'package:flutter_project_9/app_data.dart';
import 'package:flutter/material.dart';

class AppDataProvider extends InheritedWidget {
  const AppDataProvider(
    {required this.appData, required super.child, super.key});

  final AppData appData;

  static AppDataProvider? of(BuildContext context) =>
  context.dependOnInheritedWidgetOfExactType<AppDataProvider>();

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}