import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:h_and_m/Screens/ShopNowScreen/ShopNowScreen.dart';
import 'package:h_and_m/Widgets/BuildAppBar.dart';
import 'package:h_and_m/constants.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          BuildAppBar(),
          Container(
            margin: EdgeInsets.only(top: widget.size.height * 0.15),
            padding: EdgeInsets.symmetric(horizontal: widget.size.width * 0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'LOGIN',
                  style: kHeadingTextStyle,
                ),
                SizedBox(height: widget.size.height * 0.02),
                Text(
                  'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod',
                  style: kTextStyle,
                ),
                SizedBox(height: widget.size.height * 0.03),
                TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.zero),
                    ),
                    hintText: 'Email Address  |',
                  ),
                ),
                SizedBox(height: widget.size.height * 0.02),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: SvgPicture.asset(
                      "assets/icons/eye.svg",
                      color: Color(0xFF1A1A1A).withOpacity(0.5),
                      fit: BoxFit.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.zero),
                    ),
                    hintText: 'Password          |',
                  ),
                ),
                SizedBox(height: widget.size.height * 0.02),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isSelected ? isSelected = false : isSelected = true;
                        });
                      },
                      child: Container(
                        height: 18,
                        width: 18,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isSelected ? kTextColor : Colors.grey,
                        ),
                        child: Icon(
                          Icons.check,
                          size: 15.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      '  Remember me',
                      style: TextStyle(
                        color: Color(0xFF8B8B8B),
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: kTextColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: widget.size.height * 0.035),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ShopNowScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 52,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                    ),
                    child: Center(
                      child: Text(
                        'LOGIN TO MY ACCOUNT',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: widget.size.height * 0.06),
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Don\'t have an account?',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: ' Register now',
                          style: TextStyle(
                            color: kTextColor,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: widget.size.height * 0.02),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
