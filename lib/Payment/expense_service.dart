import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sjk/Payment/payment.dart';

import 'Expense.dart';

class Expense_service extends StatefulWidget {
  const Expense_service({Key? key}) : super(key: key);

  @override
  State<Expense_service> createState() => _Expense_serviceState();
}

class _Expense_serviceState extends State<Expense_service> {

  List<List<dynamic>> data =[];
  Future<void> fetchdata()async {
    var Collection=await FirebaseFirestore.instance.collection("expense").get();
    Collection.docs.map((e)  {
      List<String> dynamic=[];
      dynamic.add(e["Amount"]);
      dynamic.add(e["Date"]);
      dynamic.add(e["Description"]);
      data.add(dynamic);
    });
  }
  bool service=false;
  @override
  void initState() {
    // TODO: implement initState
    fetchdata().whenComplete(() {
      setState((){
        service=true;
      });
    });

    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return service?Expense(data:data):Center(child:Text('loading....'));
  }
}

