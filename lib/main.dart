import 'package:flutter/material.dart';
import 'package:flutterb/state_management/riverpod/counterproR.dart';
import 'package:flutterb/widget/colorpicker.dart';
import 'package:flutterb/widget/pageview.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var decision = prefs.getBool('x');
  Widget screen = (decision == false || decision == null)
      ? const PageViewW()
      : const ColorPickerW();
  runApp(MyApp(
    screen: screen,
  ));
}

class MyApp extends StatelessWidget {
  final Widget screen;

  const MyApp({super.key, required this.screen});

  @override
  Widget build(BuildContext context) {
    //GetX
    // Get.put(CounterController());
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      debugShowCheckedModeBanner: false,
      //provider
      // home:ChangeNotifierProvider<MyProvider>(
      //     create: (_)=>MyProvider(),
      //     child:const CounterPro()),

      //GetX
      // home: CounterXPro(),

      //Bloc
      // home:BlocProvider(
      //   create: (_)=>CounterBloc(),
      //   child: CounterBPro(),
      // ),

      home:ProviderScope(
        child: CounterRPro(),
      ),
    );
  }
}
