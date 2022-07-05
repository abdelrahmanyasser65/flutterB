import 'package:flutter/material.dart';
import 'package:flutterb/state_management/provider_example/mydrawer.dart';

class HomeProvider extends StatelessWidget {
  const HomeProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Provider',
      )),
      body: null,
      drawer: const MyDrawerP(),
    );
  }
}
