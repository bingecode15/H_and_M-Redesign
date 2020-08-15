import 'package:flutter/material.dart';
import 'package:h_and_m/Screens/ShopNowScreen/components/body.dart';

class ShopNowScreen extends StatelessWidget {
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
