import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:myproject/Storage/sharedpref/sharedprefeg.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => const MaterialApp(
            useInheritedMediaQuery: true,
            home: registrationsh(),
            debugShowCheckedModeBanner: false,
          )));
}
class registrationsh extends StatefulWidget {
  const registrationsh ({super.key});

  @override
  State<registrationsh> createState() => _registrationshState();
}

class _registrationshState extends State<registrationsh> {
  final name_controller     = TextEditingController();
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();
  late SharedPreferences data;

  @override
  void dispose(){
    name_controller.dispose();
    username_controller.dispose();
    password_controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shared Pref"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/icon/signuppg.png",width: 200,height: 200,),
            const Padding(padding: EdgeInsets.all(20)),
            const Text(
              "Registration Page",
              style: TextStyle(fontSize: 30),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: TextField(
                controller: name_controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Name",),
              ),
            ),
            
            Padding(
              padding: EdgeInsets.all(5),
              child: TextField(
                controller: username_controller,
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.email_outlined),
                border: OutlineInputBorder(), labelText: "Email"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: TextField(
                controller: password_controller,
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.visibility_off),
                    border: OutlineInputBorder(), labelText: "Password"),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                 registerr();
                },
                child: const Text("SignUp")),
                TextButton(onPressed: (){
            Navigator.push(context, 
            MaterialPageRoute(builder: (context)=>const Loginpagesh()));
          }, child: const Text("Already a user ? Login")),
          ],
        ),
      ),
    );
  }
  void registerr() async{
  data = await SharedPreferences.getInstance();
  String name = name_controller.text;
  String username = username_controller.text;
  String password = password_controller.text;

  if (username != '' && password != ''){
    data.setString('name', name);
    data.setString('username',username);
    data.setString('password',password);
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Loginpagesh()));
  }
}
}
