import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sjk/Payment/Income.dart';
import 'package:sjk/Payment/payment.dart';

class Income_service extends StatefulWidget {
  const Income_service({Key? key}) : super(key: key);

  @override
  State<Income_service> createState() => _Income_serviceState();
}

class _Income_serviceState extends State<Income_service> {

  List data =[];
  Future<void> fetchdata()async {
    var Collection=await FirebaseFirestore.instance.collection("income").get();

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
    return service?Income(data:data):Center(child:Text('loading....'));
  }
}

