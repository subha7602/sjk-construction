import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sjk/Tasks/Task_service.dart';
import 'package:sjk/Tasks/tasklist.dart';
import '../Homepage/Homepage.dart';
import '../Payment/add_income.dart';

class Data2 extends StatefulWidget {
  final List data2;
  const Data2({Key? key, required this.data2}) : super(key: key);

  @override
  State<Data2> createState() => _Data2State();
}

class _Data2State extends State<Data2> {
  @override
  Widget build(BuildContext context) {
    var data1;
    var inputType;
    return Scaffold(
      backgroundColor: Color(0xffe6f2ff),
      appBar: AppBar(
          backgroundColor: Color(0xff01579B),
          leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => Homepage()));
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 20,
            ),
          ),
          title: Text(
            "TASKS",
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'Inter',
                color: Colors.white,
                fontWeight: FontWeight.bold),
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
              child: TextFormField(
                cursorColor: Colors.black,
                keyboardType: inputType,
                decoration: new InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding: EdgeInsets.only(
                        left: 15, bottom: 11, top: 11, right: 15),
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search)),
              )),
          Container(
            height: 450,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    height: 80,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                    ),
                    child: Column(
                      children: [
                        Container(
                          child:  Text(
                            widget.data2[index]["task"],
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(child:  Text(
                                widget.data2[index]["start"],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),),
                            ),
                            SizedBox(width: 110,),
                            Container(child:  Text(
                              widget.data2[index]["end"],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),)
                          ],
                        )
                      ],
                    ));
              },
              itemCount: widget.data2.length,
            ),
          ),
          GestureDetector(
            onTap: () {
              //_submitform();
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Tasklist()));
            },
            child: Container(
              width: 150,
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Text(
                        'ADD NEW TASK +',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  toast(String s, MaterialColor blue) {}
}
