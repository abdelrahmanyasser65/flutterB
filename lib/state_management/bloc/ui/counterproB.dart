import 'package:flutter/material.dart';
import 'package:flutter_bloc/Flutter_bloc.dart';

import '../bloc/bloc.dart';
import 'dashboardB.dart';

class CounterBPro extends StatelessWidget {
  const CounterBPro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DashBoard"),
      ),
      body: const Center(
        child: DashBoardX(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterBloc>().changeCounter();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
