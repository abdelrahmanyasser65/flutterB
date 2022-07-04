import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class FlushBarW extends StatelessWidget {
  const FlushBarW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FlushBar"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            buildFlushBar(context);
          },
          child: const Text("Show FlushBar"),
        ),
      ),
    );
  }

  void buildFlushBar(BuildContext context) {
    Flushbar(
      flushbarPosition: FlushbarPosition.TOP,
      duration: const Duration(seconds: 3),
      mainButton: TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text("Undo"),
      ),
      title: "This is The Title",
      backgroundColor: Colors.amber,
      icon: const Icon(
        Icons.info,
        color: Colors.white,
      ),
      //message: "This is the Message",
      messageText: const Text(
        "this is the message",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink),
      ),
    ).show(context);
  }
}
