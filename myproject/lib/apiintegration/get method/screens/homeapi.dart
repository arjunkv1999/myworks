
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(backgroundColor:Colors.white,
      builder: (BuildContext context) => MaterialApp(
        theme: ThemeData(
                scaffoldBackgroundColor: Colors.white,
                appBarTheme: const AppBarTheme(color: Colors.yellowAccent)),
            useInheritedMediaQuery: true,
            home: const HttpHome(),
            debugShowCheckedModeBanner: false,
            
          )));
}

class HttpHomextends StatelessWidget {
  const HttpHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}