import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => const MaterialApp(
            useInheritedMediaQuery: true,
            home: cslider1(),
            debugShowCheckedModeBanner: false,
          )));
}
class cslider1 extends StatelessWidget {
  const cslider1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(items:List.generate(10, (index) => 
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: 
          AssetImage("assets/icon/bg.jpg"),
          fit: BoxFit.fill)
        ),
      )),
       options:CarouselOptions(
        autoPlay: true,
        viewportFraction: 1,
        height: MediaQuery.of(context).size.height,
        enlargeCenterPage: true,
        autoPlayCurve: Curves.easeInBack,
        autoPlayAnimationDuration: Duration(seconds: 1),
        enableInfiniteScroll: true,
       ),),
    );
  }
}