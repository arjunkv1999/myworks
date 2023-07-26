import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) =>  const MaterialApp(
            useInheritedMediaQuery: true,
            home: Size_test(),
            debugShowCheckedModeBanner: false,
          )));
}
class Size_test extends StatefulWidget {
  const Size_test ({super.key});

  @override
  State<Size_test> createState() => _Size_testState();
}

class _Size_testState extends State<Size_test> {
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;
    var screenorientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: Text("MediaQuery"),
        centerTitle: true,
      ),
      body: Center(child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("This device is $screenwidth x $screenheight"),
          const SizedBox(
            height: 20,
          ),
          screenwidth >= 840 && screenheight >= 480
          ? Container(
            height: 150,
            width: 750,
            color: Colors.green,
          )
          : Container(
            height: 200,
            width: 200,
            color: Colors.red,
          ),
          const SizedBox(
            height: 20,
          ),
          screenorientation == Orientation.portrait
          ? const Text("This device is in portrait mode")
          : const Text("this device is in landscape mode"),
        ],
      )),
    );
  }
}