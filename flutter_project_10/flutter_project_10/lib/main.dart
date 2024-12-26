import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_10/bloc/color_bloc.dart';
import 'package:flutter_project_10/bloc_page.dart';
import 'package:flutter_project_10/cubit_page.dart';

void main() {
  runApp(MaterialApp(
  routes: {
    '/': (context) => const CubitPage(),
    '/second': (context) => const CubitPage()
  },
  ));
}