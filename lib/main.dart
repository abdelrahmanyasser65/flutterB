import 'package:flutter/material.dart';
import 'package:flutterb/animatino/animatedcontainer.dart';
import 'package:flutterb/animatino/animatedopacity.dart';
import 'package:flutterb/widget/colorpicker.dart';
import 'package:flutterb/widget/pageview.dart';
import 'package:provider/provider.dart';
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
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(primaryColor: Colors.black),
      theme: ThemeData(
          primaryColor: Colors.blue, primarySwatch: Colors.deepOrange),
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

      //Riverpod
      // home:ProviderScope(
      //   child: CounterRPro(),
      // ),

      //provider Example2
      //  home:HomepageCounter(),

      home: AnimatedOpacityW(),
    );
  }
}

//
// provider Example
// home: ChangeNotifierProvider<MyProviderE>(
// create:(_)=>MyProviderE(),
// child: MyHomepage(),
// ),
// class MyHomepage extends StatelessWidget {
//   const MyHomepage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       themeMode:Provider.of<MyProviderE>(context).th,
//       darkTheme: ThemeData(
//           primaryColor: Colors.black
//       ),
//       theme: ThemeData(
//           primaryColor: Colors.blue,
//           primarySwatch: Colors.deepOrange),
//       debugShowCheckedModeBanner: false,
//       home: HomeProvider(),
//     );
//   }
// }
//
