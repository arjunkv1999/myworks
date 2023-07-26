import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) =>  MaterialApp(
            useInheritedMediaQuery: true,
            home: listviewsep(),
            debugShowCheckedModeBanner: false,
          )));
}
class listviewsep extends StatelessWidget {
  
var data= ["data1","data2","data3","data4","data5","data6","data7"];
var sepdata= ["item1","item2","item3","item4","item5","item6","item7"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("my list with Seperator"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/icon/bg.jpg"),
          fit:BoxFit.fill)
        ),
        child: ListView.separated(itemBuilder: (context,index){
          return Card(child:Text(data[index]));
        }, 
        separatorBuilder: (context,index){
          return Text(sepdata[index]);
        },
         itemCount: data.length),
      ),
    );
  }
}