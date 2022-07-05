import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedOpacityW extends StatefulWidget {
  const AnimatedOpacityW({Key? key}) : super(key: key);

  @override
  State<AnimatedOpacityW> createState() => _AnimatedOpacityWState();
}

class _AnimatedOpacityWState extends State<AnimatedOpacityW> {
  double _width = 50;
  double height = 50;
  Color color = Colors.green;
  bool visible = true;
  BorderRadiusGeometry borderRadiusGeometry = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Opacity'),
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: visible == true ? 1 : 0,
          duration: const Duration(seconds: 1),
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.easeInCirc,
            height: height,
            width: _width,
            decoration: BoxDecoration(
              color: color,
              borderRadius: borderRadiusGeometry,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            visible = !visible;
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
