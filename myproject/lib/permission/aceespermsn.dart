import 'package:flutter/material.dart';
class Mypermisn extends StatefulWidget {
  @override
  State<Mypermisn> createState() => _MypermisnState();
}

class _MypermisnState extends State<Mypermisn> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("permission"),
      ),
    body:  Center(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
        
        ),),
      
    ),
    );
  }
}

void requestCameraPermission() async {
  var status = await Permission.camera.status;
  if (status.isGranted) {
    print("Permission Granted");
  }else if (status.isDenied){
    if (await Permission.camera.request().isGranted) {
      print("Permission was Granted");
    }
  }
  
}