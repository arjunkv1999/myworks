import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) =>  const MaterialApp(
            useInheritedMediaQuery: true,
            home: FittedBoxx(),
            debugShowCheckedModeBanner: false,
          )));
}
class FittedBoxx extends StatefulWidget {
  const FittedBoxx({super.key});

  @override
  State<FittedBoxx> createState() => _FittedBoxxState();
}

class _FittedBoxxState extends State<FittedBoxx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FittedBox"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FittedBox(
            child: Card(
              color: Colors.redAccent,
              child: Row(
                children: [
                  Container(child: const Text("Random Data"),),
                  Container(height: 200,child: Image.asset("assets/icon/bg.jpg"),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}