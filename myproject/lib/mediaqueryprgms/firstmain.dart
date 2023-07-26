import 'package:flutter/material.dart';
import 'package:myproject/mediaqueryprgms/homepageapp.dart';

class mymainmed extends StatelessWidget {
  const mymainmed({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}