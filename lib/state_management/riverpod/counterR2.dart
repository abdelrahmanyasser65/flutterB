import 'package:flutter/material.dart';
import 'package:flutterb/state_management/provider/provider.dart';
import 'package:provider/provider.dart';

class CounterR2 extends StatelessWidget {
  const CounterR2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: SizedBox(
        width: 150,
        height: 150,
        child: Center(
          child: Text(
            '${Provider.of<MyProvider>(context).counter}',
            style: const TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}
