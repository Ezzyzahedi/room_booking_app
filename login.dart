import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:toast/toast.dart';
import 'package:shared_preferences/shared_preferences.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  resizeToAvoidBottomPadding: false,

        body: ListView(
        children: <Widget>[
          WavyHeaderImage(),
        ],
      ),

    );
  }
}
final FirebaseAuth _auth = FirebaseAuth.instance;

class WavyHeaderImage extends StatefulWidget {
  @override
  _WavyHeaderImageState createState() => _WavyHeaderImageState();
}

class _WavyHeaderImageState extends State<WavyHeaderImage> {

  String phoneNumber,verificationCode,verficationId;
  TextEditingController email=new TextEditingController();
  TextEditingController pass=new TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<bool> setUserId(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString("UserId", value);
  }

  signin(){

    Navigator.of(context).pushNamed("/home");

//    FirebaseUser user;
//    try{
//      user=await _auth.signInWithEmailAndPassword(
//          email: email.text,
//          password: pass.text
//      );
//    }catch(e){
//      print("error"+e.toString());
//    }finally{
//      if(user!=null){
//        setUserId(user.uid);
//        Navigator.of(context).pushNamed("/home");
//      }
//      else{
//        print("Authentication Failed");
//
//        Toast.show("Authentication failed", context);
//      }
//    }

  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ClipPath(
          child: Container(
            // Add box decoration
            height: 250.0,
            width: double.infinity,
            color: Colors.indigo[600],
            child: Center(
              child: Text("Hello\nAgain.",
                style: TextStyle(
                    fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
            //color: Colors.red,

          ),
          clipper: BottomWaveClipper(),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: email,
                    decoration: InputDecoration(
                      labelText: "Email",
                    ),
                  validator: (value)=>value.isEmpty ? 'Email can\'t be empty' : null,
                ),

                TextFormField(
                    obscureText: true,
                    controller: pass,
                    decoration: InputDecoration(
                      labelText: "Password",
                    ),
                    validator: (value)=>value.isEmpty ? 'Password can\'t be empty' : null,

                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                InkWell(
                  onTap: (){
                    signin();
                  },
                  child: Container(
                    height: 50.0,
                    child: Center(child: Text("Login",style: TextStyle(color: Colors.white),),),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.indigo[600]
                    ),
                  ),
                ),
                Text("OR"),
                RaisedButton(
                  child: Text("Mobile Number"),
                  onPressed: (){
                    Navigator.of(context).pushNamed('/mobile');
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // This is where we decide what part of our image is going to be
    // visible. If you try to run the app now, nothing will be shown.
    var path = new Path();
    path.lineTo(0.0, size.height - 20);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2.25, size.height - 30.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =
    Offset(size.width - (size.width / 3.25), size.height - 65);
    var secondEndPoint = Offset(size.width, size.height - 40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}