import 'package:flutter/material.dart';

import 'Homepage.dart';
class Data6 extends StatefulWidget {
  const Data6({Key? key}) : super(key: key);

  @override
  State<Data6> createState() => _Data6State();
}




class _Data6State extends State<Data6> {
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
            "CALCULATOR",
            style: TextStyle(
                fontSize: 20, fontFamily: 'Inter', color: Colors.white,fontWeight: FontWeight.bold),
          )),
      body: Container(
        //
        // Figma Flutter Generator Rectangle4Widget - RECTANGLE
          margin: EdgeInsets.all(20),
          height: 32,
          width: 300,
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

      ),
    );
  }
}
