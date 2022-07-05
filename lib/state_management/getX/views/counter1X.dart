import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counter_controller.dart';

class CounterX1 extends StatelessWidget {
  CounterX1({Key? key}) : super(key: key);
  final CounterController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: SizedBox(
        width: 150,
        height: 150,
        child: GetBuilder(
          init: controller,
          builder: (_) => Center(
            child: Text(
              controller.counter.toString(),
              style: const TextStyle(fontSize: 40),
            ),
          ),
        ),
        //
      ),
    );
  }
}
