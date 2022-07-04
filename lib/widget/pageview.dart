import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

import 'colorpicker.dart';

class Data {
  final String titel;
  final String description;
  final String imageUrl;
  final IconData iconData;

  Data(
      {required this.titel,
      required this.description,
      required this.imageUrl,
      required this.iconData});
}

class PageViewW extends StatefulWidget {
  const PageViewW({Key? key}) : super(key: key);

  @override
  State<PageViewW> createState() => _PageViewWState();
}

class _PageViewWState extends State<PageViewW> {
  int currentIndex = 0;

  List<Data> myData = [
    Data(
        titel: 'title1',
        description: 'Abdelrahman yasser Abdullah',
        imageUrl: 'assets/q1.jpg',
        iconData: Icons.person_pin),
    Data(
        titel: 'title2',
        description: 'Abdelrahman yasser Abdullah',
        imageUrl: 'assets/q2.jpg',
        iconData: Icons.ad_units),
    Data(
        titel: 'title3',
        description: 'Abdelrahman yasser Abdullah',
        imageUrl: 'assets/q3.jpg',
        iconData: Icons.school_sharp),
    Data(
        titel: 'title4',
        description: 'Abdelrahman yasser Abdullah',
        imageUrl: 'assets/q4.jpg',
        iconData: Icons.school_sharp),
  ];
  final PageController controller = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 16), (timer) {
      if (currentIndex < 3) currentIndex++;
      controller.animateToPage(currentIndex,
          duration: const Duration(seconds: 1), curve: Curves.easeIn);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: const Alignment(0, 0.93),
      children: [
        PageView(
          controller: controller,
          onPageChanged: (val) {
            setState(() {
              currentIndex = val;
            });
            // if(currentIndex==3){
            //  Future.delayed(Duration(seconds: 2),()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ColorPickerW())));
            // }
          },
          children: myData.map((e) {
            return Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: ExactAssetImage(e.imageUrl),
                fit: BoxFit.cover,
              )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    e.iconData,
                    size: 130,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    e.titel,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    e.description,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
        //Indicator(currentIndex),
        Align(
          alignment: const Alignment(0, 0.7),
          child: PageViewDotIndicator(
            currentItem: currentIndex,
            selectedColor: Colors.green,
            count: 4,
            unselectedColor: Colors.red,
          ),
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.all(8),
          child: ElevatedButton(
              onPressed: () async {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ColorPickerW()));
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.setBool('x', true);
              },
              child: const Text(
                "GET STARTED",
                style: TextStyle(fontSize: 25, color: Colors.white),
              )),
        ),
      ],
    ));
  }
}

class Indicator extends StatelessWidget {
  final int index;

  const Indicator(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0, 0.7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildContainer(index == 0 ? Colors.green : Colors.red),
          buildContainer(index == 1 ? Colors.green : Colors.red),
          buildContainer(index == 2 ? Colors.green : Colors.red),
          buildContainer(index == 3 ? Colors.green : Colors.red),
        ],
      ),
    );
  }

  Container buildContainer(Color color) {
    return Container(
      margin: const EdgeInsets.all(4),
      width: 15,
      height: 15,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
