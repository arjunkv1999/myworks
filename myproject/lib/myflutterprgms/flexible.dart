import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => const MaterialApp(
            useInheritedMediaQuery: true,
            home: newflexible(),
            debugShowCheckedModeBanner: false,
          )));
}
class newflexible extends StatelessWidget {
  const newflexible ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Container(
          child: Padding(
            padding:EdgeInsets.all(14),
            child: Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        width: 180,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red
                        ),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    Flexible(fit: FlexFit.tight,
                    flex: 2,
                      child: Container(
                        width: 180,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue
                        ),
                      ),
                    ),],),
                    SizedBox(height:20,),
                    Row(
                      children: [
                        Flexible(fit: FlexFit.loose,
                        flex: 2,
                          child: Container(
                          width: 200,
                          height: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.yellow
                          ),
                                              ),
                        ),
                    const SizedBox(width: 20,),
                    Container(
                      width: 200,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green
                      ),
                    ),
                    ]),
                    SizedBox(height:  20,),
                    Row(
                      children: [Container(
                        width: 250,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.purple
                        ),
                      ),
                    const SizedBox(width: 20,),
                    Container(
                      width: 250,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red
                      ),
                    ),
                    ]),
                    
                  ],
                )
            
            ), ),
        )
      );
    
  }
}