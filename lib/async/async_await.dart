import 'package:flutter/material.dart';

class AsyncAwait extends StatefulWidget {
  const AsyncAwait({Key? key}) : super(key: key);

  @override
  State<AsyncAwait> createState() => _AsyncAwaitState();
}

class _AsyncAwaitState extends State<AsyncAwait> {
  Stream<int> getData() {
    Stream<int> myStream =
        Stream.periodic(const Duration(milliseconds: 500), (a) => a);
    return myStream;
  }

  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$i'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Click me"),
          onPressed: () async {
            await for (final it in getData()) {
              setState(() {
                i = (it < 10 ? it : 0);
              });
            }
          },
        ),
      ),
    );
  }
}
