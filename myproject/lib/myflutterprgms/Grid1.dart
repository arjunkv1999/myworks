import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => const MaterialApp(
            useInheritedMediaQuery: true,
            home: mygrid1(),
            debugShowCheckedModeBanner: false,
          )));
}
// ignore: camel_case_types
class mygrid1 extends StatelessWidget {
  const mygrid1 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid 1"),
      ),
      body: GridView(gridDelegate: 
      const SliverGridDelegateWithMaxCrossAxisExtent(
      crossAxisSpacing: 20,
      mainAxisSpacing:20, maxCrossAxisExtent: 200),
      children: [
        Image.asset("assets/icon/delhi1.jpg"),
        Image.asset("assets/icon/london1.jpg"),
        Image.asset("assets/icon/vancouver.jpg"),
        Image.asset("assets/icon/newyork.jpg"),
        Image.asset("assets/icon/paris1.jpg"),
        Image.asset("assets/icon/tokyo.jpg")
      ],),
    );
  }
}