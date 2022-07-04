import 'package:flutter/material.dart';

class DismissibleW extends StatefulWidget {
  const DismissibleW({Key? key}) : super(key: key);

  @override
  State<DismissibleW> createState() => _DismissibleWState();
}

class _DismissibleWState extends State<DismissibleW> {
  final li = List.generate(20, (index) => 'Item Num${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dismissble'),
        centerTitle: true,
      ),
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: li.length,
          itemBuilder: (context, index) {
            final item = li[index];
            return Dismissible(
                key: Key(item),
                background: Container(
                  color: Colors.green,
                  alignment: Alignment.centerLeft,
                  child: const Icon(Icons.delete),
                ),
                secondaryBackground: Container(
                  color: Colors.redAccent,
                  alignment: Alignment.centerRight,
                  child: const Icon(Icons.account_circle),
                ),
                onDismissed: (DismissDirection dir) {
                  setState(() {
                    li.removeAt(index);
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("$item Deleted"),
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {
                          setState(() {
                            li.insert(index, item);
                          });
                        },
                      ),
                    ),
                  );
                },
                child: ListTile(
                  title: Center(
                    child: Text(item),
                  ),
                ));
          }),
    );
  }
}
