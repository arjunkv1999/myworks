import 'package:device_preview/device_preview.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            useInheritedMediaQuery: true,
            home: Expansion(),
            debugShowCheckedModeBanner: false,
          )));
}
class Expansion extends StatefulWidget {
  
  

  @override
  State<Expansion> createState() => _ExpansionState();
}
var card1;
class _ExpansionState extends State<Expansion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expansion Card"),
      ),
      body: ListView(
        children: [
          ExpansionTileCard(
            key: card1, 
            title: const Text("TAP ME!!!"),
            leading: const CircleAvatar(child: Text("1"),),
            subtitle: const Text("Tap to Expand"),
            children: const [
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.purple,),
                title: Text("purple"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.green,),
                title: Text("Green"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.pink,),
                title: Text("pink"),
              ),
            ],

          ),
        ],
      ),
    );
  }
}