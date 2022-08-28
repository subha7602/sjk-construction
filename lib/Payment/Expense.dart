import 'package:flutter/material.dart';
import 'package:sjk/Payment/add_expense.dart';
class Expense extends StatefulWidget {
  final List<List<dynamic>> data;
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
            //
            // Figma Flutter Generator Rectangle4Widget - RECTANGLE
              margin: EdgeInsets.all(20),
              height: 52,
              width: double.infinity,
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
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search)),
              )),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black),
            ),
            child: Expanded(
              flex: 8,
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      padding: EdgeInsets.only(top: 20, bottom: 20, left: 10),
                      child: Text(
                        'WORK NAME',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      margin: EdgeInsets.only(right: 20, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        color: Color(0xff26c0df),
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
                        'Inco',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(

          margin: EdgeInsets.all(20),
          height: 50,
          width: 100,
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
                  builder: (context) => Add_Expense()));
            },
            child: Container(
                alignment: Alignment.center,
                child: Text("Add new Expense+",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ))),

          )),
    );
  }
}
