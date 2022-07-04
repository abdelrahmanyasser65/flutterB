import 'package:flutter/material.dart';

class FutureF extends StatefulWidget {
  const FutureF({Key? key}) : super(key: key);

  @override
  State<FutureF> createState() => _FutureFState();
}

class _FutureFState extends State<FutureF> {
  int info(int a) {
    return a;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 1), () => info(2)),
      builder: (ctx, snapShot) => Scaffold(
        appBar: AppBar(
          title: Text(snapShot.hasData ? "${snapShot.data}" : 'Demo'),
        ),
        body: Center(
          child: snapShot.connectionState == ConnectionState.waiting
              ? const CircularProgressIndicator()
              : const Text("Done"),
        ),
      ),
    );
  }
}
