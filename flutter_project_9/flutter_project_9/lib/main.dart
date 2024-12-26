import 'package:flutter/material.dart';
import 'package:flutter_project_9/app_data.dart';
import 'package:flutter_project_9/inheritend_page.dart';
import 'package:flutter_project_9/provide_page.dart';
import 'package:flutter_project_9/util.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => AppData(
      backgroundColor:Util.randomColor()),
    child: MaterialApp(
    routes: {
      '/': (context) => const ProviderPage(),
      '/second': (context) => const ProviderPage(),
    },
    ),
  ));
}