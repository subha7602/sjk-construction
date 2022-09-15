import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sjk/Calculator/calculator.dart';
class Simple extends StatefulWidget {
  const Simple({Key? key}) : super(key: key);

  @override
  State<Simple> createState() => _SimpleState();
}

class _SimpleState extends State<Simple> {
  TextEditingController num1controller = new TextEditingController();
  TextEditingController num2controller = new TextEditingController();
  String result = "0";
  TextEditingController dateInput = TextEditingController();
  String value = "Duration";
  List<String> items = ["Duration", "3 months", "4 months", "6 months","9 months","1 year"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,

        body:
           SingleChildScrollView(
             child: Column(
               children: [
                 Container(
                   margin: EdgeInsets.only(top:50,left: 20,right: 20,),
padding: EdgeInsets.only(top: 10.0,left: 15,right: 10,bottom: 5),
                   height: 340,
                   width: 400,
                   decoration: BoxDecoration(
                       color: Color(0xff26c0df),
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
                   child: Column(
                    children: [
                      Expanded(
                        flex:8,
                        child: Row(
                          children: [
                            Expanded(
                              flex:3,
                              child: Container(
                                padding: EdgeInsets.only(top:20,bottom: 20,left: 10),
                                child: Text(
                                  'Construction Area',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                //
                                // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                                  margin: EdgeInsets.only(bottom: 20,top: 20,),
                                  height: 52,
                                  width: 100,
                                  decoration: BoxDecoration(

                                    color: Color(0xff26c0df),
                                    border: Border.all(
                                        width: 1,
                                        color: Colors.black
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
                                    controller: num1controller,

                                    keyboardType: TextInputType.number,
                                    decoration: new InputDecoration(
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        contentPadding: EdgeInsets.only(
                                            left: 15, bottom: 11, top: 11, right: 15),
                                        hintText: "Enter value"),
                                  )),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                padding: EdgeInsets.only(top:20,bottom: 20,left: 25),
                                child: Text(
                                  'Sqft',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex:8,
                        child: Row(
                          children: [
                            Expanded(
                              flex:3,
                              child: Container(
                                padding: EdgeInsets.only(top:20,bottom: 20,left: 10),
                                child: Text(
                                  'Construction Cost',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                //
                                // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                                  margin: EdgeInsets.only(bottom: 20,top: 20,),
                                  height: 52,
                                  width: 100,
                                  decoration: BoxDecoration(

                                    color: Color(0xff26c0df),
                                    border: Border.all(
                                        width: 1,
                                        color: Colors.black
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
                                    keyboardType: TextInputType.number,
                                    controller: num2controller,
                                    decoration: new InputDecoration(
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        contentPadding: EdgeInsets.only(
                                            left: 15, bottom: 11, top: 11, right: 15),
                                        hintText: "Enter value"),

                                  )),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                padding: EdgeInsets.only(top:20,bottom: 20,left: 25),
                                child: Text(
                                  '₹/Sqft',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: Row(
                          children: [
                            Expanded(
                              flex:3,
                              child:
                              Container(
                                padding: EdgeInsets.only(top:20,bottom: 20,left: 10,),
                                child: Text(
                                  'Duration',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                //
                                // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                                  margin: EdgeInsets.only(bottom: 20,top: 20,),
                                  height: 52,
                                  width: 115,
                                  decoration: BoxDecoration(

                                    color: Color(0xff26c0df),
                                    border: Border.all(
                                        width: 1,
                                        color: Colors.black
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(5),
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5),
                                    ),
                                  ),
                                  child:
                                  DropdownButton(
                                      value: value,
                                      items: items.map((String items) {
                                        return DropdownMenuItem(
                                            child: Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: Text(items),
                                            ), value: items);
                                      }).toList(),
                                      onChanged: (String? subha) {
                                        setState(() {
                                          value = subha!;
                                        });
                                      })
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                padding: EdgeInsets.only(top:20,bottom: 20,left: 20),
                                child: Text(
                                  'Months',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),


                    ],
          ),
                 ),
                 GestureDetector(
                   onTap: (){
                     setState(() {
                       int sum = int.parse(num1controller.text) * int.parse(num2controller.text);
                       result = sum.toString();
                     });
                   },
                   child: Center(
                       child: Container(
                           margin: EdgeInsets.only(top:60),
                           height: 50,
                           width: 170,
                           decoration: BoxDecoration(
                               color:  Color(0xff01579B),

                               borderRadius: BorderRadius.only(
                                 topLeft: Radius.circular(12),
                                 topRight: Radius.circular(12),
                                 bottomLeft: Radius.circular(12),
                                 bottomRight: Radius.circular(12),
                               )),
                           alignment: Alignment.center,
                           child: Text("CALCULATE",
                               style: TextStyle(
                                   fontSize: 20,
                                   fontWeight: FontWeight.bold,
                                   color: Colors.white
                               )))),
                 ),


                 Text('Result : $result'),
               ],
             ),
           ),


        ),
      );

  }
}
