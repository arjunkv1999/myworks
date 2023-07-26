import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
void main() {
 runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
     useInheritedMediaQuery: true,
     home: stackex(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}
class stackex extends StatelessWidget {
  const stackex ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack in UI"),
      ),
      body:Center(
        child: Stack(
          children: [
            Container(color: Colors.black,height: 500,width: 500),
            Positioned(child:Container(color:Colors.green,height: 350,width: 350),
            left:30,top:20,right:30),
            Positioned(child: Container(color:Colors.red,height: 250,width: 250),
            left:40,top:30,right:40),
            Positioned(child: Container(color:Colors.yellowAccent,height: 150,width: 150),
            left:50,top:40,right:50),
            Positioned(child: Container(color:Colors.blue,height: 50,width: 50),
            left:60,top:50,right:60),
          ],
        ),
      ),
    );
  }
}    