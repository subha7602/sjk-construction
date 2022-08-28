import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:sjk/Payment/income_service.dart';
import 'package:sjk/Payment/payment.dart';

class Add_Expense extends StatefulWidget {
  const Add_Expense({Key? key}) : super(key: key);

  @override
  State<Add_Expense> createState() => _Add_ExpenseState();
}

class _Add_ExpenseState extends State<Add_Expense> {
  @override
  Widget build(BuildContext context) {
    var inputType;
    var dateInput;
    return Scaffold(
        body: Center(
          child: Container(
            margin: EdgeInsets.all(20),
            height: 400,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color(0xffe6f2ff),
                border: Border.all(width: 3, color: Color(0xff01579B)),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                )),
            child: Column(children: [
              Container(
                  margin: EdgeInsets.all(20),
                  height: 40,
                  width: 380,
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
                            ), //icon of text field
                            labelText: "Choose Date*" //label text of field
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
                              var dateInput;
                              dateInput.text =
                                  formattedDate; //set output date to TextField value.
                            });
                          } else {}
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
              Container(
                  //
                  // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                  margin: EdgeInsets.all(20),
                  height: 32,
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
                        hintText: "Amount*"),
                  )),
              Container(
                  //
                  // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                  margin: EdgeInsets.all(20),
                  height: 62,
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
                        hintText: "Description*"),
                  ))
            ]),
          ),
        ),
        bottomNavigationBar: Container(
            height: 100,
            width: 300,
            color: Colors.white30,
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
            ))));
  }
}
