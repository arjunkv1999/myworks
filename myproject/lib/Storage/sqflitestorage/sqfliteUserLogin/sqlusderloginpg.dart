import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:myproject/Storage/sqflitestorage/sqfliteUserLogin/userhelper.dart';
import 'package:myproject/Storage/sqflitestorage/sqfliteUserLogin/usermainpg.dart';
import 'package:myproject/Storage/sqflitestorage/sqfliteUserLogin/userregistrtionpg.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => const MaterialApp(
            useInheritedMediaQuery: true,
            home: loginsqlpg(),
            debugShowCheckedModeBanner: false,
          )));
}
class loginsqlpg extends StatefulWidget {
  const loginsqlpg({super.key});

  @override
  State<loginsqlpg> createState() => _loginsqlpgState();
}

class _loginsqlpgState extends State<loginsqlpg> {
  var  formkey = GlobalKey<FormState>();
  final TextEditingController conemail = TextEditingController();
  final TextEditingController conpass = TextEditingController();

  void logincheck(String email, String password) async {
    var data = await USRHelper.CheckLogin(email,password);

    if(data.isNotEmpty){
      Navigator.pushReplacement(context, 
      MaterialPageRoute(builder: (context)=>const userlogpg()));
      print("Login Success");
    }else if (data.isNotEmpty){
      Navigator.pushReplacement(context, 
      MaterialPageRoute(builder: (context)=>const sqlusrregpg()));
      print("Login Failed");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("LOGIN PAGE",style: TextStyle(
            backgroundColor: Colors.blueAccent,fontWeight: FontWeight.bold),),
          const SizedBox(height: 20,),
          TextField(
           decoration:InputDecoration(
            prefixIcon: const Icon(Icons.account_box_sharp),
            hintText: "UserName",
            labelText: "UserName",
            helperText: "UserName should be email or phonenumber",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))
          ) ,),
           Padding(padding: const EdgeInsets.all(8.0),
           child: TextField(
            obscureText: true,
            obscuringCharacter: "*",
            decoration: InputDecoration(
            prefixIcon: const Icon(Icons.password),
            suffixIcon: const Icon(Icons.visibility_off),
            hintText: "Password",
            labelText: "Password",
            helperText: "Password length grater than 6",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))
          ),),),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child:ElevatedButton(
              onPressed:(){
                final valid = formkey.currentState!.validate();

                if(valid){
                  logincheck(conemail.text,conpass.text);
                }
              },
              child:const Text(
               "Login",
            style: TextStyle(fontSize: 15),
          )),),
          TextButton(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>  const sqlusrregpg()));
            },
            child: const Text("Not a User?? SignUp Now!",
            style: TextStyle(fontSize: 15),)),
          
      ],
      ),
    );
    
  }
}