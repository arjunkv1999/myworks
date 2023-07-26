import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => const MaterialApp(
            useInheritedMediaQuery: true,
            home: hotel(),
            debugShowCheckedModeBanner: false,
          )));
}
class hotel extends StatelessWidget {
  const hotel ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          SizedBox(
              height: 400,child: Image.asset("assets/icon/hotel2.jpg",fit: BoxFit.cover)
            
          ),
          const Padding(
            padding: EdgeInsets.only(top: 300,left: 20),
            child: Text("Crown Plaza \nKochi,Kerala",
            style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
          ),
          Row(children:[
          Padding(
            padding: const EdgeInsets.only(top: 350,left: 20),
            child: Container(
              // ignore: sort_child_properties_last
              child: const Text("8.4/100 reviews",style: TextStyle(fontSize: 13,color: Colors.white)),
            decoration:BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(100)) ,),
          ),
         Padding(
           padding: const EdgeInsets.only(top: 350,left: 230),
           child: IconButton(color:Colors.white,onPressed: (){}, icon: const Icon(Icons.favorite_border)),
         ) 
        ],
      ),
      Container(padding: const EdgeInsets.only(top: 420,left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: const [
                Icon(Icons.star,color: Colors.purple,),
                Icon(Icons.star,color: Colors.purple,),
                Icon(Icons.star,color: Colors.purple,),
                Icon(Icons.star,color: Colors.purple,),
                Icon(Icons.star,color: Colors.grey),
              ],
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 450,left: 20),
        child: Column(children:  [
          Row(
            children: const [
              Icon(Icons.location_on,size: 16,color: Colors.grey,),
            Text("8 km to LuluMall",style: TextStyle(fontSize: 15,color: Colors.grey),)],
          ),
          
        ],),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 420,left: 300),
        child: Column(
          children:  [
            const Text("\$200",
            style: TextStyle(color: Colors.purple,
            fontSize: 20,fontWeight: FontWeight.bold),),
          Row(
            children: const [
              Text("/per night",style: TextStyle(fontSize: 15,color: Colors.grey),)
            ],
          )],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 490,left: 20),
        child: ElevatedButton(onPressed: (){}, 
        // ignore: sort_child_properties_last
        child: const Text("Book Now",style: TextStyle(fontSize: 20),),
        style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        padding:const EdgeInsets.symmetric(vertical: 16,horizontal: 120) ),),
      ),
     const Padding(
       padding: EdgeInsets.only(left: 15,top: 550),
       child: Text("Ramada Plaza Palm Grove",
       style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
     ), 
    const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 580,left: 30),
        child: Text("Offering an outdoor pool, Ramada by Wyndham West Palm \t"
        "Beach Airport is located in West Palm Beach. Free WiFi access is available.\t "
        "Palm Beach is 4.2 mi from the property.\t"
        " At the West Palm Beach Airport Ramada by Wyndham, a 24-hour front desk and \t"
        "free parking are available for guests' convenience.\t"
        " Other facilities offered at the property include meeting facilities, dry cleaning\t"
        " services, and laundry facilities. Breakfast is available for a surcharge at Zara's Cafe and Jazz Lounge.\n"
        "   Palm Beach International Airport is 4 mi from the property. The hotel is 2.9 mi from Palm \t"
        "Beach Kennel Club, 2.4 mi from Kravis Center for the Performing Arts, and 2.5 mi from Palm Beach\t"
        " County Convention Center. Singer Island is 8.8 mi away."),
      ),
    ) ]),
     bottomNavigationBar:ConvexAppBar(height: 50,
     initialActiveIndex: 2,backgroundColor: Colors.black,
     activeColor: Colors.purple, items: const [
      TabItem(icon: Icons.search,title: "Search"),
      TabItem(icon: Icons.key,title: "Booking"),
      TabItem(icon: Icons.home,title: "Home"),
      TabItem(icon: Icons.settings,title: "Settings"),
     ],) , 
    );
  }
}