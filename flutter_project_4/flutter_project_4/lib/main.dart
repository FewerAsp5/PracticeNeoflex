import 'package:flutter/material.dart';
import 'package:flutter_project_4/column_demo.dart';
import 'package:flutter_project_4/container_demo.dart';
import 'package:flutter_project_4/listview_demo.dart';
import 'package:flutter_project_4/row_demo.dart';
import 'package:flutter_project_4/stack_demo.dart';
import 'package:flutter_project_4/wrap_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(backgroundColor: Colors.white, body: LayoutBuilder(builder:((context, constraints) {
        return Row(
          children: [
            if (constraints.maxWidth > 800) ...[
              Container(
              width: 200,
              height: 200,
              color: Colors.red,
              ),
              Container(
              width: 200,
              height: 200,
              color: Colors.green,
              )
            ] else
            Container(
              width: 300,
              height: 300,
              color: Colors.yellow,
              ),
          ],
        );
      }))),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: Colors.white, body: Center(child: ContainerDemo()));
  }
}