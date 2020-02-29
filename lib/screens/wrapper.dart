import 'package:farm_app/models/user.dart';
import 'package:farm_app/screens/authenticate.dart';
import 'package:farm_app/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
 final user = Provider.of<User>(context);
    // final user=null;
    print(user);
    if (user==null){
      return Authenticate();
    }
    else{
      print(user.uid);
      return HomePage();
     
    }
  }
}