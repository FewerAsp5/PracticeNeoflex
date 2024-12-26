import 'dart:math';

import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      width: 300,
      height: 300,
      foregroundDecoration: BoxDecoration(
        color: Colors.amber.withAlpha(100)
      ),
      padding: const EdgeInsets.all(20),
      child: Container(
        color: Colors.white,
      ),
    );
  }
}