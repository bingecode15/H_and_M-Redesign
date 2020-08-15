import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:h_and_m/Models/WomenData.dart';
import 'package:h_and_m/Screens/WomenScreen/components/products.dart';

class WomenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SvgPicture.asset("assets/icons/menu.svg"),
                  Image(
                    image: AssetImage('assets/images/logo.png'),
                  ),
                  SvgPicture.asset("assets/icons/search.svg"),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
                child: ListView.builder(
                  itemCount: women.length,
                  itemBuilder: (context, index) => Products(
                    women: women[index],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
