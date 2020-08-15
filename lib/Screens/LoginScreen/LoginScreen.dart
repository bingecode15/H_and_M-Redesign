import 'package:flutter/material.dart';
import 'package:h_and_m/Screens/LoginScreen/components/body.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Body(size: size),
      ),
    );
  }
}
