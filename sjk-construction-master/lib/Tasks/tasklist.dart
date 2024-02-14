import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:sjk/Tasks/Task_service.dart';
import 'package:sjk/Tasks/task.dart';

class Tasklist extends StatefulWidget {
  const Tasklist({Key? key}) : super(key: key);

  @override
  State<Tasklist> createState() => _TasklistState();
}

class _TasklistState extends State<Tasklist> {
  TextEditingController task = TextEditingController();

 // var inputType;

  void enterdata() async {
    DocumentReference docRef =
        FirebaseFirestore.instance.collection("task").doc();

    DocumentSnapshot docSnap = await docRef.get();
    var doc = docSnap.reference.id;
    Map<String, String> data = {
      "task": task.text,
      "start": dateInput.text,
      "end": dateInput2.text,

      "doc id": doc,
    };
    await FirebaseFirestore.instance
        .collection("task")
        .doc(doc)
        .set(data)
        // .whenComplete(() => toast('Saved Successfully', Colors.blue))
        .whenComplete(() => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Task_service())));
  }

  TextEditingController dateInput =  TextEditingController();

  TextEditingController dateInput2 = TextEditingController();



  @override
  Widget build(BuildContext context) {
    //var inputType;
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color(0xff01579B),
            leading: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => const Task_service()));
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 20,
              ),
            ),
            title: const  Text(
              "TASK-STATUS",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Inter',
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20),
            height: 500,
            width: 400,
            decoration: BoxDecoration(
                color: const  Color(0xffe6f2ff),
                border: Border.all(
                  width: 3,
                  color: const Color(0xff01579B),
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                )),

            child: Center(
              child: Column(children: [
                Container(
                    //
                    // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                    margin: const EdgeInsets.all(20),
                    height: 50,
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
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                    ),
                    child: TextFormField(
                      controller: task,
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.name,
                      decoration: const  InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                          hintText: "Task Name"),
                    )),
                Container(

                    // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                    margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    height: 70,
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
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                    ),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                          hintText: "Task Description"),
                    )),
                Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    height: 50,
                    width: 380,
                    decoration: BoxDecoration(
                      boxShadow:const [
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
                        height: 60,
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
                          decoration: const InputDecoration(
                              hintText: "Start Date",
                              icon: Icon(
                                Icons.calendar_today,
                                color: Colors.black,
                              ),
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
                    margin:const EdgeInsets.only(top: 20, left: 20, right: 20),
                    height: 50,
                    width: 380,
                    decoration: BoxDecoration(
                      boxShadow: const  [
                        BoxShadow(
                          blurRadius: 7,
                        )
                      ],
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                      borderRadius:const BorderRadius.only(
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
                        child:  Center(
                            child: TextField(
                          controller: dateInput2,
                          //editing controller of this TextField
                          decoration: const InputDecoration(
                              hintText: "End Date",
                              icon: Icon(
                                Icons.calendar_today,
                                color: Colors.black,
                              ),
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
                                dateInput2.text =
                                    formattedDate; //set output date to TextField value.
                              });
                            } else {
                              setState(() {
                                dateInput2.text = "";
                              });
                            }
                          },
                        )))),
                Container(
                    //
                    // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                    margin:const EdgeInsets.all(20),
                    height: 50,
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
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                    ),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                          hintText: "Client-Name"),
                    )),
              ]),
            ),
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
                  enterdata();
                  // Fluttertoast.showToast(
                  //     msg: "Saved Successfully",
                  //     gravity: ToastGravity.CENTER,
                  //     toastLength: Toast.LENGTH_LONG,
                  //     backgroundColor: Colors.black,
                  //     textColor: Colors.white);
                },
                child: Container(
                    margin: const EdgeInsets.all(20),
                    height: 50,
                    width: 100,
                    decoration: const BoxDecoration(
                        color: Color(0xff01579B),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        )),
                    alignment: Alignment.center,
                    child: const Text("SAVE",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
              )),
            ])));
  }
}
