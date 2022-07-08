import 'package:flutter/material.dart';

class ExplicitAnimationW extends StatefulWidget {
  const ExplicitAnimationW({Key? key}) : super(key: key);

  @override
  State<ExplicitAnimationW> createState() => _ExplicitAnimationWState();
}

class _ExplicitAnimationWState extends State<ExplicitAnimationW>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation<double>? animation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1))
          ..repeat();
    animation = CurvedAnimation(parent: controller!, curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Explicit Animation"),
        centerTitle: true,
      ),
      body: Center(
        child: RotationTransition(
          turns: animation!,
          child: const Padding(
            padding: EdgeInsets.all(8),
            child: FlutterLogo(
              size: 150,
            ),
          ),
        ),
      ),
    );
  }
}
