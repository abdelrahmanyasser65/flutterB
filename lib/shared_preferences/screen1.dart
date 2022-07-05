import 'package:flutter/material.dart';
import 'package:flutterb/shared_preferences/screen2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferences1 extends StatefulWidget{
  const SharedPreferences1({Key? key}) : super(key: key);


  @override
  State<SharedPreferences1> createState() => _SharedPreferences1State();
}

class _SharedPreferences1State extends State<SharedPreferences1> {
  @override
  void initState(){
    super.initState();
    setData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("SharedPreferences1"),
      ),
      body: Center(
        child:ElevatedButton(
          child:const Text("Got to another screen"),
        onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const SharedPreferences2()));

        },
        ) ,
      ),
    );
  }

  setData()async{
    SharedPreferences preferences=await SharedPreferences.getInstance();
    preferences.setString('name', "Abdelrahman");
    preferences.setInt('age', 20);
    preferences.setDouble('height', 176);
    preferences.setBool('developer', true);
    preferences.setStringList('skills', ['Dart','Flutter']);
  }
}
