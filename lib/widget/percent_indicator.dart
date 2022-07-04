import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PercentIndicatorW extends StatefulWidget {
  const PercentIndicatorW({Key? key}) : super(key: key);

  @override
  State<PercentIndicatorW> createState() => _PercentIndicatorWState();
}

class _PercentIndicatorWState extends State<PercentIndicatorW> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Percent Indicator"),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          CircularPercentIndicator(
            radius: 50,
            lineWidth: 10,
            percent: 0.8,
            animation: true,
            header: const Text("Icon Header"),
            center: const Icon(
              Icons.person,
              size: 50,
              color: Colors.deepOrange,
            ),
            backgroundColor: Colors.grey,
            progressColor: Colors.deepOrange,
          ),
          const SizedBox(
            height: 20,
          ),
          LinearPercentIndicator(
            width: 150,
            lineHeight: 15,
            percent: 0.5,
            center: const Text("50.0%"),
            trailing: const Icon(Icons.mobile_friendly),
            backgroundColor: Colors.grey,
            progressColor: Colors.deepOrange,
            leading: const Text("percent"),
            animation: true,
          ),
        ],
      ),
    );
  }
}
