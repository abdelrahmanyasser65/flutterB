import 'package:flutter/material.dart';

class DropDownButtonW extends StatefulWidget {
  const DropDownButtonW({Key? key}) : super(key: key);

  @override
  State<DropDownButtonW> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButtonW> {
  String? selected;
  List<String> literList = ['A', 'B', "C", 'D', 'F'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("DropDownButton"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Select A letter!"),
            DropdownButton<String>(
                value: selected,
                items: literList.map((e) {
                  return DropdownMenuItem<String>(
                    value: e,
                    child: Text(e),
                  );
                }).toList(),
                onChanged: (val) {
                  setState(() {
                    selected = val;
                  });
                })
          ],
        ),
      ),
    );
  }
}
