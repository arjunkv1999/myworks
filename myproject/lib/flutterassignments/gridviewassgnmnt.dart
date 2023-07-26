import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) =>  MaterialApp(
            useInheritedMediaQuery: true,
            home: mygridassgnmnt(),
            debugShowCheckedModeBanner: false,
          )));
}
class mygridassgnmnt extends StatelessWidget {
  var icon=["assets/icon/audioplay.png","assets/icon/award.png",
  "assets/icon/calevents.png","assets/icon/camimg.png","assets/icon/checkoutcart.png",
  "assets/icon/emailenvp.png","assets/icon/eyesight.png","assets/icon/gear.png",
  "assets/icon/netgraph.png","assets/icon/upload.png","assets/icon/imagepho.png",
  "assets/icon/fav.png"];

  var color=[ Colors.lightBlue,Colors.deepOrange,Colors.cyanAccent,Colors.pinkAccent,
  Colors.indigo,Colors.green,Colors.yellowAccent,Colors.red,Colors.deepPurple,
  Colors.amberAccent,Colors.lime,Colors.indigoAccent];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
         title: const Text("GRID VIEW"),
      ),
      body:  GridView.count(crossAxisCount: 2,
      children: List.generate(12, (index) {
        return Padding(
          padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
          child: Container(
            decoration: BoxDecoration(boxShadow: const [
              BoxShadow(
                color: Colors.grey,blurRadius: 5,
                spreadRadius: 6,
                offset: Offset(5, 6)
              ),
            ],
            borderRadius: BorderRadius.circular(30),color: color[index],),
               child: Center(
          child: ListTile(
            title: const Text("Heart \nShaker"),
            leading: Image.asset(icon[index]),
          ),
               ), ),
        );
      })
    ));
  }
}