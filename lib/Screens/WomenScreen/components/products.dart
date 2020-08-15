import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:h_and_m/Models/WomenData.dart';
import 'package:h_and_m/constants.dart';

class Products extends StatelessWidget {
  final Women women;

  const Products({Key key, this.women});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(bottom: 10.0),
        child: Card(
          color: Colors.white,
          elevation: 5.0,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
                child: Image(
                  image: AssetImage(women.imageSrc),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(women.title, style: kCardText),
                      SizedBox(height: 11.0),
                      Text(
                        women.description,
                        style: TextStyle(
                          fontSize: 11.0,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      buildRow(size),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildRow(size) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/shopping_bag.svg",
          color: Colors.black,
        ),
        Text(
          ' Buy',
          style: TextStyle(
            fontSize: 12.0,
          ),
        ),
        SizedBox(width: size.width * 0.03),
        Container(
          height: 15.0,
          width: 1.0,
          color: Colors.grey,
        ),
        SizedBox(width: size.width * 0.03),
        SvgPicture.asset(
          "assets/icons/share.svg",
          color: Colors.black,
        ),
        Text(
          ' Share',
          style: TextStyle(
            fontSize: 12.0,
          ),
        ),
        SizedBox(width: size.width * 0.03),
        Container(
          height: 15.0,
          width: 1.0,
          color: Colors.grey,
        ),
        SizedBox(width: size.width * 0.03),
        SvgPicture.asset(
          "assets/icons/heart.svg",
          color: Colors.black,
        ),
        Text(
          ' Save',
          style: TextStyle(
            fontSize: 12.0,
          ),
        ),
      ],
    );
  }
}
