import 'package:flutter/material.dart';

class ListWheelScrollViewW extends StatefulWidget {
  const ListWheelScrollViewW({Key? key}) : super(key: key);

  @override
  State<ListWheelScrollViewW> createState() => _ListWheelScrollViewWState();
}

class _ListWheelScrollViewWState extends State<ListWheelScrollViewW> {
  List nameList = [
    'jan',
    'feb',
    'mar',
    'apr',
    'may',
    'jun',
    'jan',
    'feb',
    'mar',
    'apr',
    'may',
    'jun',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("List Wheel Scroll View"),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 10),
        child: ListWheelScrollView(
          itemExtent: 100,
          children: nameList.map((e) {
            return Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: Colors.red)),
              child: Center(
                child: Text(
                  e,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
