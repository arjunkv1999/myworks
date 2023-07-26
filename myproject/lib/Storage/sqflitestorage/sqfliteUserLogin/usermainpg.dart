import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class userlogpg extends StatefulWidget {
  const userlogpg({super.key});

  @override
  State<userlogpg> createState() => _userlogpgState();
}

class _userlogpgState extends State<userlogpg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User login & SignUp",
        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        children:  [
          Image.asset("myproject/assets/icon/wom.png",width: 200,height: 200),
          Padding(padding: EdgeInsets.all(8.0)),

          ElevatedButton(onPressed: (){}, child: Text("Login"))
        ],
      ),
      
    );
  }
}