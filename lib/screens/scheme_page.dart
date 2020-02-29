import 'package:cached_network_image/cached_network_image.dart';
import 'package:farm_app/data/scheme.dart';
import 'package:farm_app/screens/application_form.dart';
import 'package:farm_app/services/authentication/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class SchemePage extends StatelessWidget {
  final Scheme scheme;
  SchemePage(this.scheme);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(scheme.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              width: double.infinity,
              child: Stack(
                children: <Widget>[
                  CachedNetworkImage(
                    imageUrl: scheme.imgUrl,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      color: Colors.black26,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          scheme.name,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: FlatButton(
                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>StreamProvider.value(value: AuthService().user,child: ApplicationForm(scheme))));},
                color: Colors.green,
                child: Text(
                  "Apply Now",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                // border: Border.all(width: 2, color: Colors.black),
                color: Colors.green[100],
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Eligibility Criteria',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height:10),
                  Text('○ Is enrolled under a skill development training program and wants to work in an eligible sector'),
                  SizedBox(height:10),
                  Text('○ Is certified for a period of one year from the time when the scheme is launched.'),
                  SizedBox(height:10),
                  Text('○ On a condition is getting the reward money for the first and only time during his entire lifetime'),
                  SizedBox(height:10),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              // height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                // border: Border.all(width: 2, color: Colors.black),
                color: Colors.green[100],
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(scheme.description,textAlign: TextAlign.justify,),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: FlatButton(
                onPressed: () {},
                color: Colors.green,
                child: Text(
                  "Apply Now",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height:30),
          ],
        ),
      ),
    );
  }
}
