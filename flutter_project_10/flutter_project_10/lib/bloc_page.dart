import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_10/bloc/color_bloc.dart';
import 'package:flutter_project_10/main.dart';

class BlocPage extends StatelessWidget {
  const BlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ColorBloc(),
      child: Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: BlocBuilder<ColorBloc, ColorState>(builder: ((context, state) {
            return Column(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: state.color,
                  child: Column(
                    children: [
                      Text(state.color.toString()),
                      ElevatedButton(
                        onPressed: () {
                          context.read<ColorBloc>().add(NewRandomColorEvent());
                        }, 
                        child: const Text('Set random color')),
                        ElevatedButton(
                        onPressed: () {
                          context.read<ColorBloc>().add(ResetColorEvent());
                        }, 
                        child: const Text('Reset Color')),
                        ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/second');
                        }, 
                        child: const Text('Second page')),
                    ]),
                ),
                ColorPicker(
                  color: state.color,
                  onColorChanged: (color) {
                  context.read<ColorBloc>().add(NewColorEvent(color: color));
                }),
              ],
            );
          })),
      )),
      ),
    );
  }
}