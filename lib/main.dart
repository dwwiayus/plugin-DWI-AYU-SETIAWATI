import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:plugin/takepicture_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  final firstCamera = cameras.first;

  runApp(MaterialApp(
    theme: ThemeData.dark(),
      home: TakepictureWidget(
        camera: firstCamera,
      ),
  ));
  
}