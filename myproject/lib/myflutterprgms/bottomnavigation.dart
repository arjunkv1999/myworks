// import 'package:flutter/material.dart';
// import 'package:device_preview/device_preview.dart';
// class Bottom1 extends StatefulWidget {
//   const Bottom1({super.key});

//   @override
//   State<Bottom1> createState() => _loginscreenState();
// }

// // ignore: camel_case_types
// class _Bottom1 extends State<Bottom1> {
//       List screen = const[
//       Text("Home"),
//       Text("Favorites"),
//       Text("People"),
//       Text("Search"),
//       Text("LOgin"),
//     ];
//     int index = 0;
//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       appBar: AppBar(title: Text("Bottom Navigator"),),
//       bottomNavigationBar: ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(40),
//       topRight: Radius.circular(40))
//       child:BottomNavigationBar(
//         currentIndex: index,
//         type: BottomNavigationBartype.shifting,
//         onTap: (tapindex){
//           setState((){
//             index = tapindex;
//           });
//         },
//         selectedItemColor: Colors.redAccent,
//         unselectedItemColor: Colors.yellowAccent,
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",backgroundColor: Colors.gfreen,),
//           BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorites"),
//           BottomNavigationBarItem(icon: Icon(Icons.people),label: "People"),
//           BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
//           BottomNavigationBarItem(icon: Icon(Icons.login),label: "Login"),
//         ],
//       ),
//       )
//       body: Center(
//         child
//       )
//     );
//   }

// }