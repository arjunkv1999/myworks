import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => const MaterialApp(
            useInheritedMediaQuery: true,
            home: expaaaand(),
            debugShowCheckedModeBanner: false,
          )));
}
class expaaaand extends StatelessWidget {
  const expaaaand({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: 150,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
              ),
            ),
             Container(
              width: 150,
              height: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
              ),
            ),
             Expanded(
               child: Container(
                width: 150,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
                ),
                         ),
             ),
          ],
        ),
      ),
    );
  }
}