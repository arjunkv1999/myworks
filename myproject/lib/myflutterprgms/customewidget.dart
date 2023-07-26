import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
class customwidget extends StatelessWidget {
  final Color? bgColor;
  final Text title; 
  final Icon icon;
  VoidCallback onpress;

  
  customwidget({this.bgColor,required this.title,required this.onpress,required this.icon});

  @override
  Widget build(BuildContext context) {
    return  Card(color : bgColor,
          child: ListTile(
            leading: icon,
            title: title,
            onTap: onpress,
          ),
    );
  }
}