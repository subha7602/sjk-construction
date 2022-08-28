import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../Homepage/Homepage.dart';
import 'Info.dart';
class Data3 extends StatefulWidget {
  const Data3({Key? key}) : super(key: key);

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

            Container(
                width: 350,
                height: 105,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                  color: Color.fromRGBO(217, 217, 217, 1),
                ),
                child: Row(
                  children: [
                    // Figma Flutter Generator Rectangle2Widget - RECTANGLE
                    Container(
                        width: 170,
                        height: 75,
                        margin: EdgeInsets.only(
                            top: 20, bottom: 20, left: 20, right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                          color: Color.fromRGBO(255, 255, 255, 1),
                        )),
                    // Figma Flutter Generator Rectangle10Widget - RECTANGLE
                    Container(
                      width: 40,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 60,
                      margin: EdgeInsets.only(
                          top: 20, bottom: 20, left: 10, right: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Info()));
                      },
                      child: Container(
                        width: 30,
                        height: 60,
                        margin: EdgeInsets.only(
                          top: 20,
                          bottom: 20,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                              bottomLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12),
                            ),
                            color: Colors.white10),
                        child: Icon(Icons.read_more_rounded),
                      ),
                    ),
                  ],
                )),
            Container(
              margin: EdgeInsets.only(top:340),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RaisedButton(
                    color: Color(0xff01579B),
                    child: Text(
                      'ADD NEW MATERIAL +',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () => _onButtonPressed(),
                  ),
                ],
              ),
            )
          ],
        ),

        );
  }

  _onButtonPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          var inputType;
          return Container(

            color: Color(0xffe6f2ff),
            child: Column(
              children: [
                Container(
                  //
                  // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                    margin: EdgeInsets.only(top: 40, right: 20, left: 20),
                    height: 52,
                    width: 350,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 7,
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
                      cursorColor: Color(0xff01579B),
                      keyboardType: inputType,
                      decoration: new InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                          hintText: "Material Name*"),
                    )),


                // Container(
                //     margin: EdgeInsets.only(top: 40, right: 20, left: 20),
                //     padding: EdgeInsets.all(10),
                //     height: 52,
                //     width: 350,
                //     decoration: BoxDecoration(
                //       boxShadow: [
                //         BoxShadow(
                //           blurRadius: 7,
                //         )
                //       ],
                //       color: Colors.white,
                //       border: Border.all(
                //         width: 1,
                //         color: Colors.white,
                //       ),
                //       borderRadius: BorderRadius.only(
                //         topLeft: Radius.circular(5),
                //         topRight: Radius.circular(5),
                //         bottomLeft: Radius.circular(5),
                //         bottomRight: Radius.circular(5),
                //       ),
                //     ),
                //     child: DropdownButton(
                //         value: value,
                //         items: items.map((String items) {
                //           return DropdownMenuItem(
                //               child: Text(items), value: items);
                //         }).toList(),
                //         onChanged: (String? subha) {
                //           setState(() {
                //             value = subha!;
                //           });
                //         })),
                Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
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
                                      color: Color(0xff01579B),
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
                                          color: Colors.white))),
                            )),
                      ),
                    ])
              ],
            ),
          );
        });
  }
}
