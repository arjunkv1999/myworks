import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => const MaterialApp(
            useInheritedMediaQuery: true,
            home: Homepage(),
            debugShowCheckedModeBanner: false,
          )));
}
class Homepage  extends StatelessWidget {
  const Homepage ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("My Shop"),
      ),
      body: ListView(
        children: const [
          Card(
          child: ListTile(title: Text("apple"),subtitle: Text("10.5 \$"),
          leading: Icon(Icons.apple),
          trailing: Icon(Icons.shopping_cart_rounded),),
          ),
        ],
      ),
    );
  }
}