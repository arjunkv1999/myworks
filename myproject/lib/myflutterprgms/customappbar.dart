import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) =>  const MaterialApp(
            useInheritedMediaQuery: true,
            home: cusappbar(),
            debugShowCheckedModeBanner: false,
          )));
}
class cusappbar extends StatelessWidget {
  const cusappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text("Custom App Bar"),
        backgroundColor: Colors.green.withOpacity(.01),
        elevation: 0,
      ),
      body: Image.asset("assets/icon/bg.jpg",width: double.infinity,
      height: double.infinity,fit: BoxFit.fill,),
      
    );
  }
}