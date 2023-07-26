import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
void main() {
 runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
     useInheritedMediaQuery: true,
     home: loginpg(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}
class loginpg extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/icon/profile.png",width: 200,height: 200,),
          Padding(padding: const EdgeInsets.all(8.0),
           child: TextField(
            
            decoration:InputDecoration(
            prefixIcon: Icon(Icons.account_box_sharp),
            hintText: "UserName",
            labelText: "UserName",
            helperText: "UserName should be email or phonenumber",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))
          ) ,),),
           Padding(padding: const EdgeInsets.all(8.0),
           child: TextField(
            obscureText: true,
            obscuringCharacter: "*",
            decoration: InputDecoration(
            prefixIcon: Icon(Icons.password),
            suffixIcon: Icon(Icons.visibility_off),
            hintText: "Password",
            labelText: "Password",
            helperText: "Password length grater than 6",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))
          ),),),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child:ElevatedButton(
              onPressed:(){},
              child:const Text(
               "Login",
            style: TextStyle(fontSize: 15),
          )),),
          TextButton(
            onPressed:(){},
            child: const Text("Not a User?? SignUp Now!",
            style: TextStyle(fontSize: 15),)),
        ],
      ),
    ));
  }
}