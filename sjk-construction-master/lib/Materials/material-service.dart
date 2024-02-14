import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sjk/Payment/Income.dart';
import 'package:sjk/Payment/payment.dart';

import 'material.dart';

class Material_service extends StatefulWidget {
  const Material_service({Key? key}) : super(key: key);

  @override
  State<Material_service> createState() => _Material_serviceState();
}

class _Material_serviceState extends State<Material_service> {

  List data =[];
  Future<void> fetchdata()async {
    var Collection=await FirebaseFirestore.instance.collection("material").get();

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
    return
    Scaffold(
      body: service?Data3(data:data):Center(child:Image.asset('assets/loading.gif')),
    );
  }
}

