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

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child:  Text(
                      'Total Income:$Amount',
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  // Expanded(
                  //   flex: 1,
                  //   child: ElevatedButton(
                  //     //color: Color(0xff01579B),
                  //     child: Text(
                  //       'Filters',
                  //       style: TextStyle(
                  //           color: Colors.white,
                  //           fontSize: 18,
                  //           fontWeight: FontWeight.bold),
                  //     ),
                  //     onPressed: () => _onButtonPressed(),
                  //   ),
                  // )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 450,
            child:
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Column(
                          children: [
                            Container(
                              padding:
                              const  EdgeInsets.only(top: 5, bottom: 15, left: 10),
                              child: Text(
                                widget.data[index]["Description"],
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(bottom: 20, left: 10),
                              child: Text(
                                widget.data[index]["Date"],
                                style: const TextStyle(
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
                          const  EdgeInsets.only(right: 20, top: 10, bottom: 10),
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black),
                            borderRadius:const  BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            widget.data[index]["Amount"],
                            style: const TextStyle(
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
              margin:const  EdgeInsets.only(top: 20, bottom: 10),
              height: 50,
              width: 350,
              decoration: const BoxDecoration(
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
                      MaterialPageRoute(builder: (context) => const Add_Income()));
                },
                child: Container(
                    alignment: Alignment.center,
                    child: const Text("Add new Income+",
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

          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                      child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const Data5()));
                    },
                    child: Container(
                        margin:const  EdgeInsets.all(20),
                        height: 50,
                        width: 200,
                        decoration:const  BoxDecoration(
                            color: Color(0xff01579B),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                              bottomLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12),
                            )),
                        alignment: Alignment.center,
                        child:const  Text("VIEW RESULTS",
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
