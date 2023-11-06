import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sjk/Payment/Income.dart';
import 'package:sjk/Payment/payment.dart';
import 'package:sjk/Tasks/task.dart';

class Task_service extends StatefulWidget {
  const Task_service({Key? key}) : super(key: key);

  @override
  State<Task_service> createState() => _Task_serviceState();
}

class _Task_serviceState extends State<Task_service> {

  List data2 =[];
  List<String> value=[];
  Future<void> fetchdata()async {
    var Collection=await FirebaseFirestore.instance.collection("task").get();

    data2=Collection.docs;
  }
  bool service2=false;
  @override
  void initState() {
    // TODO: implement initState
    fetchdata().whenComplete(() {
      setState((){
        service2=true;

        print(data2);
      });
    });

    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: service2?Data2(data2:data2,value:value):Center(child:Image.asset('assets/loading.gif')),
    );

  }
}



