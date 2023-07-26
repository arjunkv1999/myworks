import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import '../flutterassignments/whatsapp.dart';
import '../flutterassignments/whatsappnewcotct.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) =>  const MaterialApp(
            useInheritedMediaQuery: true,
            home: Mytab(),
            debugShowCheckedModeBanner: false,
          )));
}
class Mytab extends StatelessWidget {
  const Mytab ({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          actions: [
            Icon(Icons.camera_alt),
            Icon(Icons.search),
            PopupMenuBotton(itemBuilder:(context){
              return [
                const PopupMenuItem(child:Text("New Broadcast")),
                const PopupMenuItem(child:Text("New Group")),
                const PopupMenuItem(child:Text("Link Device")),
                const PopupMenuItem(child:Text("Startted Massage")),
                const PopupMenuItem(child:Text("Payment")),
                const PopupMenuItem(child:Text("Settings")),
              ];
            })
          ],
          bottom:  TabBar(
            labelPadding: Edgeinsets.zero,
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .1,
              child: Tab(icon: Icon(Icons.people),)),
           SizedBox(
              width: MediaQuery.of(context).size.width * .3,
              child: Tab(text: "Chat",)),
            SizedBox(
              width: MediaQuery.of(context).size.width * .3,
              child:Tab(text: "Status",)),
            SizedBox(
              width: MediaQuery.of(context).size.width * .3,
              child:Tab(text: "Call",)),
            ]),
        ),
        body: const TabBarView(children: [Center(child: Text("COMMUNITY"))
        ,whatchat(),Center(child: Text("STATUS")),
        whatcontct()]),
      ),);
  }
}