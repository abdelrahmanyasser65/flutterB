import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

import 'imagepicker.dart';

class SplashScreenW extends StatefulWidget {
  const SplashScreenW({Key? key}) : super(key: key);

  @override
  State<SplashScreenW> createState() => _SplashScreenWState();
}

class _SplashScreenWState extends State<SplashScreenW> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Splash Screen"),
        centerTitle: true,
      ),
      body: EasySplashScreen(
        logo: Image.asset(
          'assets/h.jpg',
          fit: BoxFit.cover,
        ),
        durationInSeconds: 3,
        logoSize: 100,
        loaderColor: Colors.red,
        navigator: const ImagePickerW(),
      ),
    );
  }
}
