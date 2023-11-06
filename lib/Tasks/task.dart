import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sjk/Tasks/Task_service.dart';
import 'package:sjk/Tasks/tasklist.dart';
import '../Homepage/Homepage.dart';
import '../Payment/add_income.dart';

class Data2 extends StatefulWidget {
  final List data2;
  final List<String> items = ["Status", "Ongoing", "Completed"];
  List<String> value;

  Data2({Key? key, required this.data2, required this.value})
      : super(key: key) {
    // Initialize the value list with items[0] for all indices
    this.value = List.filled(data2.length, items[0]);
  }

  @override
  State<Data2> createState() => _Data2State();
}

class _Data2State extends State<Data2> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xffe6f2ff),
      appBar: AppBar(
          backgroundColor: Color(0xff01579B),
          leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => Homepage()));
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 20,
            ),
          ),
          title: Text(
            "TASKS",
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'Inter',
                color: Colors.white,
                fontWeight: FontWeight.bold),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.8,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 80,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child:
                        Row(
                          children: [
                            Expanded(flex:4,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Text('TASK NAME:'),
                                        Text(
                                          widget.data2[index]["task"],
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text('START DATE:'),
                                        Text(
                                          widget.data2[index]["start"],
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text('End Date:'),
                                        Text(
                                          widget.data2[index]["end"],
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(flex:2,child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(height: 50,width: 85,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,  // Change this color to change the border color
                                    width: 1,             // Change this value to change the border width
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: DropdownButton<String>(
                                    value: widget.value[index],
                                    icon: const Icon(Icons.arrow_drop_down_circle_outlined),
                                    iconSize: 16,
                                    elevation: 16,
                                    style: const TextStyle(color: Colors.black),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        widget.value[index
                                        ] = newValue!;
                                      });
                                    },
                                    items: widget.items.map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ),),
                            ))

                          ],
                        )),
                  );
                },
                itemCount: widget.data2.length,
              ),
            ),

          ],

        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            //_submitform();
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Tasklist()));
          },
          style: ElevatedButton.styleFrom(
            primary: Color(0xff01579B), // background color
            onPrimary: Colors.white, // text color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          child: Container(
            width: 150,
            height: 50,
            alignment: Alignment.center,
            child: Text(
              'ADD NEW TASK +',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      )
      ,
    );
  }

  toast(String s, MaterialColor blue) {}
}
