import 'package:farm_app/widgets/register.dart';
import 'package:flutter/material.dart';



class RegisterPage extends StatefulWidget {
  final Function toggleRegister;
  RegisterPage(this.toggleRegister);
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
     return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Spacer(),
        Text(
          "Register",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(flex: 3),
        
       RegisterForm(),
        FlatButton(
          onPressed: widget.toggleRegister,
          child: Text(
            "Already have an account?  Sign In",
            style: TextStyle(color: Colors.blue[900]),
          ),
          // color: Colors.pink,
        ),
        
        Spacer(flex: 8),
      ],
    );
  }
}
