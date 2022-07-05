import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedContainerW extends StatefulWidget {
  const AnimatedContainerW({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerW> createState() => _AnimatedContainerWState();
}

class _AnimatedContainerWState extends State<AnimatedContainerW> {
  double _width = 50;
  double height = 50;
  Color color = Colors.green;
  BorderRadiusGeometry borderRadiusGeometry = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          height: height,
          width: _width,
          decoration: BoxDecoration(
            color: color,
            borderRadius: borderRadiusGeometry,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Random random = Random();

            _width = random.nextInt(300).toDouble();
            height = random.nextInt(300).toDouble();
            color = (color == Colors.green ? Colors.red : Colors.green);
            borderRadiusGeometry =
                borderRadiusGeometry == BorderRadius.circular(8)
                    ? BorderRadius.circular(29)
                    : BorderRadius.circular(8);
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
