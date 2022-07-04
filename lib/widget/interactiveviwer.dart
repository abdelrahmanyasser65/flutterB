import 'package:flutter/material.dart';

class InterActiveViewW extends StatefulWidget {
  const InterActiveViewW({Key? key}) : super(key: key);

  @override
  State<InterActiveViewW> createState() => _InterActiveViewWState();
}

class _InterActiveViewWState extends State<InterActiveViewW> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inter Active View"),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          width: double.infinity,
          height: 500,
          child: InteractiveViewer(
              scaleEnabled: true,
              minScale: 0.3,
              maxScale: 4,
              child: Image.asset(
                'assets/h.jpg',
                fit: BoxFit.cover,
              )),
        ),
      ),
    );
  }
}
