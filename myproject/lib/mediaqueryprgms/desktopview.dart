import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => const MaterialApp(
            useInheritedMediaQuery: true,
            home: Mydesktopview(),
            debugShowCheckedModeBanner: false,
          )));
}
class Mydesktopview  extends StatelessWidget {
  const Mydesktopview ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent[200],
      appBar: AppBar(
        title: Text("D E S K T O P"),
    ),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 16/9,
                    child: Container(
                      color: Colors.redAccent[400],
                    ),),
                ),
                //comment section & recommended videos
                Expanded(
                  child: ListView.builder(itemCount: 8,
                    itemBuilder: (context,index){
                       return Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Container(
                          color: Colors.redAccent[300],
                          height: 120,
                         ),
                       );
                    }))
              ],
            )),
            // second comment
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                color: Colors.redAccent[300],
              ),
            )
        ],
      ),
    ),
    );
  }
}