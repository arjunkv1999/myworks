import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:myproject/passing%20data%20b/w%20screeens/dummy_data.dart';

class ProductList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
  // fetch the id from te prevoius page.
  final id = ModalRoute.of(context)?.settings.arguments;

  //fetch the product coressponding to the id from the previous page.
  final product = dummy_prdcts.firstWhere((product)=> product["id"] == id);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            SizedBox(height: 100,width: 100,
            child: Image.network(product["image"])),
            Text("${product["name"]}",style: const TextStyle(fontSize: 30),),
            Text("${product["discription"]}",style: const TextStyle(fontSize: 20),),
            ],
          
        ),),
    );
  }
}