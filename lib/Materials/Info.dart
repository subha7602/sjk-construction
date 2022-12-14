import 'package:flutter/material.dart';
import 'material.dart';

import 'package:intl/intl.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  TextEditingController dateInput = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    var inputType;
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xff01579B),
            leading: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => Data3()));
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 20,
              ),
            ),
            title: Text(
              "MATERIAL-INFO",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Inter',
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )),
        body: Container(
          margin: EdgeInsets.only(top: 80, left: 20, right: 20),
          height: 460,
          width: 400,
          decoration: BoxDecoration(
              color: Color(0xffe6f2ff),
              border: Border.all(
                width: 3,
                color: Color(0xff01579B),
              ),
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
                margin:
                    EdgeInsets.only(top: 30, right: 20, left: 20, bottom: 25),
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
                margin: EdgeInsets.only(right: 20, left: 20),
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
            Container(
                //
                // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                margin: EdgeInsets.only(top: 25, right: 20, left: 20),
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
                child: Container(
                    height: 62,
                    width: 150,
                    child: Center(
                        child: TextField(
                      controller: dateInput,

                      //editing controller of this TextField
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.calendar_today,
                            color: Colors.black,
                          ),
                          hintText: "Choose Date*",
                          border: InputBorder.none //icon of text field
                          //labelText: dateInput.text,//label text of field
                          ),
                      readOnly: true,
                      //set it true, so that user will not able to edit text
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1950),
                            //DateTime.now() - not to allow to choose before today.
                            lastDate: DateTime(2100));

                        if (pickedDate != null) {
                          print(
                              pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                          String formattedDate =
                              DateFormat('yyyy-MM-dd').format(pickedDate);
                          print(
                              formattedDate); //formatted date output using intl package =>  2021-03-16
                          setState(() {
                            dateInput.text =
                                formattedDate; //set output date to TextField value.
                          });
                        } else {
                          setState(() {
                            dateInput.text = "";
                          });
                        }
                      },
                    )),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ))),
            Row(
              children: [
                Container(
                    //
                    // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                    margin: EdgeInsets.only(top: 25, left: 20, right: 5),
                    height: 52,
                    width: 110,
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
                          hintText: "Quantity*"),
                    )),
                Container(
                    //
                    // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                    margin: EdgeInsets.only(top: 25, bottom: 2),
                    alignment: Alignment.center,
                    height: 52,
                    width: 20,
                    child: Icon(Icons.close)),
                Container(
                    //
                    // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                    margin: EdgeInsets.only(top: 25, right: 20, left: 10),
                    height: 52,
                    width: 160,
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
                          hintText: "Rate Per Unit*"),
                    )),
              ],
            ),
            Container(
                //
                // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                margin: EdgeInsets.only(top: 25, right: 20, left: 20),
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
                child: Center(
                    child: Text(
               'Net Amount:',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ))),
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
            ])));
  }
}
