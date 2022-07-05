import 'package:flutter/material.dart';

class AnimatedPaddingW extends StatefulWidget {
  const AnimatedPaddingW({Key? key}) : super(key: key);

  @override
  State<AnimatedPaddingW> createState() => _AnimatedPaddingWState();
}

class _AnimatedPaddingWState extends State<AnimatedPaddingW> {
  double val = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Padding"),
      ),
      body: AnimatedPadding(
        duration: const Duration(seconds: 2),
        padding: EdgeInsets.all(val),
        child: Container(
          color: Colors.green,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow),
        onPressed: () {
          setState(() {
            val = val == 0 ? 25 : 0;
          });
        },
      ),
    );
  }
}
