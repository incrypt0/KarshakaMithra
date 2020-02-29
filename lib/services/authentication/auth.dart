import 'package:farm_app/models/user.dart';
import 'package:farm_app/services/database/database.dart';
import 'package:firebase_auth/firebase_auth.dart';


class AuthService {
  //first we create an instance of firebaseauth service
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //converting firebase user to our custom user
  User _firebasetoUser(FirebaseUser fbaseUser) {
    return fbaseUser != null ? User(uid: fbaseUser.uid) : null;
  }

 


  //Firebase sign in stream
  Stream<User> get user {
    // return _auth.onAuthStateChanged.map((_)=>_firebasetoUser(_));
    return _auth.onAuthStateChanged.map(_firebasetoUser);
  }

  //sign in anonymously
  Future signInAnon() async {
    //Here we are creating a function which returns a future
    //This function will have try catch block to catch errors like connectivity issues

    try {
      AuthResult result = await _auth
          .signInAnonymously(); //Here we are creating a instance of AuthResult of anonymous login
      FirebaseUser user = result.user;
      print(user); //The user object
      return _firebasetoUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

//sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }

  //sign in using email and password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      User user = _firebasetoUser(result.user);
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //Phone Auth

  Future verifyPhone({String phoneNo}) async {
    final PhoneCodeAutoRetrievalTimeout autoRetrievalTimeout = (String verId) {};
    final PhoneCodeSent codeSent = (String verId, [int forceCodeResend]) {};
    final PhoneVerificationCompleted verificationSuccess = (AuthCredential credential) {
      _auth.signInWithCredential(credential);
    };
    final PhoneVerificationFailed verificationFailed = (AuthException authException) {};

    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNo,
      timeout: const Duration(seconds: 60),
      verificationCompleted: verificationSuccess,
      verificationFailed: verificationFailed,
      codeSent: codeSent,
      codeAutoRetrievalTimeout: autoRetrievalTimeout,
    );
  }

  //register with email and password
  Future registerWithEmailAndPassword(
      {String email, String password, String name, String phoneNo}) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      User user = _firebasetoUser(result.user);
      //create a new document for a new user
      await DatabaseService(uid: result.user.uid)
          .updateUserData(email: email, name: name, phoneNo: phoneNo);
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
