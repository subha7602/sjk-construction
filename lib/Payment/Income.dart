import 'package:flutter/material.dart';
import 'package:sjk/Payment/add_income.dart';
import 'package:sjk/Payment/payment.dart';
import 'checkbox.dart';

class Income extends StatefulWidget {
  final List data;
  const Income({Key? key, required this.data}) : super(key: key);

  @override
  State<Income> createState() => _IncomeState();
}

class _IncomeState extends State<Income> {
  String result = "0";
  List<String> text = ["Residential", "Non-Residential", "Others"];
  final notifications = [
    CheckBoxState(title: 'one'),
    CheckBoxState(title: 'one'),
    CheckBoxState(title: 'one'),
    CheckBoxState(title: 'one'),
  ];

  int Amount = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < widget.data.length; i++) {
      setState(() {
        Amount += int.parse(widget.data[i]["Amount"]);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var inputType;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      'Total Income:' + Amount.toString(),
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Expanded(
                    flex: 1,
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
          ),
          Container(
            height: 450,
            child:
            ListView.builder(
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
                        flex: 6,
                        child: Column(
                          children: [
                            Container(
                              padding:
                                  EdgeInsets.only(top: 5, bottom: 15, left: 10),
                              child: Text(
                                widget.data[index]["Description"],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(bottom: 20, left: 10),
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
                          margin:
                              EdgeInsets.only(right: 20, top: 10, bottom: 10),
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
              },
              itemCount: widget.data.length,
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 20, bottom: 10),
              height: 45,
              width: 200,
              decoration: BoxDecoration(
                  color: Color(0xff01579B),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  )),
              child: GestureDetector(
                onTap: () {
                  //_submitform();
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Add_Income()));
                },
                child: Container(
                    alignment: Alignment.center,
                    child: Text("Add new Income+",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
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
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                      child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Data5()));
                    },
                    child: Container(
                        margin: EdgeInsets.all(20),
                        height: 50,
                        width: 200,
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
                ],
              ),
            ),
          );
        });
  }
}
