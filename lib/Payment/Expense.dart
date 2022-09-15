import 'package:flutter/material.dart';
import 'package:sjk/Payment/add_income.dart';
import 'package:sjk/Payment/payment.dart';

import 'add_expense.dart';

class Expense extends StatefulWidget {

  final List data;
  const Expense({Key? key, required this.data}) : super(key: key);

  @override
  State<Expense> createState() => _ExpenseState();
}

class _ExpenseState extends State<Expense> {
  @override
  Widget build(BuildContext context) {
    var inputType;
    return Scaffold(
      body: Column(
        children: [

          Container(
            margin: EdgeInsets.only(top:10,bottom: 10),
            child: Row(

              children: [
                Text('Total Income:',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w700),),
                Padding(
                  padding: const EdgeInsets.only(left:180.0),
                  child: RaisedButton(
                    color: Color(0xff01579B),
                    child: Text(
                      'Filters',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () => _onButtonPressed(),
                  ),
                )

              ],
            ),
          ),
          Container(
            height:450,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (BuildContext context,int index){
                return  Container(
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 5, bottom: 15, left: 10),
                              child: Text(
                                widget.data[index]["Description"],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only( bottom: 20, left: 10),
                              child: Text(
                                widget.data[index]["Date"],
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
                          margin: EdgeInsets.only(right: 20, top: 10, bottom: 10),
                          decoration: BoxDecoration(

                            border: Border.all(width: 1, color: Colors.black),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                          ),
                          padding: EdgeInsets.all(20),
                          child: Text(
                            widget.data[index]["Amount"],
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),

                    ],
                  ),
                );

              },itemCount: widget.data.length,),
          ),
          Container(

              margin: EdgeInsets.only(top:20,bottom:10),
              height: 45,
              width: 200,
              decoration: BoxDecoration(
                  color:  Color(0xff01579B),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  )),
              child: GestureDetector(
                onTap: () {
                  //_submitform();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Add_Income()));
                },
                child: Container(
                    alignment: Alignment.center,
                    child: Text("Add new Income+",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ))),

              )),
        ],
      ),
    );
  }
  _onButtonPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          var inputType;
          return Scaffold(
            body: Column(
              children: [
                // ListView(
                //   padding: EdgeInsets.all(8.0),
                //   children: _texts
                //       .map((text) => CheckboxListTile(
                //     title: Text(text),
                //     value: _isChecked,
                //     onChanged: (val) {
                //       setState(() {
                //         _isChecked = val!;
                //       });
                //     },
                //   ))
                //       .toList(),
                // ),
                ListView.builder(scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context,int index){
                    return  Container(
                      height: 5,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black),
                      ),);

                  },itemCount: widget.data.length,),
                Container(
                  child: Center(
                      child: GestureDetector(
                        onTap: () {                                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Data5()));
                        },
                        child: Container(
                            margin: EdgeInsets.all(20),
                            height: 50,
                            width: 330,
                            decoration: BoxDecoration(
                                color: Color(0xff01579B),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                  bottomLeft: Radius.circular(12),
                                  bottomRight: Radius.circular(12),
                                )),
                            alignment: Alignment.center,
                            child: Text("VIEW RESULTS",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))),
                      )),
                ),
              ],
            ),

          );





        });
  }
}
