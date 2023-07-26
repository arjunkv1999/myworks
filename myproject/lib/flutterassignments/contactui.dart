import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(backgroundColor:Colors.white,
      builder: (BuildContext context) => MaterialApp(
        theme: ThemeData(
                scaffoldBackgroundColor: Colors.white,
                appBarTheme: const AppBarTheme(color: Colors.blue)),
            useInheritedMediaQuery: true,
            home: const contactpg(),
            debugShowCheckedModeBanner: false,
            
          )));
}
// ignore: camel_case_types
class contactpg extends StatelessWidget {
  const contactpg ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
         leading:
         const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
          title: const Text("Contacts",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),),
          actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: PopupMenuButton(
                iconSize: 28,
                itemBuilder: (context) => [
                  const PopupMenuItem(
                      child: Text(
                        "Settings",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      )),
                ]),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: "Search",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
       const Card(
              child: ListTile(
                leading: CircleAvatar(
                  child:  Icon(Icons.group_outlined, color: Colors.white),
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
                title: Text(
                  "My Groups",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),)), 
                 const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person_outline,),
              ),
              title: Text("Aarav", 
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
              subtitle: Text("+91 8123459067"),
        ),
        const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person_outline,),
              ),
              title: Text("Abhinav",
               style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
              subtitle: Text("+91 9843568756"),
        ),
        const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person_outline,),
              ),
              title: Text("Abhijith", 
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
              subtitle: Text("+91 9087654321"),
        ),
        const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person_outline,),
              ),
              title: Text("Aabhishek", 
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
              subtitle: Text("+91 8345678903"),
        ),
        const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person_outline,),
              ),
              title: Text("Cilin", 
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
              subtitle: Text("+44 4265357567"),
        ),
        const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person_outline,),
              ),
              title: Text("Dinesh", 
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
              subtitle: Text("+91 6543253545"),
        ),
        const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person_outline,),
              ),
              title: Text("Deepu", 
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
              subtitle: Text("+91 8565754535"),
        ),
        const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person_outline,),
              ),
              title: Text("Elon Musk",
               style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
              subtitle: Text("+44 4678012345"),
        ),
        const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person_outline,),
              ),
              title: Text("Ganeesh", 
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
              subtitle: Text("+91 9526801507"),
        ),
        const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person_outline,),
              ),
              title: Text("Gokul", 
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
              subtitle: Text("+91 8345679043"),
        ),const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person_outline,),
              ),
              title: Text("Hishaam", 
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
              subtitle: Text("+91 7567890876"),
        ),const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person_outline,),
              ),
              title: Text("Lionel Andres Messi",
               style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
              subtitle: Text("+44 4567890341"),
        ),
        ]
        )
        ),
        floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_call),
        )
    );
  }
}