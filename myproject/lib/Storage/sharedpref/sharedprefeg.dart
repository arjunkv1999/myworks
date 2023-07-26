import 'package:flutter/material.dart';
import 'package:myproject/Storage/sharedpref/homeshre.dart';
import 'package:myproject/Storage/sharedpref/registrationshare.dart';
import 'package:myproject/myflutterprgms/login_with_validation.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Loginpagesh extends StatefulWidget {
  const Loginpagesh ({super.key});

  @override
  State<Loginpagesh> createState() => _LoginpageshState();
}

class _LoginpageshState extends State<Loginpagesh> {
  late SharedPreferences data;
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  late bool newuser;
  late String name;
  late String uname;
  late String pswd;

  @override
  void initState() {
    checkUser();
    getvalue();
  }
  void getvalue() async{
    data = await SharedPreferences.getInstance();
    setState(() {
      name = data.getString('name')!;
      uname = data.getString('username')!;
      pswd = data.getString('password')!;
    });
  }

  void checkUser() async{
    data = await SharedPreferences.getInstance();
    newuser = (data.getBool('newuser') ?? true);

    if(newuser == false){
      Navigator.push(context,
          MaterialPageRoute(builder: (context)=>const minehome()));
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shared Pref"),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset("assets/icon/loginpg.png",width: 200,height: 200,),
            const SizedBox(height: 50,),
            const Text(
              "Login Page",
              style: TextStyle(fontSize: 30),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: TextField(
                controller: username,
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.email_outlined),
                    border: OutlineInputBorder(), labelText: "Email"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: TextField(
                controller: password,
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.visibility_off),
                    border: OutlineInputBorder(), labelText: "Password"),
              ),
            ),
            Row(
              children: [
                TextButton(onPressed: (){}, child: const Text("Forgot Password")),
              const Padding(padding: EdgeInsets.only(left: 50,right: 5)),
             ElevatedButton(
                onPressed: () {
                  String uname = username.text;
                  String pswd = password.text;

                  if(username != '' && password !=''
                  && username == uname && password == pswd){
                    print("Successfull");
                    data.setBool('newuser', false);
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context)=>minehome()));
                  }
                },
                child: Text("Log_In")),
              ],
            ),
            
                
          TextButton(onPressed: (){
            Navigator.push(context, 
            MaterialPageRoute(builder: (context)=>registrationsh()));
          }, child: const Text("Not a User? SignIn")),
          ],
        ),
      ),
    );
  }
}