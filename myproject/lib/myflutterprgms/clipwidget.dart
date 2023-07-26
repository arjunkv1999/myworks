import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) =>  const MaterialApp(
            useInheritedMediaQuery: true,
            home: clipwid(),
            debugShowCheckedModeBanner: false,
          )));
}
class clipwid extends StatelessWidget {
  const clipwid ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: [
          ClipRect(
            child: Container(
              child: Align(
                alignment: Alignment.center,
                widthFactor: .5,
                heightFactor: .8,
                child: Image.network(
                  "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.network("https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
          ),
           ClipOval(
            child: Container(
              child: Image.network(
                "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
            ),
          ),
          ClipPath(
            clipper: MovieTicket,
          )
        ],
      )
    );
  }
}