import 'package:farm_app/screens/homepage.dart';
import 'package:farm_app/widgets/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shadow/shadow.dart';

class SignInPageTest extends StatefulWidget {
  final Function toggleSignIn;
  SignInPageTest(this.toggleSignIn);

  @override
  _SignInPageStateTest createState() => _SignInPageStateTest();
}

class _SignInPageStateTest extends State<SignInPageTest> {
  bool _toggleAuth = true;

  @override
  Widget build(BuildContext context) {
    final String assetName = 'assets/images/path.svg';
    final Widget svgIcon = SvgPicture.asset(
      assetName,
      color: Colors.green,
      allowDrawingOutsideViewBox: true,
      fit: BoxFit.fitHeight,
      alignment: Alignment(10, 10),
    );
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Shadow(
          child: svgIcon,
          offset: Offset(-1, 7),
        ),
        Spacer(),
        Text(
          "Welcome to Agrico",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(flex: 3),
        Container(
          margin: EdgeInsets.only(left: 30),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Welcome To\nAgrico ",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.green),
            ),
          ),
        ),
        // CachedNetworkImage(
        //   imageUrl:
        //       "https://pluspng.com/img-png/cafe-building-png-building-cafe-restaurant-icon-512.png",
        //   height: MediaQuery.of(context).size.height * .2,
        // ),
        // Spacer(),
        _toggleAuth ? SignInWithOtpForm() : SignInWithPasswordForm(),
        FlatButton(
          onPressed: widget.toggleSignIn,
          child: Text(
            "Don' have an account?  Register here",
            style: TextStyle(color: Colors.blue[900]),
          ),
          // color: Colors.pink,
        ),
        FlatButton(
          onPressed: () {
            setState(() {
              _toggleAuth = !_toggleAuth;
            });
          },
          child: Text(
            _toggleAuth ? "Sign in With Email" : "Sign in with OTP",
            style: TextStyle(color: Colors.blue[900], decoration: TextDecoration.underline),
          ),
          // color: Colors.pink,
        ),
        FlatButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (ctx) => HomePage(),
                  ),
            );
          },
          child: Text(
            "Developer ivide kuthuka",
            style: TextStyle(
              color: Colors.white,
              decoration: TextDecoration.underline,
            ),
          ),
          // color: Colors.pink,
        ),
        Spacer(flex: 8),
      ],
    );
  }
}
