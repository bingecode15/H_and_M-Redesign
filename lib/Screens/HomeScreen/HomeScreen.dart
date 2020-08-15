import 'package:flutter/material.dart';
import 'package:h_and_m/Screens/HomeScreen/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Body(size: size),
      ),
    );
  }
}
