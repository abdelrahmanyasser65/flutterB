import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counter_controller.dart';
class CounterX2 extends StatelessWidget {
   CounterX2({Key? key}) : super(key: key);
   final CounterController controller=Get.find();
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: SizedBox(
        width: 150,
        height: 150,
        child: Center(
          child: Text(
            controller.counter.toString(),
            style: const TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}
