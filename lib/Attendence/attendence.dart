import 'package:flutter/material.dart';
import 'package:sjk/Homepage/Homepage.dart';
import 'Present.dart';

import '../Tasks/Worker.dart';

class Data4 extends StatefulWidget {
  const Data4({Key? key}) : super(key: key);


  @override
  State<Data4> createState() => _Data4State();
}



class _Data4State extends State<Data4> {
  @override
  Widget build(BuildContext context) {
    var inputType;
    return Scaffold(
      appBar: AppBar(
          backgroundColor:  Color(0xff01579B),
          leading:GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => Homepage()));
            },
            child:Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 20,

            ),),
          title: Text(
            "ATTENDENCE",
            style: TextStyle(
                fontSize: 20, fontFamily: 'Inter', color: Colors.white,fontWeight: FontWeight.bold),
          )),
    body: Column(
      children: [
        Container(
          //
          // Figma Flutter Generator Rectangle4Widget - RECTANGLE
            margin: EdgeInsets.all(20),
            height: 52,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.white10,
              border: Border.all(width: 1, color: Colors.black),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child:TextFormField(
              cursorColor: Colors.black,
              keyboardType: inputType,
              decoration: new InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding:
                  EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search)),
            )
        ),
        // Figma Flutter Generator Rectangle1Widget - RECTANGLE
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  width: 350,
                  height: 105,
                  decoration: BoxDecoration(
                    borderRadius : BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                    color : Color.fromRGBO(217, 217, 217, 1),
                  ),
                  child:Row(
                    children: [
                      // Figma Flutter Generator Rectangle2Widget - RECTANGLE
                      Container(
                          width: 210,
                          height: 75,
                          margin: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius : BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                              bottomLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12),
                            ),

                            color : Color.fromRGBO(255, 255, 255, 1),
                          )
                      ),
                      // Figma Flutter Generator Rectangle10Widget - RECTANGLE
                      Container(
                          width: 89,
                          height: 73,

                          decoration: BoxDecoration(
                            color : Color.fromRGBO(217, 217, 217, 1),
                          ),
                        child:Column(
                          children: [
                            // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                            GestureDetector(
                              onTap: () {
                                //_submitform();
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Present()));
                              },
                              child: Container(
                                  width: 78,
                                  height: 32,
                                  margin: EdgeInsets.only(bottom: 9),
                                  decoration: BoxDecoration(
                                    borderRadius : BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12),
                                      bottomLeft: Radius.circular(12),
                                      bottomRight: Radius.circular(12),
                                    ),
                                    color : Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                child: Align(
                                    alignment:Alignment.center,child: Text('PRESENT',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)),
                              ),
                            ),
                            // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                            Container(
                                width: 78,
                                height: 32,
                                decoration: BoxDecoration(
                                  borderRadius : BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12),
                                    bottomLeft: Radius.circular(12),
                                    bottomRight: Radius.circular(12),
                                  ),
                                  color : Color.fromRGBO(255, 255, 255, 1),
                                ),
                              child: Align(
                                  alignment:Alignment.center,child: Text('ABSENT',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)),
                            )
                          ],
                        ),
                      )
                    ],
                  )
              ),

            ],
          ),

        )
      ],
    ),
        bottomNavigationBar: GestureDetector(
          onTap: () {
            //_submitform();
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Worker()));
          },        child: Container(
          width: 50,
          height: 50,
          margin: EdgeInsets.all(30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
            ),

            color: Color(0xff01579B),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    'ADD NEW WORKER+',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
        ),
      );
  }
}
