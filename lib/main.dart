import 'package:flutter/material.dart';
import 'package:uiscreen1/navbar.dart';
import 'package:uiscreen1/profile.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart' show kReleaseMode;

// void main() {
//   runApp(const MyApp());
// }


void main() {
  runApp(
      DevicePreview(
        enabled: !kReleaseMode, // Enable DevicePreview in debug mode
        builder: (context) => MyApp(), // Launch MyApp
      ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context), // For DevicePreview
          builder: DevicePreview.appBuilder, 
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
      ),
      home: NavBar(),
    );
  }
}

















