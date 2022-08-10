import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sjk/payment.dart';

class Income extends StatefulWidget {
  const Income({Key? key}) : super(key: key);

  @override
  State<Income> createState() => _IncomeState();
}

class _IncomeState extends State<Income> {
  TextEditingController dateInput=new TextEditingController();
  @override
  Widget build(BuildContext context) {

    var inputType;
    return Scaffold(
        appBar: AppBar(
          backgroundColor:  Color(0xff01579B),
          leading:GestureDetector(
        onTap: () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => Data5()));
    },
          child:Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 20,

          ),),
          title: Text(
            "Income",
            style: TextStyle(
                fontSize: 20, fontFamily: 'Inter', color: Colors.white,fontWeight: FontWeight.bold),
          )),

        body: Container(
          margin: EdgeInsets.all(20),
          height: 600,
          width: 400,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 3, color: Colors.black),
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
                    color: Colors.white10,
                    border: Border.all(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    )),
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
                        border: InputBorder.none//icon of text field
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
                          setState((){
                            dateInput.text="";
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
            Container(
              //
              // Figma Flutter Generator Rectangle4Widget - RECTANGLE
              margin: EdgeInsets.all(20),
              height: 32,
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
                    hintText: "Amount*"),
              )
            ),
            Container(
              //
              // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                margin: EdgeInsets.all(20),
                height: 62,
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
                      hintText: "Description*"),
                )
            )
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
                        backgroundColor: Colors.black,
                        textColor: Colors.white);
                  },
                  child: Container(
                      margin: EdgeInsets.all(20),
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                          color:  Color(0xff01579B),

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
                            color: Colors.white
                          ))),
                )),
              ),
            ])));
  }
}
