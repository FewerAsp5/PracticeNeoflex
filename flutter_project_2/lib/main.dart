import 'package:flutter/material.dart';

/*void main() {
  runApp(const MyApp());
}*/

void main() {
    runApp(MaterialApp(
      home: Scaffold(
      body: Text('Test', style:TextStyle(fontFamily:'ARLRDBD', fontSize: 20),),
      ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white,
    );
  }
}

class Counter extends StatefulWidget{
  Counter({ super.key});
  @override
  _CounterState createState() => _CounterState();
}
class _CounterState extends State<Counter>{
 
  int value = 0;
 
  @override
  Widget build(BuildContext context) {
 
    return ElevatedButton(
        child: Text("Value: $value", style: TextStyle(fontSize: 22)),
        onPressed:(){ setState(() {
          value++;
        });}
    );
  }
}