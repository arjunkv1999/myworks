import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => const MaterialApp(
            useInheritedMediaQuery: true,
            home: mydrwer1(),
            debugShowCheckedModeBanner: false,
          )));
}
class mydrwer1 extends StatelessWidget {
  const mydrwer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Drawer"),),
      drawer: Drawer(
        child: Container(
          decoration: const BoxDecoration(gradient: LinearGradient(
            colors: [
              Colors.red,
              Colors.orange,
              Colors.deepOrange,
              Colors.redAccent
            ],begin: Alignment.topLeft,end: Alignment.bottomLeft)),
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(mainAxisSize: MainAxisSize.max
              ,children: [
                const ListTile(
                  leading: CircleAvatar(radius:50,
                  backgroundImage: AssetImage("assets/icon/johnsnow.jpg"),
                  ),
                       title: Text("Arjun K V"), 
                       subtitle: Text("Administrator"),),
                       const ListTile(
              leading: Icon(Icons.dashboard),
              title: Text("Dashboard"),
                       ),
                       const ListTile(
              leading: Icon(Icons.leaderboard),
              title: Text("Leads"),
                       ),
                       const ListTile(
              leading: Icon(Icons.people),
              title: Text("Clients"),
                       ),
                       const ListTile(
              leading: Icon(Icons.task),
              title: Text("Projects"),
                       ),
                       const ListTile(
              leading: Icon(Icons.nature_people),
              title: Text("Partners"),
                       ),
                       const ListTile(
              leading: Icon(Icons.subscriptions),
              title: Text("Subscription"),
                       ),const ListTile(
              leading: Icon(Icons.payment),
              title: Text("Payments"),
                       ),const ListTile(
              leading: Icon(Icons.verified_user_sharp),
              title: Text("Users"),
                       ),
                       const ListTile(
              leading: Icon(Icons.library_books),
              title: Text("Library"),
                       ),Expanded(
               child: Align(
                alignment: Alignment.bottomCenter,
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ElevatedButton(onPressed: (){}, child: const Text(
                        "Logout"
                   ),),
                 ),
               ),
                       )
                       ],
              ),
            ),
      ),
      ),
    );
  }
}