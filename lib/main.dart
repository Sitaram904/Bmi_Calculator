import 'package:bmi2/screens/bmi_flash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Geom'
      ),
      debugShowCheckedModeBanner: false, home:BmiFlashScreen());
  }
}

