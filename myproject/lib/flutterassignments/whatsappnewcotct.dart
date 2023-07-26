import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(backgroundColor:Colors.white,
      builder: (BuildContext context) => MaterialApp(
        theme: ThemeData(
                scaffoldBackgroundColor: Colors.white,
                appBarTheme: const AppBarTheme(color: Colors.green)),
            useInheritedMediaQuery: true,
            home: const whatcontct(),
            debugShowCheckedModeBanner: false,
            
          )));
}
// ignore: camel_case_types
class whatcontct extends StatelessWidget {
  const whatcontct ({super.key});

  @override
  Widget build(BuildContext context) {
   

    return  Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Select contacts",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
            Text(
              "248 contacts",
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
     actions: const [
              Padding(
                padding: EdgeInsets.only(top: 12, right: 20),
                child: Icon(
                  Icons.search,
                  size: 28,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12, right: 6),
                child: Icon(
                  Icons.menu,
                  size: 28,
                ),
              ),
     ]
      ),
      body:
       ListView(
          children:   const [
            ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.group,
                  color: Colors.white,
                ),
                 backgroundColor: Color(0xFF25D366),
              ),
              title: Text(
                "New group",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.person_add,
                  color: Colors.white,
                ),
                 backgroundColor: Color(0xFF25D366),
              ),
              title: Text(
                "New contact",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.groups,
                  color: Colors.white,
                ),
                 backgroundColor: Color(0xFF25D366),
              ),
              title: Text(
                "New community",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Contacts on WhatsApp",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            
                  ListTile(
              leading: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(backgroundImage: AssetImage("assets/icon/im5.png"),),
              ),
              title: Text("Aanand"),
              subtitle: Text("Hey there! I am using WhatsApp"),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(backgroundImage: AssetImage("assets/icon/im2.png"),),
              ),
              title: Text("Aashika"),
              subtitle: Text("Let ur choice define u....Not ur circumstances...."),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(backgroundImage: AssetImage("assets/icon/im1.png"),),
              ),
              title: Text("Abhilash"),
              subtitle: Text("A L I V e"),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(backgroundImage: AssetImage("assets/icon/im4.png"),),
              ),
              title: Text("Abhishek"),
              subtitle: Text("#.,"),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(backgroundImage: AssetImage("assets/icon/im3.png"),),
              ),
              title: Text("Aiswarya"),
              subtitle: Text("First Learn.Then leave the L..."),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(backgroundImage: AssetImage("assets/icon/im4.png"),),
              ),
              title: Text("Ajil"),
              subtitle: Text("Its not much,but its home"),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(backgroundImage: AssetImage("assets/icon/im3.png"),),
              ),
              title: Text("Anagha"),
              subtitle: Text("RISE LIKE A PHOENIX"),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(backgroundImage: AssetImage("assets/icon/im1.png"),),
              ),
              title: Text("Anujith"),
              subtitle: Text("No Gains without Pain"),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(backgroundImage: AssetImage("assets/icon/im5.png"),),
              ),
              title: Text("Bijoy"),
              subtitle: Text("< K A R M A >"),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(backgroundImage: AssetImage("assets/icon/im2.png"),),
              ),
              title: Text("Divya"),
              subtitle: Text("-> BORN TO WIN <-"),
            ),
          ] 
      ),
    );
  }
}