import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sjk/Homepage/Forgot.dart';
import 'package:sjk/Homepage/Homepage.dart';

import 'package:sjk/Homepage/Sign-up.dart';

import '../SizeConfig.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController? email;
  TextEditingController? password;
  bool _passwordVisible = false;
  Future<String?> _loginAccount() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email!.text,
        password: password!.text,
      );
      return null;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return "The password is too weak";
      } else if (e.code == 'email-already-in-use') {
        return "The account already exist for that email";
      }
      return e.message;
    } catch (e) {
      return e.toString();
    }
  }


  Future<void> _alertDialogBox(String error) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              "Error",
              style: TextStyle(color: Theme.of(context).focusColor),
            ),
            content: Container(
              child: Text(
                error,
                style: TextStyle(color: Colors.black,fontSize: SizeConfig.height!*2.5),
              ),
            ),
            actions: [
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Close",
                    style: TextStyle(color: Colors.blue),
                  )),
            ],
          );
        });
  }

  void _submitform() async {
    String? feedback = await _loginAccount();
    if (feedback != null) {
      _alertDialogBox(feedback);
    } else {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homepage()));
    }
  }
  @override

  void initState() {
    email = new TextEditingController();
    password = new TextEditingController();
  }

  Widget build(BuildContext context) {

    var _userPasswordController;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.only(top:80,right: 30,left: 30),
          child: Column(
            children: [
              Align(alignment:Alignment.center,child: Text('Login Here !',style:TextStyle(color:Color(0xff1248a3),fontSize: 28,fontWeight: FontWeight.w800,fontFamily: 'Inter'))),
              Padding(
                padding: const EdgeInsets.only(top:20),
                child: Column(
                  children: [
                    Align(
                        alignment:Alignment.topLeft,child: Text('Email',style: TextStyle(fontSize: 18,color:Colors.black),)),
                    Container(
                      //
                      // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                        margin: EdgeInsets.only(top:10,),
                        height: 52,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                            )
                          ],
                          color: Colors.white,
                          border: Border.all(
                            width: 1,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          ),
                        ),
                        child: TextFormField(
                          controller: email,
                          cursorColor: Color(0xff01579B),
                          keyboardType:TextInputType.emailAddress ,
                          decoration: new InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                  left: 10, bottom: 10, top: 10, right: 10),
                            hintText: "Enter your  Email"
                              ),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20),
                child: Column(
                  children: [
                    Align(
                        alignment:Alignment.topLeft,child: Text('Password',style: TextStyle(fontSize: 18,color:Colors.black),)),
                    Container(
                      //
                      // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                        margin: EdgeInsets.only(top:10,),
                        height: 52,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                            )
                          ],
                          color: Colors.white,
                          border: Border.all(
                            width: 1,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          ),
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          controller: password,
                          obscureText: !_passwordVisible,
                          cursorColor: Color(0xff01579B),
                          decoration: InputDecoration(
                              suffixIcon:  IconButton(
                                icon: Icon(
                                  // Based on passwordVisible state choose the icon
                                  _passwordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.black,
                                ),
                                onPressed: () {
                                  // Update the state i.e. toogle the state of passwordVisible variable
                                  setState(() {
                                    _passwordVisible = !_passwordVisible;
                                  });
                                },
                              ),

                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                  left: 10, bottom: 5, top: 10, right: 10),
                              hintText: 'Enter Password'
                          ),
                        )),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top:30.0),
                child: Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                     if (email!.text.length == 0) {
                        _alertDialogBox("Email should not be Empty");
                      } else if (password!.text.length == 0) {
                        _alertDialogBox("Password should not be Empty");
                      }  else {
                        _submitform();
                      }
                    },
                    child: Container(
                      height: 50,width: 100,
                      decoration: BoxDecoration(

                          color:Color(0xff1248a3),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Center(child: Text('LOG-IN',style:TextStyle(color: Colors.white,fontWeight: FontWeight.w500))),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (_) => Forgot()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(top:12.0),
                  child: Align(alignment:Alignment.center ,
                    child: Text('Forgot Password?'
                        ,style: TextStyle(
                        color:Color(0xff1248a3),),),
                  ),
                ),
              ),
              Expanded(
                flex: 11,
                child: Row(
                  children: [
                    Expanded(
                      flex:5,
                      child: Padding(
                        padding:EdgeInsets.symmetric(vertical:10.0),
                        child:Container(
                          height:1.0,
                          width:130,
                          color:Color(0xff1248a3),),),
                    ),
                    Expanded(
                      flex: 1,

                        child: Center(
                          child: Container(
                            child: Text('OR'),
                          ),
                        ),
                      ),

                    Expanded(
                      flex:5,child: Padding(
                        padding:EdgeInsets.symmetric(vertical:10.0),
                        child:Container(
                          height:1.0,
                          width:130,
                          color:Color(0xff1248a3),),),
                    ),

                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 50,width: 220,
                  decoration: BoxDecoration(

                      color:Color(0xff1248a3),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Container(
                            height:30,width:30,child: Image(image: AssetImage('assets/g1.png'),fit: BoxFit.fill,)),
                        Padding(
                          padding: const EdgeInsets.only(left:20,right: 10,),
                          child: Align(alignment:Alignment.centerRight,child: Text('Log-In with Google',style:TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 15))),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:100,top:25.0,bottom: 150),
                    child: Align(alignment:Alignment.center ,
                      child: Text('New User?'
                        ,style: TextStyle(
                          color:Colors.black),),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (_) => Homepage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top:25.0,left: 5,bottom: 150),
                      child: Align(alignment:Alignment.center ,
                        child: Text('Sign-Up'
                          ,style: TextStyle(
                            color:Color(0xff1248a3),),),
                      ),
                    ),
                  ),
                ],
              ),

                ]
      ),
         )
      ),

    );

  }
}
