import 'package:flutter/material.dart';
import 'package:h_and_m/Screens/WomenScreen/WomenScreen.dart';
import 'package:h_and_m/Widgets/BuildAppBar.dart';
import 'package:h_and_m/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          BuildAppBar(),
          Container(
            width: size.width * 0.75,
            height: 145,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  right: 0.0,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WomenScreen(),
                        ),
                      );
                    },
                    child: Image(
                      fit: BoxFit.cover,
                      width: (size.width * 0.75) / 2,
                      height: 145,
                      image: AssetImage('assets/images/women.png'),
                    ),
                  ),
                ),
                Positioned(
                  left: (size.width * 0.75) / 10,
                  child: Text(
                    'WOMEN',
                    style: kHeadingTextStyle,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: size.width * 0.75,
            height: 145,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  left: 0.0,
                  child: Image(
                    width: (size.width * 0.75) / 2,
                    height: 145,
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/men.png'),
                  ),
                ),
                Positioned(
                  right: (size.width * 0.75) / 10,
                  child: Text(
                    'MEN',
                    style: kHeadingTextStyle,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: size.width * 0.75,
            height: 145,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  right: 0.0,
                  child: Image(
                    fit: BoxFit.cover,
                    width: (size.width * 0.75) / 2,
                    height: 145,
                    image: AssetImage('assets/images/kids.png'),
                  ),
                ),
                Positioned(
                  left: (size.width * 0.75) / 10,
                  child: Text(
                    'KIDS',
                    style: kHeadingTextStyle,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: size.width * 0.75,
            height: 145,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  left: 0.0,
                  child: Image(
                    width: (size.width * 0.75) / 2,
                    height: 145,
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/divided.png'),
                  ),
                ),
                Positioned(
                  right: (size.width * 0.75) / 10,
                  child: Text(
                    'DIVIDED',
                    style: kHeadingTextStyle,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
