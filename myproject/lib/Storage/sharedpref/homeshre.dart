import 'package:flutter/material.dart';
import 'package:myproject/Storage/sharedpref/sharedprefeg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class minehome extends StatefulWidget {
  const minehome({super.key});

  @override
  State<minehome> createState() => _minehomeState();
}

class _minehomeState extends State<minehome> {
  late SharedPreferences data;
  late String username;
  @override
  void initState(){
    fetchname();
    super.initState();
  }

  void fetchname() async{
    data = await SharedPreferences.getInstance();
    setState(() {
      username = data.getString("username")!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
          const Center(
            child: Text("Hai , JOHN SNOW",
            style: TextStyle(fontSize: 25),),
          ),
        ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Loginpagesh()));
        }, child: const Text("LOG OUT")) ,
          ],
        
          ),
      ),
        
    );
  }
}