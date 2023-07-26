import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) =>  MaterialApp(
            useInheritedMediaQuery: true,
            home: mysliver1(),
            debugShowCheckedModeBanner: false,
          )));
}
class mysliver1 extends StatelessWidget {
  var color=[900,880,700,600,500,730,560];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            floating: true,
            pinned: true,
            title: const Text("Custom AppBar"),
            actions:[
              IconButton(onPressed: (){},icon:Icon(Icons.shopping_cart)),
              IconButton(onPressed: (){},icon:Icon(Icons.favorite)),
            ],
            bottom: AppBar(
              title: Container(height: 40,
              width: double.infinity,
              color: Colors.white,
              child: const TextField(decoration: InputDecoration(
                hintText: "Search Something",
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.camera_alt),
              ))),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              height: 80,
              child: const Text(""),
              color: Colors.red[color[index]],
            );
          })),
        ],
      ),
    );
  }
}