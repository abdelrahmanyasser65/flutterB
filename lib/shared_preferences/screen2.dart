import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SharedPreferences2 extends StatefulWidget {
  const SharedPreferences2({Key? key}) : super(key: key);

  @override
  State<SharedPreferences2> createState() => _SharedPreferences2State();
}

class _SharedPreferences2State extends State<SharedPreferences2> {
String name='';
int age=0;
double height=0;
bool developer=false;
List skills=['',''];
@override
void dispose(){
  super.dispose();
  deleteData();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('SharedPreferences2'),
      ),
      body: Center(
        child: DefaultTextStyle(
          style:const TextStyle(fontWeight: FontWeight.bold
          ,fontSize: 30,color: Colors.black),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Name :$name"),
              Text("Age: $age"),
              Text("Height : $height"),
              Text("Developer : $developer"),
              Text("Skill 1 : ${skills[0]}"),
              Text("Skill 2 : ${skills[1]}"),
              ElevatedButton(
                  onPressed: ()async{
                    await   getData();
                  },
                  child: const Text("Get Data")),
            ],
          ),
        ),
      ),
    );
  }
getData()async{
  SharedPreferences preferences=await SharedPreferences.getInstance();
setState((){
 name= preferences.getString('name')==null?'a':preferences.getString('name')!;
 age= preferences.getInt('age')==null?1:preferences.getInt('age')!;
 height=  preferences.getDouble('height')==null?1: preferences.getDouble('height')!;
 developer= preferences.getBool('developer')==null?false:preferences.getBool('developer')!;
 skills= preferences.getStringList('skills')==null?['','dk']:preferences.getStringList('skills')!;
});
}
deleteData()async{
  SharedPreferences preferences=await SharedPreferences.getInstance();
  setState((){
   preferences.remove('name');
   preferences.remove('age');
   preferences.remove('height');
   preferences.remove('developer');
   preferences.remove('skills');
  });
}
}
