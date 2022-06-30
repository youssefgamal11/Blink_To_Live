import 'package:blink_to_live/modules/dealing_with_model/dealing_with_model_screen.dart';
import 'package:blink_to_live/modules/signin/signin_screen.dart';
import 'package:blink_to_live/modules/teach_patient/teach_patient_screen.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'modules/choices/choices_screen.dart';

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
      home: TeachPatientScreen(),
    );
  }
}
