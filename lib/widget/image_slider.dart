import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSliderW extends StatefulWidget {
  const ImageSliderW({Key? key}) : super(key: key);

  @override
  State<ImageSliderW> createState() => _ImageSliderWState();
}

class _ImageSliderWState extends State<ImageSliderW> {
  final List imageList = [
    'assets/g.jpg',
    'assets/h.jpg',
    'assets/m.jpg',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ImageSlider"),
        centerTitle: true,
      ),
      body: buildCarouselImage(),
    );
  }

  ListView buildCarouselImage() {
    return ListView(
      children: [
        const SizedBox(
          height: 40,
        ),
        const Text(
          "Slider 1 : initial page Index 0\n\n",
          textAlign: TextAlign.center,
        ),
        CarouselSlider(
          options: CarouselOptions(
              height: 150,
              initialPage: 0,
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayAnimationDuration: const Duration(seconds: 1),
              // enableInfiniteScroll: false,
              pauseAutoPlayOnTouch: false,
              // reverse: true,
              onPageChanged: (index, _) {
                setState(() {
                  currentIndex = index;
                });
              }),
          items: imageList
              .map((e) => SizedBox(
                    // margin:EdgeInsets.symmetric(horizontal: 10),
                    width: double.infinity,
                    child: Image.asset(
                      e,
                      fit: BoxFit.fill,
                    ),
                  ))
              .toList(),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildContainer(0),
            buildContainer(1),
            buildContainer(2),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          "Slider 2 : initial page Index 1\n\n",
          textAlign: TextAlign.center,
        ),
        CarouselSlider.builder(
          itemCount: imageList.length,
          itemBuilder: (context, index, ia) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Image.asset(
                imageList[index],
                fit: BoxFit.fill,
              ),
            );
          },
          options: CarouselOptions(
            height: 150,
            initialPage: 1,
          ),
        ),
      ],
    );
  }

  Container buildContainer(index) {
    return Container(
      margin: const EdgeInsets.all(5),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: currentIndex == index ? Colors.redAccent : Colors.green,
      ),
    );
  }
}
