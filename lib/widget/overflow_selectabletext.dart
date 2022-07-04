import 'package:flutter/material.dart';

class SomeTextProperty extends StatelessWidget {
  const SomeTextProperty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OverFlow&SelectableText"),
        centerTitle: true,
      ),
      body: buildSomeTextProperty(),
    );
  }

  Column buildSomeTextProperty() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SelectableText(
          'This is A Clipped Text , this is A clipped Texs This is A Clipped Text , this is A clipped Texs',
          showCursor: true,
          toolbarOptions: ToolbarOptions(
            copy: true,
            cut: true,
            paste: true,
            selectAll: true,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 40,
          width: 200,
          color: Colors.green,
          child: const Text(
            "This is A Clipped Text , this is A clipped Texs This is A Clipped Text , this is A clipped Texs",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            overflow: TextOverflow.clip,
            softWrap: false,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          height: 40,
          width: 200,
          color: Colors.green,
          child: const Text(
            "This is A Clipped Text , this is A clipped Texs This is A Clipped Text , this is A clipped Texs",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          height: 40,
          width: 200,
          color: Colors.green,
          child: const Text(
            "This is A Clipped Text , this is A clipped Texs This is A Clipped Text , this is A clipped Texs",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            overflow: TextOverflow.fade,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          height: 40,
          width: 200,
          color: Colors.green,
          child: const Text(
            "This is A Clipped Text , this is A clipped Texs This is A Clipped Text , this is A clipped Texs",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            overflow: TextOverflow.visible,
          ),
        ),
      ],
    );
  }
}
