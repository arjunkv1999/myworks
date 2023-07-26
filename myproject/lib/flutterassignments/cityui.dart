import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(backgroundColor:Colors.white,
      builder: (BuildContext context) => MaterialApp(
        theme: ThemeData(
                scaffoldBackgroundColor: Colors.white,
                appBarTheme: const AppBarTheme(color: Colors.yellowAccent)),
            useInheritedMediaQuery: true,
            home: const cityname(),
            debugShowCheckedModeBanner: false,
            
          )));
}
// ignore: camel_case_types
class cityname extends StatelessWidget {
  const cityname ({super.key});

  @override
  Widget build(BuildContext context) {
    var place=["DELHI","LONDON","VANCOUVER","NEW YORK","PARIS","TOKYO"];
    var country=["INDIA","BRITAN","CANADA","AMERICA","FRANCE","JAPAN"];
    var images=["assets/icon/delhi1.jpg",
    "assets/icon/london1.jpg","assets/icon/vancouver.jpg"
    ,"assets/icon/newyork.jpg","assets/icon/paris1.jpg",
    "assets/icon/tokyo.jpg"];
    var pop=["POPULATION:10M","POPULATION:9M","POPULATION:7M",
    "POPULATION:11M","POPULATION:5M","POPULATION:6M"];
    return Scaffold(
      appBar:AppBar(
        title:const Text("Cities around  World",style: TextStyle(color: Colors.black),),
      ),
      body: ListView(
          children: List.generate(6,
                (index) =>
                Card(
                  child: ListTile(
                    title: Text(place[index],style: const TextStyle(fontSize: 20),),
                    subtitle: Text("${country[index]}\n${pop[index]}",
                    style: const TextStyle(fontSize: 15),),isThreeLine: true,
                    leading: Image.asset(images[index]),
                  )
                ),
           ) ),
      );
  
  }
}