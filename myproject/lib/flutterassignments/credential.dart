import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:myproject/flutterassignments/homepage.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => const MaterialApp(
            useInheritedMediaQuery: true,
            home: registration(),
            debugShowCheckedModeBanner: false,
          )));
}
// ignore: camel_case_types
class registration extends StatefulWidget {
  const registration({super.key});

  @override
  State<registration> createState() => _registrationState();
}

// ignore: camel_case_types
class _registrationState extends State<registration> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/icon/bg.jpg"),
                  fit: BoxFit.fill)
          ),
          
      child: Form(
        key: formkey,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, bottom: 20),
          child:
              Image.asset("assets/icon/Meditation.png", height: 300, width: 300),
        ),
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          "WELCOME BUDDY",
        style: TextStyle(fontSize: 30,color: Colors.white,
        fontWeight: FontWeight.bold),
        ),
      ),
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          "Please Fill Your Details",
        style: TextStyle(fontSize: 15,color: Colors.white,
        fontWeight: FontWeight.bold),
        ),
      ),
     Padding(
       padding: const EdgeInsets.all(8.0),
       child: TextFormField(decoration:
         InputDecoration(
          filled: true,fillColor: Colors.white70,
          prefixIcon: const Icon(Icons.account_box_sharp),
          hintText:"Your UserName",
          labelText: "UserName",
          helperText: "UserName should be a valid email",
          helperStyle: const TextStyle(fontSize: 15,color: Colors.orange),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
        ),
        validator: (uname){
              if(uname!.isEmpty || !uname.contains('@') || !uname.contains('.')){
                return 'Enter a valid UserName';
              }else{
                return null;
              }
             }
            ),
     ),
     Padding(
       padding: const EdgeInsets.all(8.0),
       child: TextFormField(
        decoration:
           InputDecoration(
            filled: true,fillColor: Colors.white70,
            prefixIcon: const Icon(Icons.phone),
            hintText: "Your Mobile Number",
            helperText: "Phone Number should be valid ",
            helperStyle: const TextStyle(fontSize: 15,color: Colors.orange),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
          ),
          validator: (password){
                  if(password!.isEmpty || password!.length<10){
                    return 'Enter valid Phone Number';
                  }else{
                    return null;
                  }
                }
       ),
     ),
     Padding(
       padding: const EdgeInsets.all(8.0),
       child: TextFormField(
        obscureText: showpass,
        obscuringCharacter: "*",
        decoration: InputDecoration(
          filled: true,fillColor: Colors.white70,
          prefixIcon: const Icon(Icons.password),
          suffixIcon:  IconButton(
                  onPressed: () {
                    setState(() {
                      if(showpass){
                        showpass = false;
                      }else {
                        showpass = true;
                      }
                    });
                  }, 
                  icon: Icon(showpass == true
                  ? Icons.visibility_off : Icons.visibility)),
                  hintText: "Enter Your Password",
                labelText: "Password",
                helperText: "Password length grater than 6",
                helperStyle: const TextStyle(fontSize: 15,color: Colors.orange),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10))
        ),
         validator: (password){
                if(password!.isEmpty || password!.length<6){
                  return 'Enter valid Password';
                }else{
                  return null;
                }
              }
       ),
     ),
     Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child:ElevatedButton(
              onPressed:(){
                final valid = formkey.currentState!.validate();
                if(valid){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Home()));
                }
              },
              child:const Text(
               "Login",
            style: TextStyle(fontSize: 15),
          )),),
           TextButton(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder: (context)=> registration()));
            },
            child: const Text("Don't have account? SignUp",
            style: TextStyle(fontSize: 15),)
            ),  
      ],
      ),
      ),
    ));
  }
}