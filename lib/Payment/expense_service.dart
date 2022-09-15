import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sjk/Payment/Income.dart';
import 'package:sjk/Payment/payment.dart';

import 'Expense.dart';

class Expense_service extends StatefulWidget {
  const Expense_service({Key? key}) : super(key: key);

  @override
  State<Expense_service> createState() => _Expense_serviceState();
}

class _Expense_serviceState extends State<Expense_service> {

  List data =[];
  Future<void> fetchdata()async {
    var Collection=await FirebaseFirestore.instance.collection("expense").get();

    data=Collection.docs;
  }
  bool service=false;
  @override
  void initState() {
    // TODO: implement initState
    fetchdata().whenComplete(() {
      setState((){
        service=true;

        print(data);
      });
    });

    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return service?Expense(data:data):Center(child:Text('loading....'));
  }
}

