import 'package:flutter/material.dart';

class AnimatedPositionW extends StatefulWidget {
  const AnimatedPositionW({Key? key}) : super(key: key);

  @override
  State<AnimatedPositionW> createState() => _AnimatedPositionWState();
}

class _AnimatedPositionWState extends State<AnimatedPositionW> {
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Positioned'),
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.black26,
          ),
          const Center(
            child: Text(
              "My Text",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(seconds: 2),
            bottom: visible == true ? 300 : 450,
            left: 80,
            child: Container(
              width: 200,
              height: 100,
              color: Colors.green,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow),
        onPressed: () {
          setState(() {
            visible = !visible;
          });
        },
      ),
    );
  }
}
