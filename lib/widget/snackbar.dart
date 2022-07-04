import 'package:flutter/material.dart';

class SnackBarW extends StatefulWidget {
  const SnackBarW({Key? key}) : super(key: key);

  @override
  State<SnackBarW> createState() => _SnackBarWState();
}

class _SnackBarWState extends State<SnackBarW> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("SnackBar"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            buildSnkBar(context);
          },
          child: const Text("Show SnackBar"),
        ),
      ),
    );
  }

  void buildSnkBar(BuildContext context) {
    final sBar = SnackBar(
      action: SnackBarAction(
        label: 'Undo',
        textColor: Colors.black,
        onPressed: () {
          //Navigator.pop(context);
        },
      ),
      backgroundColor: Colors.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      duration: const Duration(seconds: 2),
      content: const Text("SnackBar Text"),
    );
    ScaffoldMessenger.of(context).showSnackBar(sBar);
  }
}
