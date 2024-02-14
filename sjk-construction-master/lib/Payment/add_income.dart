import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sjk/Payment/income_service.dart';
import 'package:sjk/Payment/payment.dart';

class Add_Income extends StatefulWidget {
  const Add_Income({Key? key}) : super(key: key);

  @override
  State<Add_Income> createState() => _Add_IncomeState();
}

class _Add_IncomeState extends State<Add_Income> {
  TextEditingController dateInput =  TextEditingController();
  TextEditingController amount =  TextEditingController();
  TextEditingController description =  TextEditingController();
  void submit() {
    dateInput.text.isEmpty
        ? toast('Select Date', Colors.red)
        : amount.text.isEmpty
            ? toast('Enter amount', Colors.red)
            : enterdata();
  }

  void toast(String text, Color clr) {
    Fluttertoast.showToast(
        msg: text,
        gravity: ToastGravity.CENTER,
        toastLength: Toast.LENGTH_LONG,
        backgroundColor: clr,
        textColor: Colors.white);
  }

  void enterdata() async {

    DocumentReference docRef = FirebaseFirestore.instance
        .collection("income").doc();

    DocumentSnapshot docSnap = await docRef.get();
    var doc = docSnap.reference.id;
    Map<String, String> data = {
      "Date": dateInput.text,
      "Amount": amount.text,
      "Description": description.text,
      "doc id":doc,
    };
    await FirebaseFirestore.instance
        .collection("income")
        .doc(doc)
        .set(data)
        .whenComplete(() => toast('Saved Successfully', Colors.blue))
        .whenComplete(() => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Income_service())));
  }

  @override
  Widget build(BuildContext context) {
    //var inputType;
    return SafeArea(
      child: Scaffold(

          body: Center(
            child: Container(
              margin:const EdgeInsets.all(20),
              height: 400,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: const Color(0xffe6f2ff),
                  border: Border.all(
                    width: 3,
                    color: const  Color(0xff01579B),
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  )),
              child: Column(children: [
                Container(
                    margin: const EdgeInsets.all(20),
                    height: 40,
                    width: 380,
                    decoration: BoxDecoration(
                      boxShadow:const  [
                        BoxShadow(
                          blurRadius: 7,
                        )
                      ],
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                    ),
                    child: Container(
                        height: 62,
                        width: 150,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                        ),
                        child: Center(
                            child: TextField(
                          controller: dateInput,

                          //editing controller of this TextField
                          decoration:const  InputDecoration(
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
                        )))),
                Container(
                    //
                    // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                    margin: const EdgeInsets.all(20),
                    height: 32,
                    width: 350,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 7,
                        )
                      ],
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                      borderRadius:const  BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                    ),
                    child: TextFormField(
                      controller: amount,
                      cursorColor: const Color(0xff01579B),
                      keyboardType: TextInputType.number,
                      decoration: const  InputDecoration(
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
                    margin: const EdgeInsets.all(20),
                    height: 62,
                    width: 350,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 7,
                        )
                      ],
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                      borderRadius:const  BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                    ),
                    child: TextFormField(
                      controller: description,
                      cursorColor: const Color(0xff01579B),
                      keyboardType: TextInputType.name,
                      decoration: const  InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                          hintText: "Description*"),
                    )),

              ]),

            ),
          ),
          bottomNavigationBar: Container(
              height: 100,
              width: 300,
              color: Colors.white30,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Center(
                    child: GestureDetector(
                  onTap: () {
                    submit();
                  },
                  child: Container(
                      margin:const  EdgeInsets.all(20),
                      height: 50,
                      width: 100,
                      decoration:const  BoxDecoration(
                          color: Color(0xff01579B),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          )),
                      alignment: Alignment.center,
                      child:const  Text("SAVE",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))),
                )),
              ]))),
    );
  }
}
