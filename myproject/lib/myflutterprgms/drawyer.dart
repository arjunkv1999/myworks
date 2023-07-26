import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => const MaterialApp(
            useInheritedMediaQuery: true,
            home: mydrawywer(),
            debugShowCheckedModeBanner: false,
          )));
}
// ignore: camel_case_types
class mydrawywer extends StatelessWidget {
  const mydrawywer ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Drawer"),),
      drawer: Drawer(child: ListView(
        children: const [
          UserAccountsDrawerHeader(accountName: Text("Arjun K V"),
           accountEmail: Text("arjunkvpunnad@gmail.com"),
           currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage("assets/icon/bg.jpg"),
           ),),
           ListTile(
            leading: Icon(Icons.home),
            title:Text("Account")
           )
        ],
      )),
    );
  }
}