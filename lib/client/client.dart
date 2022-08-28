import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../Homepage/Homepage.dart';

class Data1 extends StatefulWidget {
  const Data1({Key? key}) : super(key: key);

  @override
  State<Data1> createState() => _Data1State();
}

class _Data1State extends State<Data1> {
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
              "CLIENT",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Inter',
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )),
        body: Container(
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
        bottomNavigationBar:
            Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                color: Color(0xff01579B),
                child: Text(
                  'ADD NEW CLIENT +',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () => _onButtonPressed(),
              ),
            ],
          ),
        ));
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
                          hintText: "Client Name*"),
                    )),
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
                          hintText: "Contact Details*"),
                    )),
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
                          hintText: "Place*"),
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
