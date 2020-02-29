import 'dart:io';

import 'package:farm_app/data/constants.dart';
import 'package:farm_app/data/scheme.dart';
import 'package:farm_app/models/user.dart';
import 'package:farm_app/screens/homepage.dart';
import 'package:farm_app/services/database/database.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class ApplicationForm extends StatefulWidget {
  // final Function _toggleView;
  // ApplicationForm(this._toggleView);
  final Scheme scheme;
  ApplicationForm(this.scheme);
  @override
  _ApplicationFormState createState() => _ApplicationFormState();
}

class _ApplicationFormState extends State<ApplicationForm> {
  final _formKey = GlobalKey<FormState>();
  File _imageFile;

  Future<void> pickImage(ImageSource source) async {
    File selected = await ImagePicker.pickImage(source: source);
    setState(() {
      _imageFile = selected;

    });
  }
  //textfield state
  String name = '';
  String gender = '';
  String phone = '';
  String aadhar = '';
  String address = '';
  String pincode = '';
  String accountNo = '';
  String ifsc = '';

  bool loading = false;
  bool blah=true;

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
   var userD = DatabaseService(uid: user.uid).usrDt;
  
 
  
  return FutureBuilder(
    future: userD,
    builder: (ctx,AsyncSnapshot<UserData> snap) {
      // gender=snap.data.gender;
      
      if(blah){     
         name=snap.data.name;
      gender=snap.data.gender ;
      aadhar=snap.data.aadharNo ;
      address=snap.data.address ;
      accountNo =snap.data.accountNo ;
      pincode=snap.data.pincode ;
      ifsc=snap.data.ifsc ;
      phone=snap.data.phoneNo;
      blah=false;
      // snap.data..toString()+'\n'
      }
      return Scaffold(
    
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green[400],
        title: (Text(widget.scheme.name)),
        
      ),
      body: Builder(
        builder: (ctx2)=>
               SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 20,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 125,
                      height: 150,
                      color: Colors.grey[100],
                      child: _imageFile != null
                          ? Image.file(_imageFile)
                          : Icon(
                              Icons.image,
                              size: 100,
                              color: Colors.green,
                            ),
                    ),
                  ),
                   Row(
                     mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Spacer(),
                        RaisedButton(
                          onPressed: () {
                            pickImage(ImageSource.gallery);
                          },
                          child: Text('Upload Image'),
                        ),
                        Spacer(),
                        RaisedButton(
                          onPressed: () {
                            pickImage(ImageSource.camera);
                          },
                          child: Text('Capture Image'),
                        ),
                        Spacer(),
                      ],
                    ),
                  
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Name :",
                    style: TextStyle(fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: TextFormField(
                      initialValue: snap.data.name ?? '',
                      decoration: textInputDecoration2,
                      validator: (val) => val.isEmpty ? "Enter an Email" : null,
                      onChanged: (val) {
                        setState(() {
                          val.isEmpty ? name=snap.data.name:name = val;
                          print(val +' '+ name);
                          
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Gender :",
                    style: TextStyle(fontSize: 16),
                  ),
                  DropdownButton<String>(
                    //  value: 'Gender',
                    
                    isExpanded: true,
                    focusColor: Colors.white,
                   

                    // style: TextStyle(backgroundColor: Colors.white),
                    items: <String>['Male', 'Female', 'Other'].map((String value) {
                      return  DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {setState(() {
                      gender=_;
                    });},
                  ),
                  Text(
                    "Phone :",
                    style: TextStyle(fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: TextFormField(
                      decoration: textInputDecoration2,
                      initialValue: snap.data.phoneNo?? '',
                      validator: (val) => val.isEmpty ? "Enter an Email" : null,
                      onChanged: (val) {
                        setState(() {
                          val.isEmpty ? name=snap.data.phoneNo:phone = val;
                        });
                      },
                    ),
                  ),
                  Text(
                    "Aadhar No :",
                    style: TextStyle(fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: TextFormField(
                      decoration: textInputDecoration2,
                      initialValue: snap.data.aadharNo?? '',
                      validator: (val) => val.isEmpty ? "Enter an Email" : null,
                      onChanged: (val) {
                        setState(() {
                          val.isEmpty ? name=snap.data.aadharNo:aadhar = val;
                        });
                      },
                    ),
                  ),
                  Text(
                    "Address :",
                    style: TextStyle(fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: TextFormField(
                      initialValue: snap.data.address?? '',
                      // controller: _textFieldController,
                      maxLines: 5,
                      keyboardType: TextInputType.multiline,
                      decoration: textInputDecoration2,
                      validator: (val) => val.isEmpty ? "Enter an Email" : null,
                      onChanged: (val) {
                        setState(() {
                          val.isEmpty ? name=snap.data.address:address = val;
                        });
                      },
                    ),
                  ),
                  Text(
                    "Pincode :",
                    style: TextStyle(fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: TextFormField(
                      initialValue: snap.data.pincode?? '',
                      decoration: textInputDecoration2,
                      validator: (val) => val.isEmpty ? "Enter an Email" : null,
                      onChanged: (val) {
                        setState(() {
                          val.isEmpty ? name=snap.data.pincode:pincode = val;
                        });
                      },
                    ),
                  ),
                  Text(
                    "Account No :",
                    style: TextStyle(fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: TextFormField(
                      initialValue: snap.data.accountNo?? '',
                      decoration: textInputDecoration2,
                      validator: (val) => val.isEmpty ? "Enter an Email" : null,
                      onChanged: (val) {
                        setState(() {
                          val.isEmpty ? name=snap.data.accountNo:accountNo = val;
                        });
                      },
                    ),
                  ),
                  Text(
                    "IFSC Code :",
                    style: TextStyle(fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: TextFormField(
                      initialValue: snap.data.ifsc?? '',
                      decoration: textInputDecoration2,
                      validator: (val) => val.isEmpty ? "Enter an Email" : null,
                      onChanged: (val) {
                        setState(() {
                          val.isEmpty ? name=snap.data.ifsc:ifsc = val;
                        });
                      },
                    ),
                  ),
                  Text(
                    "Pincode :",
                    style: TextStyle(fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: TextFormField(
                      initialValue: snap.data.pincode?? '',
                      decoration: textInputDecoration2,
                      validator: (val) => val.isEmpty ? "Enter an Email" : null,
                      onChanged: (val) {
                        setState(() {
                          val.isEmpty ? name=snap.data.pincode:pincode = val;
                        });
                      },
                    ),
                  ),
                  RaisedButton(
                      color: Colors.pink[400],
                      child: Text(
                        'Submit',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        print(ifsc);
                      DatabaseService(uid:user.uid).updateUserData(
                          name: name,
                          aadharNo: aadhar,
                          accountNo: accountNo,
                          address: address,
                          gender: gender,
                          pincode: pincode,
                          ifsc: ifsc,
                          phoneNo: phone,
                          
                        );
                        print('hai');
                        DatabaseService(uid:user.uid).updateSchemeData(
                          userid:user.uid,
                          name: name,
                          aadharNo: aadhar,
                          accountNo: accountNo,
                          address: address,
                          gender: gender,
                          pincode: pincode,
                          ifsc: ifsc,
                          phoneNo: phone,
                          schemeId: widget.scheme.id,
                        );
                        Scaffold.of(ctx2).showSnackBar(SnackBar(content: Row(
                          children: <Widget>[
                            Text("Application submitted successfully"),
                            Spacer(),
                            FlatButton(onPressed: (){
                              Navigator.of(context).pop();
                            }, child: Text("back"))
                          ],
                        ),),);
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );},);
 
  }
}
