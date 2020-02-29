import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farm_app/data/scheme.dart';
import 'package:farm_app/models/user.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});
  final CollectionReference userCollection = Firestore.instance.collection('users');
  final CollectionReference schemeApplicationsCollection = Firestore.instance.collection('schemeapplications');
  final CollectionReference schemeCollection = Firestore.instance.collection('schemes');
//getting document snapshots when changes occur
  // Stream<List<SchemeData>> get brews {
  //   return schemeCollection.snapshots().map(_userDataListFromSnapshot);
  // }
Stream<List<Scheme>> get schemes {
  return schemeCollection.snapshots().map(_schemeListFromSnapshot);
}
//brew list from snapshot
  List<Scheme> _schemeListFromSnapshot(QuerySnapshot snap) {
    return snap.documents
        .map(
          (docSnap) => Scheme(
            id: docSnap['id'],
            name: docSnap['name'],
            description: docSnap['description'],
            imgUrl: docSnap['imgUrl'],
            link: docSnap['link'],
            number: docSnap['number'],
          ),
        )
        .toList();
  }

//method for user data updation
  Future updateUserData({
    String name,
    String email,
    String phoneNo,
    String gender,
    String aadharNo,
    String address,
    String pincode,
    String accountNo,
    String ifsc,
   
    
    
  }) async {
    return await userCollection.document(uid).setData({
      'name': name ,
      'email': email ?? '',
      'phoneNo': phoneNo,
      'gender': gender ?? '',
      'aadharNo': aadharNo ?? '',
      'address': address ?? '',
      'pincode': pincode ?? '',
      'accountNo': accountNo ?? '',
      'ifsc': ifsc,
      
      
    });
  }
  Future updateSchemeData1({
    String name,
    String id,
    int number,
    String description,
    String imageUrl,
    String link,
   
    
    
  }) async {
    return await schemeCollection.document(id).setData({
      'id':id,
      'name':name,
      'number':number,
      'description':description,
      'imageUrl':imageUrl,
      'link':link,
    });
  }

  Future updateSchemeApplicationData({
    String userid,
    String name,
    String email,
    String phoneNo,
    String gender,
    String aadharNo,
    String address,
    String pincode,
    String accountNo,
    String ifsc,
    String schemeId,
    String krishibhavan,
    bool applicationStatus=false,
    bool applied=false,
    int number,
    
    
  }) async {
    print(schemeId+'\n'+uid);
    return await schemeApplicationsCollection.document("$schemeId$uid").setData({
      'name': name ?? '',
      'email': email ?? '',
      'phoneNo': phoneNo,
      'gender': gender ?? '',
      'aadharNo': aadharNo ?? '',
      'address': address ?? '',
      'pincode': pincode ?? '',
      'accountNo': accountNo ?? '',
      'ifsc': ifsc,
       'userid':uid,
      'schemeid':schemeId,
      'number':number,
      'approved':applicationStatus,
      'applied':applied,
      'krishibhavan':krishibhavan,
      // 'scheme':scheme,
    });
    print(schemeId+'\n'+uid);
  }

//userdata form snapshot
  UserData _userDataFromSnapshot(DocumentSnapshot docSnap) {
    return UserData(
      uid: uid,
      name: docSnap['name'],
      email: docSnap['email'],
      phoneNo: docSnap['phoneNo'],
      aadharNo: docSnap['aadharNo'],
      pincode: docSnap['pincode'],
      ifsc: docSnap['ifsc'],
      gender: docSnap['gender'],
      accountNo: docSnap['accountNo'],
      address: docSnap['address'],

    );
  }

//get user doc stream
  Stream<UserData> get userData {
    return userCollection.document(uid).snapshots().map(
          (snap) => _userDataFromSnapshot(snap),
        );
  }

  Future<UserData> get usrDt async{
   return  await userCollection.document(uid).get().then(
      (doc) {
        return UserData(
          name: doc['name'],
          email: doc['email'],
          aadharNo: doc['aadharNo'],
          accountNo: doc['accountNo'],
          address: doc['address'],
          gender: doc['gender'],
          ifsc: doc['ifsc'],
          phoneNo: doc['phoneNo'],
          pincode: doc['pincode'],
        );
      },
    );
  }

  UserData get userD {
    UserData value;
    userData.listen((val) {
      value = val;
    });
    return value;
  }
}
