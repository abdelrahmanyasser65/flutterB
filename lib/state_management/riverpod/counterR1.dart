import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
class CounterR1 extends HookWidget {
  const CounterR1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: SizedBox(
        width: 150,
        height: 150,
        child: Center(
          child: Text(
           '' ,
            style: const TextStyle(fontSize: 40),
          ),
        ),
        //
      ),
    );
  }
}
