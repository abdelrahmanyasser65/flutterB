import 'package:flutter/material.dart';
import 'package:flutterb/state_management/riverpod/providerR.dart';
import 'package:provider/provider.dart';

import 'dashboardR.dart';

class CounterRPro extends StatelessWidget {
  const CounterRPro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DashBoard"),
      ),
      body: const Center(
        child: DashBoardR(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
           context.read<CounterR>().changecounter();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
