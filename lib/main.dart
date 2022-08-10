import 'dart:async';
import 'SizeConfig.dart';
import 'package:flutter/material.dart';

import 'Homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:SplashScreen() ,
    );
  }
}
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homepage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SafeArea(
      child:Scaffold(
          backgroundColor: Colors.pink,
          body:Center(
              child:Container(

                child: Image.asset('assets/splash.gif',fit:BoxFit.cover ,),
              )
          )
      ),
    );
  }
}
