import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => const MaterialApp(
            useInheritedMediaQuery: true,
            home: startpage1(),
            debugShowCheckedModeBanner: false,
          )));
}
class startpage1 extends StatefulWidget {
  const startpage1({super.key});

  @override
  State<startpage1> createState() => _startpage1State();
}

class _startpage1State extends State<startpage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(decoration: 
        const BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey,blurRadius: 5,
                spreadRadius: 6,
                offset: Offset(5, 6)
              ),
            ],),
        child: const Icon(Icons.arrow_back_ios_new_sharp)),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}