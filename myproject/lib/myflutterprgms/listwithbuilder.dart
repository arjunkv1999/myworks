import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => const MaterialApp(
            useInheritedMediaQuery: true,
            home: list_builder(),
            debugShowCheckedModeBanner: false,
          )));
}
// ignore: camel_case_types
class list_builder extends StatelessWidget {
  const list_builder ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("My list"),
      ),
      body:ListView.builder(itemBuilder: (context, index){
        return const Card(
          child:ListTile(title: Text("apple"),subtitle: Text("10.5 \$"),
          leading: Icon(Icons.apple),
          trailing: Icon(Icons.shopping_cart_rounded),
          ) 
        );
      },
      ),
    );
  }
}