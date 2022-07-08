import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleW extends StatefulWidget {
  const AnimatedDefaultTextStyleW({Key? key}) : super(key: key);

  @override
  State<AnimatedDefaultTextStyleW> createState() =>
      _AnimatedDefaultTextStyleWState();
}

class _AnimatedDefaultTextStyleWState extends State<AnimatedDefaultTextStyleW> {
  double fontSize = 30;

  Color color = Colors.red;

  FontWeight fontWeight = FontWeight.bold;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Default Text Style"),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedDefaultTextStyle(
          duration: const Duration(seconds: 1),
          style: TextStyle(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("My Text"),
              Text("My Text"),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow),
        onPressed: () {
          setState(() {
            fontSize = 40;
            fontWeight = FontWeight.w400;
            color = Colors.green;
          });
        },
      ),
    );
  }
}
