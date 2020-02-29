import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farm_app/models/user.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});
  final CollectionReference userCollection = Firestore.instance.collection('users');

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
    return await userCollection.document(uid).updateData({
      'name': name ,
      'email': email ?? '',
      'phoneNo': phoneNo,
      'gender': gender ?? '',
      'aadharNo': accountNo ?? '',
      'address': address ?? '',
      'pincode': pincode ?? '',
      'accountNo': accountNo ?? '',
      'ifsc': ifsc,
    });
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
