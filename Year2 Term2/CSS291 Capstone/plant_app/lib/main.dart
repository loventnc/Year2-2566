import 'package:flutter/material.dart';
import 'package:plant_app/screen/Signup/Signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF304D30)),
        backgroundColor: Color(0xFFF0F0E5),
        useMaterial3: true,
      ),
      home: Signup(),
    );
  }
}
