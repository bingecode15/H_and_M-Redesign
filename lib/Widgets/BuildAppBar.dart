import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuildAppBar extends StatelessWidget {
  final Color color;

  const BuildAppBar({
    Key key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SvgPicture.asset(
            "assets/icons/menu.svg",
            color: color,
          ),
          Image(
            image: AssetImage('assets/images/logo.png'),
          ),
          SvgPicture.asset(
            "assets/icons/search.svg",
            color: color,
          ),
        ],
      ),
    );
  }
}
