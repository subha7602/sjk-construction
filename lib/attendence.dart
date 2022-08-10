import 'package:flutter/material.dart';
import 'package:sjk/Homepage.dart';

class Data4 extends StatefulWidget {
  const Data4({Key? key}) : super(key: key);

  @override
  State<Data4> createState() => _Data4State();
}



class _Data4State extends State<Data4> {
  @override
  Widget build(BuildContext context) {
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
          )),);
  }
}
