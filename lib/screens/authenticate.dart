import 'package:farm_app/screens/register_page.dart';
import 'package:farm_app/screens/signin_page.dart';
import 'package:flutter/material.dart';


class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool _showSignIn = true;
  void toggleAuth() {
    setState(() {
      _showSignIn = !_showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    //  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.);
    return Scaffold(
      // backgroundColor: Theme.of(context).primaryColor,
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top,
          child: _showSignIn ? SignInPageTest(toggleAuth) : RegisterPage(toggleAuth),
        ),
      ),
    );
  }
}
