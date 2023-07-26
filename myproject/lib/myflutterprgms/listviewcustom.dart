import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) =>  MaterialApp(
            useInheritedMediaQuery: true,
            home: listviewcustom(),
            debugShowCheckedModeBanner: false,
          )));
}
class listviewcustom extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview Custom"),
      ),
      body: ListView.custom(
        // childrenDelegate: SliverChildListDelegate(
        // [
        //   const Icon(Icons.access_time_filled_rounded),
        //   const Icon(Icons.access_time_filled_rounded),
        //   const Icon(Icons.access_time_filled_rounded),
        //   const Icon(Icons.access_time_filled_rounded),
        //   const Icon(Icons.access_time_filled_rounded),
        //   const Icon(Icons.access_time_filled_rounded),
        //   const Icon(Icons.access_time_filled_rounded),
        //   const Icon(Icons.access_time_filled_rounded)
          
        // ]
      
      //By using sliverchildbuilder
     childrenDelegate:SliverChildBuilderDelegate((context, index) {
         return Card(
           color: Colors.amberAccent[Color.[index]],
        );
       })
    ));
  }
}