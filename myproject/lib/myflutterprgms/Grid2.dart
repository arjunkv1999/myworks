import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => const MaterialApp(
            useInheritedMediaQuery: true,
            home: mygrid2(),
            debugShowCheckedModeBanner: false,
          )));
}
// ignore: camel_case_types
class mygrid2 extends StatelessWidget {
  const mygrid2 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid 1"),
      ),
      body: GridView.builder(
        itemCount: 10,
        gridDelegate: 
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
        crossAxisSpacing: 20,mainAxisSpacing: 20), 
        itemBuilder: (context,index){
          return Card(
            child: Center(child: Text("Grid $index")),
          );
        })
    );
  }
}