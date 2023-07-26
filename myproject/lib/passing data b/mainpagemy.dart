import 'package:flutter/material.dart';
import 'package:myproject/passing%20data%20b/w%20screeens/Productlist.dart';
import 'package:myproject/passing%20data%20b/w%20screeens/dummy_data.dart';
void main(){
   runApp(MaterialApp(
    home: myprdctmain(),
    routes: {
      'secondpage': (context)=> ProductList(),
    },
   ));
}
class myprdctmain extends StatelessWidget {
  const myprdctmain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products home"),
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: dummy_prdcts.map((product)=> TextButton(
        onPressed: ()=> gotoNext(context,product["id"]), 
        child: Text("${product["name"]}",style: const TextStyle(fontSize: 22),)))
        .toList()
      ),
    );
  }
 void gotoNext(BuildContext context, product){
  Navigator.of(context).pushNamed("secondpage",arguments: product);
 }
}