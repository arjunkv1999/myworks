import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => const MaterialApp(
            useInheritedMediaQuery: true,
            home: profileui1(),
            debugShowCheckedModeBanner: false,
          )));
}

// ignore: camel_case_types
class profileui1 extends StatelessWidget {
  const profileui1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_sharp,
          color: Colors.black,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu_outlined,
                color: Colors.black,
              ))
        ],
      ),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding:
                    EdgeInsets.only(top: 20.0, bottom: 16, left: 16, right: 16),
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("assets/icon/johnsnow.jpg",
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      icon: const FaIcon(FontAwesomeIcons.facebook,color: Colors.lightBlue,size: 30,),
                      onPressed: () {}),
                  IconButton(
                      icon: const FaIcon(FontAwesomeIcons.instagram,color: Colors.pinkAccent,size: 30,),
                      onPressed: () {}),
                  IconButton(
                      icon: const FaIcon(FontAwesomeIcons.twitter,color: Colors.blue,size: 30,),
                      onPressed: () {}),
                  IconButton(
                      icon: const FaIcon(FontAwesomeIcons.snapchat,color: Colors.yellow,size: 30,),
                      onPressed: () {}),
                  IconButton(
                      icon: const FaIcon(FontAwesomeIcons.linkedin,color: Colors.blueAccent,size: 30,),
                      onPressed: () {}),
                  IconButton(
                      icon: const FaIcon(FontAwesomeIcons.github,size: 30,),
                      onPressed: () {}),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 25),
                child: Text('ARJUN K V',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
              ),const Text('@JohnSnow'),
              const Padding(
                padding: EdgeInsets.only(top: 28,bottom: 17),
                child: Text('Mobile App Developer',
                style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.normal,color: Colors.black),),
              ),
              Container(
                height:  MediaQuery.of(context).size.height * .4,
                child: SingleChildScrollView(
                  child: Column(
                    children:  [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container( 
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),color: Colors.grey),
                          height: 50,width: 300,
                          child: const ListTile(
                            title: Text('Privacy',style: TextStyle(color: Colors.black)),
                            leading: Icon(Icons.privacy_tip_outlined,color: Colors.black,),
                            trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container( 
                          decoration: BoxDecoration(
                            borderRadius: 
                            BorderRadius.circular(20),color: Colors.grey),
                          height: 50,width: 300,
                          child: const ListTile(
                            title: Text('Purchse History',style: TextStyle(color: Colors.black)),
                            leading: Icon(Icons.history,color: Colors.black,),
                            trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: 
                            BorderRadius.circular(20),color: Colors.grey),
                          height:50,width: 300,
                          child: const ListTile(
                            title: Text('Help & Support',style: TextStyle(color: Colors.black)),
                            leading: Icon(Icons.help_outline,color: Colors.black,),
                            trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container( 
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),color: Colors.grey),
                          height: 50,width: 300,
                          child: const ListTile(
                            title: Text('Settings',style: TextStyle(color: Colors.black)),
                            leading: Icon(Icons.settings,color: Colors.black,),
                            trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container( 
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),color: Colors.grey),
                          height: 50,width: 300,
                          child: const ListTile(
                            title: Text('Invite a friend',style: TextStyle(color: Colors.black)),
                            leading: Icon(Icons.add_reaction_outlined,color: Colors.black,),
                            trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container( 
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),color: Colors.grey),
                          height: 50,width: 300,
                          child: const ListTile(
                            title: Text('Email',style: TextStyle(color: Colors.black),),
                            leading: Icon(Icons.attach_email,color: Colors.black,),
                            trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                          ),
                        ),
                      ),Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),color: Colors.grey),
                          height: 50,width: 300,
                          child: const ListTile(
                            title: Text('Log out',style: TextStyle(color: Colors.black),),
                            leading: Icon(Icons.logout,color: Colors.black,),
                            trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                          ),
                        ),
                      )

                    ],
                  ),
                ),
              )
            ]),
      ),
    );
  }
}