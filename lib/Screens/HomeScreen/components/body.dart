import 'package:flutter/material.dart';
import 'package:h_and_m/Screens/LoginScreen/LoginScreen.dart';
import 'package:h_and_m/Screens/ShopNowScreen/ShopNowScreen.dart';
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
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: <Widget>[
          BuildAppBar(color: Colors.white),
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.60),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShopNowScreen(),
                  ),
                );
              },
              child: Container(
                width: 201,
                height: 57,
                color: Colors.white.withOpacity(0.8),
                child: Center(
                  child: Text(
                    'SHOP NOW',
                    style: kHeadingTextStyle.copyWith(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              );
            },
            child: Text(
              'Sign In',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
