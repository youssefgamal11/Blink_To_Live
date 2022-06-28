import 'package:blink_to_live/modules/dealing_with_model/view.dart';
import 'package:blink_to_live/modules/signin/signin_screen.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'modules/choices/view.dart';

List<CameraDescription>? cameras;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DealingWithModelScreen(),
    );
  }
}
