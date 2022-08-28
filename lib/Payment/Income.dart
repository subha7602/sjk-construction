import 'package:flutter/material.dart';
import 'package:sjk/Payment/add_income.dart';

class Income extends StatefulWidget {

  final List data;
  const Income({Key? key, required this.data}) : super(key: key);

  @override
  State<Income> createState() => _IncomeState();
}

class _IncomeState extends State<Income> {
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
              width: MediaQuery.of(context).size.width,
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
           height:400,
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
                     flex: 4,
                     child: Container(
                       padding: EdgeInsets.only(top: 20, bottom: 20, left: 10),
                       child: Text(
                         widget.data[index]["Description"],
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
         )
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
    );
  }
}
