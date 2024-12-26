import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RowDemo extends StatelessWidget {
  const RowDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [Container(width: 100, height: 100, color: Colors.green),
      Container(width: 100, height: 100, color: Colors.red),
      Container(width: 100, height: 100, color: Colors.yellow)],
    );
  }
}