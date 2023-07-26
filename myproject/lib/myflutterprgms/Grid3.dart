import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:myproject/assignment/super_keyword.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => const MaterialApp(
            useInheritedMediaQuery: true,
            home: mygrid3(),
            debugShowCheckedModeBanner: false,
          )));
}
// ignore: camel_case_types
class mygrid3 extends StatelessWidget {
  const mygrid3 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid 1"),
      ),
      body: GridView.count(crossAxisCount: 2,
      children: List.generate(20, (index) {
        return Card(
          child: Column(
            children: [
              Image.asset("assets/icon/delhi1.jpg"),
              const Center(child: Text("INDIA"),)
            ],
          )
        );
      }),)
    );
  }
}