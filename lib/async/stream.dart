import 'package:flutter/material.dart';

class StreamF extends StatefulWidget {
  const StreamF({Key? key}) : super(key: key);

  @override
  State<StreamF> createState() => _StreamFState();
}

class _StreamFState extends State<StreamF> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Stream.periodic(const Duration(seconds: 2), (a) => a),
        builder: (context, snapshot) => Scaffold(
              appBar: AppBar(
                title: Text(snapshot.hasData ? "${snapshot.data}" : "Demo"),
              ),
              body: Center(
                child: snapshot.connectionState == ConnectionState.waiting
                    ? const CircularProgressIndicator()
                    : const Text("Done"),
              ),
            ));
  }
}
