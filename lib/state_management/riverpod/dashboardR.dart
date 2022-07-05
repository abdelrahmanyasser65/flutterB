import 'package:flutter/material.dart';

import 'counterR1.dart';
import 'counterR2.dart';

class DashBoardR extends StatelessWidget {
  const DashBoardR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: SizedBox(
        width: 400,
        height: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "DashBoard",
              style: TextStyle(fontSize: 60),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CounterR1(),
                SizedBox(
                  width: 20,
                ),
                CounterR2(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
