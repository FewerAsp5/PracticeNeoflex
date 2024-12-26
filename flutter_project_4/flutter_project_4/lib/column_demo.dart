import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ColumnDemo extends StatelessWidget {
  const ColumnDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 100,
          child: Container(
          color: Colors.red,
        )),
        Expanded(
          child: Container(
          color: Colors.yellow,
          ),
         )
      ],
    );
  }
}