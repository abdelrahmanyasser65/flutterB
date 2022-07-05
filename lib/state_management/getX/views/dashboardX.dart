import 'package:flutter/material.dart';

import 'counter1X.dart';
import 'counter2X.dart';

class DashBoardX extends StatelessWidget {
  const DashBoardX({Key? key}) : super(key: key);

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
              children: [
                CounterX1(),
                const SizedBox(
                  width: 20,
                ),
                CounterX2(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
