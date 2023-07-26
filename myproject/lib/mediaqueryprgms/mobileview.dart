import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class mobile_body extends StatelessWidget {
  const mobile_body ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent[200],
      appBar: AppBar(
        title: Text("M O B I L E"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: AspectRatio(
                aspectRatio: 16/9,
                child: Container(
                  color: Colors.redAccent[400],
                ),
                ),
                ),
                //comment section & recomended videos
                Expanded(child: child)
          ],
        ),),
    );
  }
}