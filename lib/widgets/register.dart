import 'package:flutter/material.dart';
import 'package:farm_app/data/constants.dart';


class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  GlobalKey _formKey = GlobalKey<FormState>();
  String name;
  String email;
  String phoneNo;
  String password;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: textInputDecoration .copyWith(hintText: " Name"),
              keyboardType: TextInputType.text,
              onChanged: (val) {
                name = val;
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: textInputDecoration.copyWith(hintText: " Email "),
              validator: (val) => val.isEmpty ? "Enter an Email/Phone" : null,
              keyboardType: TextInputType.emailAddress,
              onChanged: (val) {
                email = val;
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: textInputDecoration.copyWith(hintText: " Phone "),
              validator: (val) => val.isEmpty ? "Enter an Email/Phone" : null,
              keyboardType: TextInputType.phone,
              onChanged: (val) {
                phoneNo = val;
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: textInputDecoration.copyWith(hintText: " Password"),
              keyboardType: TextInputType.text,
              obscureText: true,
              onChanged: (val) {
                password = val;
              },
            ),
            SizedBox(height: 20),
            RaisedButton(
              onPressed: () async {
                // AuthService().registerWithEmailAndPassword(
                //   email: email,
                //   password: password,
                //   name: name,
                //   phoneNo: phoneNo,
                // );
                
              },
              textColor: Colors.white,
              child: Text("Register"),
              color: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}
