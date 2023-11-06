import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sjk/Payment/Income.dart';
import 'package:sjk/Payment/payment.dart';

import 'client.dart';

class Client_service extends StatefulWidget {
  const Client_service({Key? key}) : super(key: key);

  @override
  State<Client_service> createState() => _Client_serviceState();
}

class _Client_serviceState extends State<Client_service> {

  List data1 =[];
  List<String> value=[];
  Future<void> fetchdata()async {
    var Collection=await FirebaseFirestore.instance.collection("client").get();

    data1=Collection.docs;
    for(int i=0;i<data1.length;i++){
      value[i]="Status";
    }
  }
  bool service1=false;
  @override
  void initState() {
    // TODO: implement initState
    fetchdata().whenComplete(() {
      setState((){
        service1=true;

        print(data1);
      });
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return
    Scaffold(
      body: service1?Data1(data1:data1,value:value):Center(child:Image.asset('assets/loading.gif')),
    );
  }
}



