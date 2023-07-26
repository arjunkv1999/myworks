import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => const MaterialApp(
            useInheritedMediaQuery: true,
            home: mygrid4(),
            debugShowCheckedModeBanner: false,
          )));
}
// ignore: camel_case_types
class mygrid4 extends StatelessWidget {
  const mygrid4 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid 1"),
      ),
      body: GridView.custom(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        childrenDelegate: SliverChildBuilderDelegate((context, index) {
          return const Card(
            child: Image(image:AssetImage("assets/icon/Meditation.png")),
          );
        },childCount: 10))
    );
  }
}