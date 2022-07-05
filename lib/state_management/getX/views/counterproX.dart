import 'package:flutter/material.dart';
import 'package:flutterb/state_management/getX/controllers/counter_controller.dart';
import 'package:get/get.dart';

import 'dashboardX.dart';

class CounterXPro extends StatelessWidget {
  CounterXPro({Key? key}) : super(key: key);
  final CounterController controller = Get.find();

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
          controller.changeCounter();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
