import 'package:farm_app/data/constants.dart';
import 'package:farm_app/services/authentication/auth.dart';



import 'package:flutter/material.dart';


class SignInWithPasswordForm extends StatefulWidget {
  @override
  _SignInWithPasswordFormState createState() => _SignInWithPasswordFormState();
}

class _SignInWithPasswordFormState extends State<SignInWithPasswordForm> {
  String email;

  String password;

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    print("building Signin email form");
    return Form(
      key: _formkey,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Container(
              height: 45,
              margin: EdgeInsets.symmetric(vertical: 20),
              child: TextFormField(
                decoration: textInputDecoration.copyWith(hintText: " Email / Phone"),
                validator: (val) => val.isEmpty ? "Enter an Email/Phone" : null,
                keyboardType: TextInputType.text,
                onChanged: (val) {
                  // setState(() {
                  //   email = val;
                  // });
                  email = val;
                  print(email);
                },
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 45,
              margin: EdgeInsets.symmetric(vertical: 20),
              child: TextFormField(
                decoration: textInputDecoration.copyWith(hintText: " Password"),
                keyboardType: TextInputType.text,
                obscureText: true,
                onChanged: (val) {
                  // setState(() {
                  //   password = val;
                  // });
                  password = val;
                  print(password);
                },
              ),
            ),
            SizedBox(height: 20),
            RaisedButton(
              onPressed: () async{
                print(email);
                print(password);
                await AuthService().signInWithEmailAndPassword(email, password);
              },
              textColor: Colors.white,
              child: Text("Sign In"),
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}

class SignInWithOtpForm extends StatefulWidget {
  @override
  _SignInWithOtpFormState createState() => _SignInWithOtpFormState();
}

class _SignInWithOtpFormState extends State<SignInWithOtpForm> {
  String phoneNo;
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    print("building Signin otp form");
    return Form(
      key: _formkey,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Container(
              height: 45,
              margin: EdgeInsets.symmetric(vertical: 20),
              child: TextFormField(
                decoration: textInputDecoration.copyWith(hintText: " Phone No",),
                keyboardType: TextInputType.phone,
                validator: (val)=>val.isEmpty ?'Enter A Phone No :': '',
                
                onChanged: (val) {
                  // setState(() {
                  //   phoneNo = "+91" + val;
                  // });
                  phoneNo = "+91" + val;
                  // print(phoneNo);
                },
              ),
            ),
            SizedBox(height: 20),
            RaisedButton(
              onPressed: () async {
                _formkey.currentState.validate();
                print(phoneNo);
                await AuthService().verifyPhone(
                  phoneNo: phoneNo,
                );
              },
              textColor: Colors.white,
              child: Text("Send OTP"),
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
