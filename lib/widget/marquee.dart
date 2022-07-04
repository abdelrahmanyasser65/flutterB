import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class MarqueeW extends StatefulWidget {
  const MarqueeW({Key? key}) : super(key: key);

  @override
  State<MarqueeW> createState() => _MarqueeWState();
}

class _MarqueeWState extends State<MarqueeW> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Marquee"),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 70,
            child: Card(
              color: Colors.teal,
              child: Marquee(
                text: 'Simple Marquee',
                blankSpace: 100,
                scrollAxis: Axis.horizontal,
                pauseAfterRound: const Duration(seconds: 1),
                accelerationDuration: const Duration(milliseconds: 50),
                decelerationDuration: const Duration(milliseconds: 50),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 70,
            child: Card(
              color: Colors.teal,
              child: Marquee(
                text: 'Abdelrahman',
                scrollAxis: Axis.vertical,
                blankSpace: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
