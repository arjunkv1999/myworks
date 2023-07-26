import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => const MaterialApp(
            useInheritedMediaQuery: true,
            home: Home(),
            debugShowCheckedModeBanner: false,
          )));
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
 Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/icon/bg.jpg"),
                  fit: BoxFit.fill)
          ),
      child: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 30),
          child:
              Image.asset("assets/icon/Meditation.png", height: 250, width: 250),
        ),
       const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          "WELCOME BUDDY",
        style: TextStyle(fontSize: 30,color: Colors.white,
        fontWeight: FontWeight.bold),
        ),
      ),
      ]
      ),
      ),
    ));
  }
}