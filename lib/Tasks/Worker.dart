
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sjk/Payment/payment.dart';

import '../Attendence/attendence.dart';

class Worker extends StatefulWidget {
  const Worker({Key? key}) : super(key: key);

  @override
  State<Worker> createState() => _WorkerState();
}

class _WorkerState extends State<Worker> {
  TextEditingController dateInput=new TextEditingController();
  @override
  Widget build(BuildContext context) {

    var inputType;
    return Scaffold(

        appBar: AppBar(
            backgroundColor:  Color(0xff01579B),
            leading:GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => Data4()));
              },
              child:Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 20,

              ),),
            title: Text(
              "WORKER",
              style: TextStyle(
                  fontSize: 20, fontFamily: 'Inter', color: Colors.white,fontWeight: FontWeight.bold),
            )),

        body: Container(

          margin: EdgeInsets.all(20),
          height: 640,
          width: 400,
          decoration: BoxDecoration(
              color: Color(0xffe6f2ff),
              border: Border.all(width: 3, color: Colors.black,),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              )),
          child: Column(children: [


            Container(
              //
              // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                margin: EdgeInsets.all(20),
                height: 62,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white10,
                  border: Border.all(width: 1, color: Colors.black,),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child:TextFormField(
                  cursorColor: Color(0xff01579B),
                  keyboardType: inputType,
                  decoration: new InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding:
                      EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                      hintText: "Worker Type*"),
                )
            ),
            Container(
              //
              // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                margin: EdgeInsets.only(bottom: 20,left: 20,right: 20),
                height: 62,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white10,
                  border: Border.all(width: 1, color: Colors.black,),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child:TextFormField(
                  cursorColor: Color(0xff01579B),
                  keyboardType: inputType,
                  decoration: new InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding:
                      EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                      hintText: "Salary per shift*"),
                )
            ),
            Container(
              //
              // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                margin: EdgeInsets.only(bottom: 20,left: 20,right: 20),
                height: 62,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white10,
                  border: Border.all(width: 1, color: Colors.black,),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child:TextFormField(
                  cursorColor: Color(0xff01579B),
                  keyboardType: inputType,
                  decoration: new InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding:
                      EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                      hintText: "Hours per shift*"),
                )
            )
          ]),
        ),
        bottomNavigationBar: Container(
            height: 100,
            width: 300,
            color: Colors.white30,
            child:
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Fluttertoast.showToast(
                            msg: "Saved Successfully",
                            gravity: ToastGravity.CENTER,
                            toastLength: Toast.LENGTH_LONG,
                            backgroundColor: Color(0xff01579B),
                            textColor: Colors.white);
                      },
                      child: Container(
                          margin: EdgeInsets.all(20),
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              color:  Color(0xff01579B),

                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                              )),
                          alignment: Alignment.center,
                          child: Text("SAVE",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ))),
                    )),
              ),
            ])));
  }
}

