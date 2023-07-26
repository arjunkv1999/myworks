import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:introduction_screen/introduction_screen.dart';
class introoscreen extends StatefulWidget {
  const introoscreen({super.key});

  @override
  State<introoscreen> createState() => _introoscreenState();
}

class _introoscreenState extends State<introoscreen> {
  PageDecoration pageDecoration =  const PageDecoration(
    titleTextStyle: TextStyle(
      fontSize: 35, fontWeight: FontWeight.bold,color: Colors.purple),
      bodyTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w200,
        color: Colors.green
      ),
      imagePadding: EdgeInsets.all(20),
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(colors:[
          Colors.amber,
          Colors.green,
          Colors.redAccent,Colors.deepOrange
        ])
      )
  );
  @override
  Widget build(BuildContext context) {
    return introoscreen(
      Pages:[
        PageViewModel(
          decoration: PageDecoration,
          title: "First Page",
          body: "This is the first IntroductionPage that you can skip",
        )
      ]
    );
  }
  Widget introImage(String )
}