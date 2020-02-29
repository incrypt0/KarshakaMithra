import 'package:cached_network_image/cached_network_image.dart';
import 'package:farm_app/data/scheme.dart';
import 'package:farm_app/screens/application_form.dart';
import 'package:farm_app/services/authentication/auth.dart';
import 'package:farm_app/services/database/database.dart';
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
        title: FittedBox(
          child: Text(
            scheme.name,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 220,
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
                        child: FittedBox(
                          child: Text(
                            scheme.name,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20),
                          ),
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
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => StreamProvider.value(
                        value: AuthService().user,
                        child: ApplicationForm(scheme),
                      ),
                    ),
                  );
                },
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
              height: 250,
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
                  SizedBox(height: 10),
                  Text(
                      '○ ഒരു നൈപുണ്യ വികസന പരിശീലന പരിപാടിയിൽ ചേർന്നു, യോഗ്യതയുള്ള ഒരു മേഖലയിൽ പ്രവർത്തിക്കാൻ ആഗ്രഹിക്കുന്നു'),
                  SizedBox(height: 10),
                  Text(
                      '○ സ്കീം സമാരംഭിച്ച സമയം മുതൽ ഒരു വർഷത്തേക്ക് സർട്ടിഫിക്കറ്റ് നൽകുന്നു.'),
                  SizedBox(height: 10),
                  Text(
                      '○ ഒരു വ്യവസ്ഥയിൽ, അവന്റെ ജീവിതകാലം മുഴുവൻ ആദ്യത്തെ, ഒരേയൊരു സമയത്തേക്ക് റിവാർഡ് പണം ലഭിക്കുന്നു'),
                  SizedBox(height: 10),
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
                  Text(
                    scheme.description,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            Align(
              child: Image.asset('assets/images/a.jpg'),
              alignment: Alignment.center,
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
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
