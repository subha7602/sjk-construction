import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sjk/Calculator/calculator.dart';
class Complex extends StatefulWidget {
  const Complex({Key? key}) : super(key: key);

  @override
  State<Complex> createState() => _ComplexState();
}

class _ComplexState extends State<Complex> {
  TextEditingController num1controller = new TextEditingController();
  TextEditingController num2controller = new TextEditingController();
  TextEditingController num3controller = new TextEditingController();
  TextEditingController num4controller = new TextEditingController();
  TextEditingController num5controller = new TextEditingController();
  TextEditingController num6controller = new TextEditingController();
  TextEditingController num7controller = new TextEditingController();
  TextEditingController num8controller = new TextEditingController();
  TextEditingController num9controller = new TextEditingController();

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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Net Amount: $result',style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Color(0xff01579B),
                )),
              ),
              Container(

                //padding: EdgeInsets.only(top: 25),
                height: 800,
                width: double.infinity,
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
                                  controller: num1controller,
                                  cursorColor: Color(0xff01579B),
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
                            child: Container(
                              padding: EdgeInsets.only(top:20,bottom: 20,left: 10),
                              child: Text(
                                'Cement Rate',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
          Expanded(
              flex:3,child:Container(
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

                              child: TextFormField(
                                controller: num2controller,
                                cursorColor: Color(0xff01579B),
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
                              ))),
          Expanded(flex:2,child:Container(
                            padding: EdgeInsets.only(top:20,bottom: 20,left: 20),
                            child: Text(
                              '₹/50 kg',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),
                            ),
                          ))
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              padding: EdgeInsets.only(top:20,bottom: 20,left: 10),
                              child: Text(
                                'Sand Rate',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),
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

                                child: TextFormField(
                                  controller: num3controller,
                                  cursorColor: Color(0xff01579B),
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
                              padding: EdgeInsets.only(top:20,bottom: 20,left: 20),
                              child: Text(
                                '₹/Cu.Ft',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
flex: 8,                      child: Row(
                        children: [
                          Expanded(
                            flex:3,
                            child: Container(
                              padding: EdgeInsets.only(top:20,bottom: 20,left: 10),
                              child: Text(
                                'Steel   Rate',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),
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

                                child: TextFormField(
                                  controller: num4controller,
                                  cursorColor: Color(0xff01579B),
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
                              padding: EdgeInsets.only(top:20,bottom: 20,left: 20),
                              child: Text(
                                '₹/Kg',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),
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
                            flex: 3,
                            child: Container(
                              padding: EdgeInsets.only(top:20,bottom: 20,left: 10,),
                              child: Text(
                                'Paint Rate',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(

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

                                child: TextFormField(
                                  controller: num5controller,
                                  cursorColor: Color(0xff01579B),
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
                              padding: EdgeInsets.only(top:20,bottom: 20,left: 20),
                              child: Text(
                                '₹/Litres',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),
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
                            child: Container(
                              padding: EdgeInsets.only(top:20,bottom: 20,left: 10,),
                              child: Text(
                                'Bricks Rate',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),
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

                                child: TextFormField(
                                  controller: num6controller,
                                  cursorColor: Color(0xff01579B),
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
                              padding: EdgeInsets.only(top:20,bottom: 20,left: 20),
                              child: Text(
                                '₹/Piece',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),
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
                            child: Container(
                              padding: EdgeInsets.only(top:20,bottom: 20,left: 10,),
                              child: Text(
                                'Tiles Rate',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),
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

                                child: TextFormField(
                                  controller: num7controller,
                                  cursorColor: Color(0xff01579B),
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
                              padding: EdgeInsets.only(top:20,bottom: 20,left: 20),
                              child: Text(
                                '₹/Sq.Ft',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),
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
                            child: Container(
                              padding: EdgeInsets.only(top:20,bottom: 20,left: 10,),
                              child: Text(
                                'Windows Rate',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),
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

                                child: TextFormField(
                                  controller: num8controller,
                                  cursorColor: Color(0xff01579B),
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
                              padding: EdgeInsets.only(top:20,bottom: 20,left: 20),
                              child: Text(
                                '₹/Sq.Ft',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),
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
                                            padding: const EdgeInsets.all(5.0),
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
                    double cement = double.parse(num1controller.text) *0.4;
                    double sand = double.parse(num1controller.text) * 1.8;
                    double steel = double.parse(num1controller.text) * 0.944 ;
                    int paint= int.parse(num1controller.text) * 4;
                    int brick = int.parse(num1controller.text) * 5;
                    int tiles = int.parse(num1controller.text) * 30;
                    int windows = int.parse(num1controller.text) * 45;
                    num sum = cement+sand+steel+paint+brick+tiles+windows;
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

            ],
          ),
        ),


      ),
    );

  }
}

