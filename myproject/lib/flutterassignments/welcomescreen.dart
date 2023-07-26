//import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:myproject/flutterassignments/credential.dart';
import 'package:myproject/flutterassignments/loginscreen.dart';
// void main() {
//   runApp(DevicePreview(
//       builder: (BuildContext context) => const MaterialApp(
//             useInheritedMediaQuery: true,
//             home: welcomescreen(),
//             debugShowCheckedModeBanner: false,
//           )));
// }
// ignore: camel_case_types
class welcomescreen extends StatefulWidget {
  const welcomescreen({super.key});

  @override
  State<welcomescreen> createState() => _welcomescreenState();
}

// ignore: camel_case_types
class _welcomescreenState extends State<welcomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/icon/bg.jpg"),
                  fit: BoxFit.fill)
          ),
      child: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, bottom: 20),
          child:
              Image.asset("assets/icon/Meditation.png", height: 150, width: 150),
        ),
       const Padding(
         padding: EdgeInsets.all(8.0),
         child: Text(
          "Hi There!!",
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold
          ,color: Colors.white),
         ),
       ),
       const Padding(
         padding: EdgeInsets.all(8.0),
         child: Text(
          "To keep connected with us please select your option",
          style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold
          ,color: Colors.white),
         ),
       ),
       Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child:ElevatedButton(
              onPressed:(){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> const loginscreen()));
              },
              child:const Text(
               "LOG IN",
            style: TextStyle(fontSize: 15),
          )),),
       Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child:ElevatedButton(
              onPressed:(){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> const registration()));
              },
              child:const Text(
               "SIGN IN",
            style: TextStyle(fontSize: 15),
          )),),
      ],
      ),
      ),
    ));
  }
}