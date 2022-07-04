import 'package:flutter/material.dart';
import 'package:flutterb/widget/snackbar.dart';
import 'alertdialog.dart';

class ExpandableListW extends StatefulWidget {
  const ExpandableListW({Key? key}) : super(key: key);

  @override
  State<ExpandableListW> createState() => _ExpandableListWState();
}

class _ExpandableListWState extends State<ExpandableListW> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("ExpandableList"),
      ),
      body: ListView(
        children: [
          ExpansionTile(
            leading: const Icon(Icons.account_circle),
            // backgroundColor: Colors.deepOrange,
            title: const Text("Expan"),
            children: [
              const Divider(
                color: Colors.grey,
              ),
              ListTile(
                title: const Text("SnackBar"),
                subtitle: const Text("where you can "),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SnackBarW()));
                },
              ),
              ListTile(
                title: const Text("AlertDialog"),
                subtitle: const Text("where you can "),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AlertDialogW()));
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
