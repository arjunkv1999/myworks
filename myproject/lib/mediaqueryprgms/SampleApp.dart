import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class sampleApp extends StatefulWidget {
  const sampleApp ({super.key});

  @override
  State<sampleApp> createState() => _sampleAppState();
}

class _sampleAppState extends State<sampleApp> {
  late MediaQueryData media;
  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMediaQuery(context));
    media = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Media Query Widget",style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),
      ),
    );
  }
}