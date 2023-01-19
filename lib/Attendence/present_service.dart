import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sjk/Payment/Income.dart';
import 'package:sjk/Payment/payment.dart';

import 'attendence.dart';

class Present_service extends StatefulWidget {
  const Present_service({Key? key}) : super(key: key);

  @override
  State<Present_service> createState() => _Present_serviceState();
}

class _Present_serviceState extends State<Present_service> {

  List data4 =[];
  Future<void> fetchdata()async {
    var Collection=await FirebaseFirestore.instance.collection("attendence").get();

    data4=Collection.docs;
  }
  bool service4=false;
  @override
  void initState() {
    // TODO: implement initState
    fetchdata().whenComplete(() {
      setState((){
        service4=true;

        print(data4);
      });
    });

    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return service4?Data4(data:data4,):Center(child:Text('loading....'));
  }
}

