import 'package:flutter/material.dart';
//import 'package:whatsapp_chat/ContactPage.dart';
// void main() {
//   runApp(DevicePreview(backgroundColor:Colors.white,
//       builder: (BuildContext context) => MaterialApp(
//         theme: ThemeData(
//                 scaffoldBackgroundColor: Colors.white,
//                 appBarTheme: AppBarTheme(color: Colors.green)),
//             useInheritedMediaQuery: true,
//             home: whatchat(),
//             debugShowCheckedModeBanner: false,
            
//           )));
// }
class ChatWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var name = [
      "Barney Stinson",
      "Asif Ali",
      "Rayeesa Uzbek",
      "Patrick Bateman",
      "Soldier Boy",
      "Sinan Qtr",
      "Hamza Elcns",
      "Fida BBA",
      "Ranger Lothbrok"
    ];
    var image = [
      "assets/images/barney stinson.jpg",
      "assets/images/asif.jpg",
      "assets/images/rayee.jpg",
      "assets/images/patric.jpg",
      "assets/images/sodierboy.jpg",
      "assets/images/sinan.jpg",
      "assets/images/hamza.jpg",
      "assets/images/fida.jpg",
      "assets/images/ragner lothbrok.jpg"
    ];
    var subtext = [
      "Highfive Shammi \u{1F590}",
      "okay",
      "Gd Nyt",
      "Let's See Paul Allen's Card.",
      "You Think You Look Strong?",
      "How is yf vro",
      "njan vittil",
      "Bye",
      "King Ragner",
    ];
    var endStuff = [
      "5:28pm",
      "3:18pm",
      "9:38am",
      "9:11am",
      "Yesterday",
      "Yesterday",
      "Yesterday",
      "13/03/23",
      "09/01/23"
    ];
    return Scaffold(
      body: ListView(
        children: List.generate(
            9,
            (index) => Card(
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(left: 10, bottom: 5),
                      child: Text(
                          style: const  TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                          name[index]),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("${subtext[index]}"),
                    ),
                    //leading: Image.asset(image[index]),
                   leading: CircleAvatar(backgroundImage: AssetImage(image[index])),
                    trailing: Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Text("${endStuff[index]}"),
                    ),
                  ),
                )),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        //Navigator.push(context, MaterialPageRoute(builder: (context) => ContactPage()));
      },
      child: Icon(Icons.chat),
        backgroundColor: Color(0xFF25D366),
      ),
    );
  }
}