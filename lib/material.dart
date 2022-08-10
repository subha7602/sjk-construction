import 'package:flutter/material.dart';

import 'Homepage.dart';
class Data3 extends StatefulWidget {
  const Data3({Key? key}) : super(key: key);

  @override
  State<Data3> createState() => _Data3State();
}




class _Data3State extends State<Data3> {
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
            "MATERIAL",
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
    );
  }
}
