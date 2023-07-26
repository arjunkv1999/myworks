import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) =>  MaterialApp(
            useInheritedMediaQuery: true,
            home: myorientation(),
            debugShowCheckedModeBanner: false,
          )));
}
class myorientation extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var orientation, size, height, width;

  @override
  Widget build(BuildContext context) {
    orientation = MediaQuery.of(context).orientation;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Orientation Media Query"),
        backgroundColor: Colors.green,
      ),
      // ignore: unrelated_type_equality_checks
      body: orientation == Orientation.portrait
      ? Container(
        color: Colors.blue,
        height: height / 3,
        width:  width / 3,
      )
      : Container(
        color: Colors.red,
        height: height / 2,
        width: width / 2,
      ),
    );
  }
}