import 'package:flutter/material.dart';
import 'package:flutterb/state_management/provider_example/myProvider.dart';
import 'package:provider/provider.dart';

class MyDrawerP extends StatelessWidget {
  const MyDrawerP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(40),
              child: Text("Light"),
            ),
            Switch(
              value: Provider.of<MyProviderE>(context).isVAl,
              onChanged: (val) =>
                  Provider.of<MyProviderE>(context, listen: false)
                      .switchChange(val),
              activeColor: Colors.black,
              inactiveThumbColor: Colors.blue,
            ),
            const Padding(
              padding: EdgeInsets.all(40),
              child: Text("Dark"),
            ),
          ],
        ),
      ),
    );
  }
}
