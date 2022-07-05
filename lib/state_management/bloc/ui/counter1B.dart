import 'package:flutter/material.dart';
import 'package:flutter_bloc/Flutter_bloc.dart';
import 'package:flutterb/state_management/bloc/bloc/bloc.dart';

class CounterB1 extends StatelessWidget {
  const CounterB1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: SizedBox(
        width: 150,
        height: 150,
        child: BlocBuilder<CounterBloc, int>(
          builder: (context, count) => Center(
            child: Text(
              count.toString(),
              style: const TextStyle(fontSize: 40),
            ),
          ),
        ),
        //
      ),
    );
  }
}
