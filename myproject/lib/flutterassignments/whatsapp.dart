import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(backgroundColor:Colors.white,
      builder: (BuildContext context) => MaterialApp(
        theme: ThemeData(
                scaffoldBackgroundColor: Colors.white,
                appBarTheme: const AppBarTheme(color: Colors.green)),
            useInheritedMediaQuery: true,
            home: const whatchat(),
            debugShowCheckedModeBanner: false,
            
          )));
}
// ignore: camel_case_types
class whatchat extends StatelessWidget {
  const whatchat({super.key});
  @override
  Widget build(BuildContext context) {
    var image = ["assets/icon/im5.png",
    "assets/icon/im2.png","assets/icon/im1.png",
    "assets/icon/im4.png","assets/icon/im3.png",
    "assets/icon/im4.png",
    "assets/icon/im3.png","assets/icon/im1.png",
    "assets/icon/im5.png","assets/icon/im2.png"];

    var name=["Tony Stark","Lisa John"," Mathew","John Snow","Deneris Tergarian"
    ,"Thomas","Ann","Kevin Peter","Lionel Messi","Kristina"];

    var tet = ["Hi are you comming for party","Do you send the money",
    "Missed voice call","Photo","Hello Dear","Ping Me"
    ,"Photo","Missed Video Call","Hey was a super Goal","Are you there!"];

    var dt=["10:00","11/03/2023","yesterday","02:30","yesterday","12:45","10/09/2023",
    "yesterday","09:00" ,"04/07/2022"];
    return  Scaffold(
      appBar: AppBar(
        title:  const Text("WhatsApp"),
     actions: const [
              Padding(
                padding: EdgeInsets.only(top: 12, right: 20),
                child: Icon(
                  Icons.camera_alt_outlined,
                  size: 28,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12, right: 6),
                child: Icon(
                  Icons.search,
                  size: 28,
                ),
              ),
               Padding(
                padding: EdgeInsets.only(top: 12, right: 6),
                child: Icon(
                  Icons.menu,
                  size: 28,
                ),
              ),
              ] ),
      
      body: ListView(
          children: List.generate(10,
                (index) =>
                Card(
                  child: ListTile(
                    title:  Text(name[index]),
                    subtitle: Text(tet[index]),
                    trailing: Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Text(dt[index]),
                    ),
                    leading: Image.asset(image[index]),
                    
                  ),
                ),
    )
      ),);
  }
}