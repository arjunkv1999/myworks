import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart ' as path;
class myfbphone extends StatefulWidget {
  const myfbphone({super.key});

  @override
  State<myfbphone> createState() => _myfbphoneState();
}

class _myfbphoneState extends State<myfbphone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PHONE AUTHENTICATION"),
      ),
    );
  }
}