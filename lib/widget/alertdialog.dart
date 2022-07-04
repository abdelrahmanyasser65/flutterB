import 'package:flutter/material.dart';

class AlertDialogW extends StatelessWidget {
  const AlertDialogW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AlertDialog"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            buildDialog(context);
          },
          child: const Text("Click here"),
        ),
      ),
    );
  }

  void buildDialog(BuildContext context) {
    final alert = AlertDialog(
        title: const Text("Dialog Title"),
        content: SizedBox(
          height: 150,
          child: Column(
            children: [
              const Divider(
                color: Colors.black,
              ),
              const Text(
                  'this is Dialog Text, click outside to pop the Dialog!'),
              const SizedBox(
                height: 17,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: const Text(
                    "Close!",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ));
    showDialog(
        context: context,
        builder: (context) => alert,
        //close dialog
        barrierDismissible: false,
        //out color
        barrierColor: Colors.red);
  }
}
