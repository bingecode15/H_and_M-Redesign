import 'package:flutter/material.dart';
import 'package:h_and_m/Screens/HomeScreen/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'H&M',
      home: HomeScreen(),
    );
  }
}
