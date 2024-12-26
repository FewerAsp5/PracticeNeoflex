import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_project_9/util.dart';

class StatefulPage extends StatefulWidget {
  const StatefulPage({super.key});

  @override
  State<StatefulPage> createState() => _StatefulPageState();
}

class _StatefulPageState extends State<StatefulPage> {

  Color? color;

  @override
  void initState() {
    super.initState();
    color = Util.randomColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            color: color,
            child: Column(
              children: [
                Text(color.toString()),
                ElevatedButton(onPressed: () {
                  setState(() {
                    color = Util.randomColor();
                  });
                },
                 child: const Text('Change color')),
                 ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/second');
                  },
                  child: const Text('Second Page'))
              ],
            ),
          ),
        )),
    );
  }
}