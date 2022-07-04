import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class ColorPickerW extends StatefulWidget {
  const ColorPickerW({Key? key}) : super(key: key);

  @override
  State<ColorPickerW> createState() => _ColorPickerWState();
}

class _ColorPickerWState extends State<ColorPickerW> {
  Color currentColor = Colors.deepOrange;

  void onchangeColor(Color color) => setState(() {
        currentColor = color;
      });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Color Picker"),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'HSV',
              ),
              Tab(
                text: "Material",
              ),
              Tab(
                text: 'Block',
              ),
            ],
          ),
          backgroundColor: currentColor,
        ),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: const Text("Select a color"),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SingleChildScrollView(
                                    child: ColorPicker(
                                      pickerColor: currentColor,
                                      onColorChanged: onchangeColor,
                                    ),
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text("Close"))
                                ],
                              ),
                            ));
                  },
                  child: const Text("Change My Color!"),
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: const Text("Select a color"),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SingleChildScrollView(
                                    child: SlidePicker(
                                      pickerColor: currentColor,
                                      onColorChanged: onchangeColor,
                                    ),
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text("Close"))
                                ],
                              ),
                            ));
                  },
                  child: const Text("Change My Color!"),
                ),
              ],
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: const Text("Select a color"),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SingleChildScrollView(
                                  child: MaterialPicker(
                                    enableLabel: true,
                                    pickerColor: currentColor,
                                    onColorChanged: onchangeColor,
                                  ),
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text("Close"))
                              ],
                            ),
                          ));
                },
                child: const Text("Change My Color!"),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: const Text("Select a color"),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SingleChildScrollView(
                                  child: BlockPicker(
                                    availableColors: const [
                                      Colors.teal,
                                      Colors.green,
                                      Colors.lightGreen,
                                      Colors.lime,
                                      Colors.yellow,
                                      Colors.amber,
                                      Colors.orange,
                                      Colors.deepOrange,
                                      Colors.brown,
                                      Colors.grey,
                                      Colors.blueGrey,
                                      Colors.black,
                                    ],
                                    pickerColor: currentColor,
                                    onColorChanged: onchangeColor,
                                  ),
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text("Close"))
                              ],
                            ),
                          ));
                },
                child: const Text("Change My Color!"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
