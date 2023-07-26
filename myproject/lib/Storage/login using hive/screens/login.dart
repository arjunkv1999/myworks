
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../model/usermodel.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  //Hive.registerAdapter(userAdapter());
  Hive.openBox<User>('user');
  runApp(DevicePreview(
      builder: (BuildContext context) => const MaterialApp(
            useInheritedMediaQuery: true,
            home: HLogin(),
            debugShowCheckedModeBanner: false,
          )));
}
class HLogin extends StatelessWidget {
  const HLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}