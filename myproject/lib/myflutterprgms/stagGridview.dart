
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:myproject/myflutterprgms/customewidget.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => const MaterialApp(
            useInheritedMediaQuery: true,
            home: stgrid(),
            debugShowCheckedModeBanner: false,
          )));
}
// ignore: camel_case_types
class stgrid extends StatelessWidget {
  const stgrid ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: StaggeredGrid.count(
          crosAxisCount: 3,
          mainAxisSpacing:20,
          crossAxisSpacing:20,
          children: [
            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 2,
              child:customwidget(bgColor:Colors.grey,title: const Text("Hello")
              , onpress: (){}, icon: const Icon(Icons.ac_unit
              ))),
             StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child:Card(color: Colors.green,)
            )
          ]
        )
          
        ),
      );
    
  }
}