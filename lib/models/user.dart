class User {
  final String uid;
  User({this.uid});
}

class UserData {
  final String uid;
  final String name;
  final String email;
  final String phoneNo;
  final String gender;
  final String aadharNo;
  final String address; 
  final String pincode;
  final String accountNo;
  final String ifsc;
  final List applied;
  
  UserData({
    this.uid,
    this.name,
    this.email,
    this.phoneNo,
    this.aadharNo,
    this.accountNo,
    this.address,
    this.gender,
    this.pincode,
    this.ifsc,
    this.applied
    
  });
}
