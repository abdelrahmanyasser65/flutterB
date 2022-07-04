import 'package:flutter/material.dart';
class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  var val;
  Color color=Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: Column(
        children: [
          SizedBox(height: 40,),
         Radio(
             value: 2,
             onChanged: (vale){
               setState((){
                 val=vale;
               });
             }, groupValue: val,
         ),
          Radio(
            value: 3,
            onChanged: (vale){
              setState((){
                val=vale;
              });
            }, groupValue: val,
          ),
        ],
      ),
    );
  }
}
