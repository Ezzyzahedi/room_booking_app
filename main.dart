import 'package:flutter/material.dart';
import 'package:rentus/home.dart';
import 'package:rentus/login.dart';
import 'package:rentus/mobile.dart';
import 'package:rentus/register.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Rooms",
      debugShowCheckedModeBanner: false,
      home: Index(),
      theme: ThemeData(
        primaryColor: Colors.indigo[600]
      ),
      routes: {
        "/login":(context)=>LoginPage(),
        "/register":(context)=>RegisterPage(),
        "/home":(context)=>HomePage(),
        "/mobile":(context)=>MobileAuth()

      },
    );
  }
}
class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {

  @override
  Widget build(BuildContext context) {
double y=MediaQuery.of(context).size.height;
    return Scaffold(

      body:SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.1,0.5,0.7,0.9],
                  colors: [
                    Colors.white,
                    Colors.indigo[400],
                    Colors.indigo[600],
                    Colors.indigo[700]
                  ]
              )
            ),
            child: Stack(
              children: <Widget>[
                Center(child: Text("REnt App",style: TextStyle(color: Colors.white),),),
                Positioned(
                  top: y/1.30,
                  child: InkWell(
                    onTap: (){
                      print("Tapped");
                      Navigator.of(context).pushNamed('/login');
                    },
                    child: Container(
                      height: 50.0,
                      width: MediaQuery.of(context).size.width,
                      child: Center(child: Text("Get Started",style: TextStyle(color: Colors.indigo[600]),),),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
      )
    );
  }
}

