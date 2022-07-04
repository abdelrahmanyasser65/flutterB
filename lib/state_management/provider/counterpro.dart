import 'package:flutter/material.dart';
import 'package:flutterb/state_management/provider/provider.dart';
import 'package:provider/provider.dart';

import 'dashboard.dart';

class CounterPro extends StatelessWidget {
  const CounterPro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DashBoard"),
      ),
      body: const Center(
        child: DashBoard(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<MyProvider>(context, listen: false).changeCounter();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
