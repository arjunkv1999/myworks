import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart ' as path;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: MyStorageFB(),
  ));
}

class MyStorageFB extends StatefulWidget {
  @override
  State<MyStorageFB> createState() => _MyStorageFBState();
}

class _MyStorageFBState extends State<MyStorageFB> {
  @override

  FirebaseStorage storage = FirebaseStorage.instance;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyStorage"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton.icon(
                      onPressed: () => upload('camera'),
                      icon: const Icon(Icons.camera_alt_outlined,size: 25),
                      label: const Text("Camera")),
                  ElevatedButton.icon(
                      onPressed: () => upload('gallery'),
                      icon: const Icon(Icons.photo,size: 25),
                      label: const Text("Gallery")),
                ],
              ),
              Expanded(child: FutureBuilder(
                future: loadImage(),
                builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  return ListView.builder(itemBuilder: (context, index){
                    return Card();
                  });
                },

              ))
            ],
          )),
    );
  }

  loadImage() {}

  Future<void>upload(String source) async{
    final picker = ImagePicker();
    XFile? pickedImage; // To fetch platform depended path
    try{
      pickedImage = await picker.pickImage(
          source: source == 'camera' ? ImageSource.camera : ImageSource.gallery, maxWidth: 1920);
      final String fileName = path.basename(pickedImage!.path); // Path name before/or//
      File imageFile = File(pickedImage.path); // Actual path of picked data

      try {
        await storage.ref(fileName).putFile(imageFile, SettableMetadata(
          customMetadata: {
            'Uploaded_by ' : 'A USER',
            'Date'         : '9/11/2021'
          }
        ));
        setState(() {});
      } on FirebaseException catch(error) {
        if (kDebugMode) {
          print(error);
        }
      }

    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}