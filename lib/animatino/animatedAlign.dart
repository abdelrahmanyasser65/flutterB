import 'package:flutter/material.dart';

class AnimatedAlignW extends StatefulWidget {
  const AnimatedAlignW({Key? key}) : super(key: key);

  @override
  State<AnimatedAlignW> createState() => _AnimatedAlignWState();
}

class _AnimatedAlignWState extends State<AnimatedAlignW> {
  double x = 0;
  double y = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Align"),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.yellow[200],
          child: AnimatedAlign(
            duration: const Duration(seconds: 2),
            alignment: FractionalOffset(x, y),
            child: const FlutterLogo(
              size: 60,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow),
        onPressed: () {
          setState(() {
            x = x == 0 ? 1 : 0;
            y = y == 0 ? 1 : 0;
          });
        },
      ),
    );
  }
}
