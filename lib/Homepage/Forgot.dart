import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../front/login_page.dart';

class Forgot extends StatefulWidget {
  const Forgot({Key? key}) : super(key: key);

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  final _emailController = TextEditingController();
  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future password_reset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _emailController.text);
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text('Password reset link is sent! Check your Email'),
            );
          });
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(e.message.toString()),
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff01579B),
          leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => Login()));
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 20,
            ),
          ),

            title: Text(
              "Back",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Inter',
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  height: 40,
                  width: 330,
                  margin: EdgeInsets.only(top: 80),
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )),
              Container(
                  height: 50,
                  width: 330,
                  child: Text(
                    'Enter your Email Here.Password reset Link will be sent to your Email',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  )),

              Container(
                  //
                  // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                  margin: EdgeInsets.only(
                    bottom: 20,
                    top: 20,
                  ),
                  height: 52,
                  width: 330,
                  decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Color(0xff01579B)),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                  ),
                  child: TextFormField(
                    cursorColor: Color(0xff01579B),
                    keyboardType: TextInputType.text,
                    controller: _emailController,
                    decoration: new InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 11, top: 11, right: 15),
                        hintText: "Enter your email "),
                  )),
              MaterialButton(
                onPressed: password_reset,
                child: Text(
                  'Reset Password',
                  style: TextStyle(color: Colors.white),
                ),
                color: Color(0xff01579B),
              )
            ],
          ),
        ));
  }
}
