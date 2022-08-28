import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:sjk/Attendence/shift_increaser.dart';

import '../SizeConfig.dart';
import 'package:flutter/material.dart';

import 'Homepage.dart';
import 'Sign-up.dart';

void main() {
  runApp(const MyApp());
}

class FireBaseInitialization extends StatefulWidget {
  const FireBaseInitialization({Key? key}) : super(key: key);

  @override
  _FireBaseInitializationState createState() => _FireBaseInitializationState();
}

class _FireBaseInitializationState extends State<FireBaseInitialization> {

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: FutureBuilder(
          future: _initialization,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Scaffold(
                resizeToAvoidBottomInset: false,
                body: Center(
                  child: Text("Error: ${snapshot.error}"),
                ),
              );
            }

            if (snapshot.connectionState == ConnectionState.done) {
              return StreamBuilder(
                  stream: FirebaseAuth.instance.authStateChanges(),
                  builder: (context, streamSnapshot) {
                    if (streamSnapshot.hasError) {
                      return Scaffold(
                        resizeToAvoidBottomInset: false,
                        body: Center(
                          child: Text("Errors: ${streamSnapshot.hasError}"),
                        ),
                      );
                    }

                    if (streamSnapshot.connectionState ==
                        ConnectionState.active) {

                      User? _user = streamSnapshot.data as User?;
                      if (_user == null) {
                        return Signup();
                      } else {
                        return Homepage();
                      }

                    }
                    return Scaffold(
                      resizeToAvoidBottomInset: false,
                      body: Center(
                          child: CircularProgressIndicator()
                      ),
                    );


                     });}
            return SplashScreen();
          }),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Shift>.value(value: Shift())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:SplashScreen() ,
      ),
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
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FireBaseInitialization()));
    });
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SafeArea(
      child:Scaffold(

          backgroundColor: Color(0xff01579B),
          body:Center(
              child:Container(
                   height:200,width: 200,
                child: Image.asset('assets/splash.gif',fit:BoxFit.cover ,),
              )
          )
      ),
    );
  }
}
