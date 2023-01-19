import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:sjk/client/client_service.dart';

import '../Homepage/Homepage.dart';

class Data1 extends StatefulWidget {
  final List data1;
  final List<String> value;
   Data1({Key? key, required this.data1, required this.value}) : super(key: key);


  @override
  State<Data1> createState() => _Data1State();
}

class _Data1State extends State<Data1> {
  TextEditingController name = new TextEditingController();
  TextEditingController number = new TextEditingController();
  TextEditingController place = new TextEditingController();
  void enterdata() async {

    DocumentReference docRef = FirebaseFirestore.instance
        .collection("client").doc();

    DocumentSnapshot docSnap = await docRef.get();
    var doc = docSnap.reference.id;
    Map<String, String> data = {
      "Name": name.text,
      "Contact": number.text,
      "Place": place.text,

      "doc id":doc,
    };
    await FirebaseFirestore.instance
        .collection("client")
        .doc(doc)
        .set(data)
        .whenComplete(() => toast('Saved Successfully', Colors.blue))
        .whenComplete(() => Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Client_service())));
  }

  List<String> items = ["Status", "Ongoing", "Completed"];
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }
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
        body:Column(
          children: [
            Container(
              //
              // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                margin: EdgeInsets.all(20),
                height: 52,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(

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

                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 11, top: 11, right: 15),
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search)),
                )
               ),


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
                    child: Row(
                      children: [


                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              Container(
                                padding:
                                EdgeInsets.only(top: 10, bottom: 15, ),
                                child: Text(
                                  widget.data1[index]["Name"],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(bottom: 10,),
                                child: Text(
                                  widget.data1[index]["Contact"],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin:
                            EdgeInsets.only( top: 10, bottom: 10),

                            padding: EdgeInsets.all(5),
                            child: Text(
                              widget.data1[index]["Place"],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                        Expanded(
                          flex:2,
                          child: DropdownButton(
                              value: widget.value[index].toString(),
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Text(items),
                                    ), value: items);
                              }).toList(),
                              onChanged: (String? subha) {
                                setState(() {
                                  widget.value[index] = subha!;
                                });
                              }),
                        )
                      ],
                    ),
                  );
                },
                itemCount: widget.data1.length,
              ),
            ),

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
                      controller: name,
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
                      controller: number,
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
                      controller: place,
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

                Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Center(
                            child: GestureDetector(
                          onTap: () {
                            enterdata();
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

  toast(String s, MaterialColor blue) {}
}
