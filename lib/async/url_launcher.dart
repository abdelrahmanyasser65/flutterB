import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncher extends StatefulWidget {
  const UrlLauncher({Key? key}) : super(key: key);

  @override
  State<UrlLauncher> createState() => _UrlLauncherState();
}

class _UrlLauncherState extends State<UrlLauncher> {
  var url = "https://youtu.be/Hp8WTVqR_0U";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UrlLauncher"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Get The App"),
          onPressed: () async {
            await launchUrl(Uri.parse(url));
          },
        ),
      ),
    );
  }
}
