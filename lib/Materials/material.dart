import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../Homepage/Homepage.dart';
import 'Info.dart';
class Data3 extends StatefulWidget {
  final List data;
  const Data3({Key? key, required this.data}) : super(key: key);

  @override
  State<Data3> createState() => _Data3State();
}

class _Data3State extends State<Data3> {
  //String value = "Type of Building";
  //List<String> items = ["Residential", "Non-Residential","Others"];

  @override
  Widget build(BuildContext context) {
    var inputType;
    return Scaffold(

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
              "MATERIALS",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Inter',
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )),
        body:
        Column(
          children: [
            // Container(
            //   //
            //   // Figma Flutter Generator Rectangle4Widget - RECTANGLE
            //     margin: EdgeInsets.all(20),
            //     height: 52,
            //     width: 350,
            //     decoration: BoxDecoration(
            //       color: Colors.white10,
            //       border: Border.all(width: 1, color: Colors.black),
            //       borderRadius: BorderRadius.only(
            //         topLeft: Radius.circular(15),
            //         topRight: Radius.circular(15),
            //         bottomLeft: Radius.circular(15),
            //         bottomRight: Radius.circular(15),
            //       ),
            //     ),
            //     child:TextFormField(
            //       cursorColor: Colors.black,
            //       keyboardType: inputType,
            //       decoration: new InputDecoration(
            //           border: InputBorder.none,
            //           focusedBorder: InputBorder.none,
            //           enabledBorder: InputBorder.none,
            //           errorBorder: InputBorder.none,
            //           disabledBorder: InputBorder.none,
            //           contentPadding:
            //           EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
            //           hintText: "Search material",
            //           prefixIcon: Icon(Icons.search)),
            //     )
            // ),

            Container(
              height: 450,
              child:
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 105,
                    width:350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                      color: Color.fromRGBO(217, 217, 217, 1),
                    ),
                    child: Expanded(
                      flex:8,
                      child: Row(
                        children: [  Expanded(
                        flex: 4,
                        child: Container(
                          margin:
                          EdgeInsets.only(right: 20, top: 10, bottom: 10),
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                              bottomLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12),
                            ),
                          ),
                          padding: EdgeInsets.all(20),
                          child: Text(
                            widget.data[index]["Material"],
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                margin:
                                EdgeInsets.only(right: 20, top: 10, bottom: 10),
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1, color: Colors.black),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12),
                                    bottomLeft: Radius.circular(12),
                                    bottomRight: Radius.circular(12),
                                  ),
                                ),
                                padding: EdgeInsets.all(20),
                                child: Text(
                                  widget.data[index]["Quantity"],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin:
                            EdgeInsets.only(right: 20, top: 10, bottom: 10),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                              ),
                            ),
                            padding: EdgeInsets.all(20),
                            child: Text(
                              widget.data[index]["Quantity"],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                           ],

                          ),


                    ),
                  );
                },
                itemCount: widget.data.length,
              ),
            ),
            GestureDetector(
              onTap: () {
                //_submitform();
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Info(data: [],)));
              },
              child: Container(
                width: 200,
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
                          'ADD NEW MATERIAL+',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
            )
          ],
        ),

        );
  }


}
