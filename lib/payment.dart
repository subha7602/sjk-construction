import 'package:flutter/material.dart';
import 'package:sjk/Homepage.dart';
import 'package:sjk/client.dart';

import 'expense.dart';
import 'income.dart';
class Data5 extends StatefulWidget {
  const Data5({Key? key}) : super(key: key);

  @override
  State<Data5> createState() => _Data5State();
}




class _Data5State extends State<Data5> {

  @override
  Widget build(BuildContext context) {
    var inputType;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              backgroundColor:  Color(0xff01579B),
              leading:GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (_) => Homepage()));
                },
                child:Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 20,

                ),),
              title: Text(
                "PAYMENT",
                style: TextStyle(
                    fontSize: 20, fontFamily: 'Inter', color: Colors.white,fontWeight: FontWeight.bold),
              )),
        body: Container(
          //
          // Figma Flutter Generator Rectangle4Widget - RECTANGLE
            margin: EdgeInsets.all(20),
            height: 32,
            width: 300,
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
            child:TextFormField(
              cursorColor: Colors.black,
              keyboardType: inputType,
              decoration: new InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding:
                  EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                  hintText: "Search",
              prefixIcon: Icon(Icons.search)),
            )
        ),



          bottomNavigationBar: Container(
            height: 100,width: 300,color: Colors.white10,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                       Container(

                           margin: EdgeInsets.all(20),
                           height: 50,
                           width: 100,
                           decoration: BoxDecoration(
                               color:  Color(0xff01579B),
                               border: Border.all(width: 3, color: Colors.black),
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
                                   builder: (context) => Income()));
                             },
                             child: Container(
                                 alignment: Alignment.center,
                                 child: Text("Income",
                                     style: TextStyle(
                                       fontSize: 20,
                                       fontWeight: FontWeight.bold,
                                     ))),

                           )),
                   Container(
                       margin: EdgeInsets.all(20),
                       height: 50,
                       width: 100,
                       alignment: Alignment.centerRight,
                       decoration: BoxDecoration(
                           color:  Color(0xff01579B),
                           border: Border.all(width: 3, color: Colors.black),
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
                               builder: (context) => Expense()));
                         },
                         child: Container(
                             alignment: Alignment.center,
                             child: Text("Expense",
                                 style: TextStyle(
                                   fontSize: 20,
                                   fontWeight: FontWeight.bold,
                                 ))),

                       ))
                   ])
                 ],
                ),

            ),
          ),
    );


  }
}
