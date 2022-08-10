import 'package:flutter/material.dart';
import 'package:sjk/client.dart';
import 'package:sjk/payment.dart';
import 'package:sjk/task.dart';
import 'calculator.dart';
import 'material.dart';
import 'SizeConfig.dart';
import 'attendence.dart';
import 'drawer.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SafeArea(
        child: Scaffold(
            drawer: MainDrawer(),
            appBar: AppBar(
              backgroundColor: Color(0xff01579B),
              title: Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Text(
                  "SJK CONSTRUCTIONS",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            body: Center(
                child: Container(
              width: 430,
              height: 700,
              alignment: Alignment.center,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff01579B), width: 5),
                  color: Color(0xffe6f2ff),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  )),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 2,
                        child: Row(children: [
                          GestureDetector(
                              onTap: () {
                                //_submitform();
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Data1()));
                              },
                          child: Container(
                              height: 150,
                              width: 150,
                              margin: EdgeInsets.only(
                                  right: 15, bottom: 30, top: 30, left: 30),
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 7,
                                    )
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                  )),
                              child:Container(
                                margin: EdgeInsets.all(10),
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/client.png'
                                      ),
                                      fit: BoxFit.fill
                                  ),
                                ),

                                child: Container(
                                    alignment: Alignment.center,
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: EdgeInsets.only(bottom: 15),
                                        child: Text("CLIENT",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xff01579B))),
                                      ),
                                    )),
                              )),
                          ),GestureDetector(
                              onTap: () {
                                //_submitform();
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Data2()));
                              },

                              child: Container(
                                  height: 150,
                                  width: 150,
                                  margin: EdgeInsets.only(
                                      right: 30, bottom: 10, top: 5, left: 15),

                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 7,
                                        )
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15),
                                      )),

                                  child:Container(
                                    margin: EdgeInsets.all(10),
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/tasks.png'
                                          ),
                                          fit: BoxFit.fill
                                      ),
                                    ),
                                    child: Container(
                                        alignment: Alignment.center,
                                        child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                            padding: EdgeInsets.only(bottom: 15),
                                            child: Text("TASKS",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xff01579B))),
                                          ),
                                        )),
                                  ))
                              ) ])),
                    Expanded(
                        flex: 2,
                        child: Row(children: [
                          GestureDetector(
                              onTap: () {
                                //_submitform();
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Data3()));
                              }, child:Container(
                              height: 150,
                              width: 150,
                              margin: EdgeInsets.only(
                                  right: 15, bottom: 10, top: 5, left: 30),
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 7,
                                    )
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                  )),
                    child:Container(
                      margin: EdgeInsets.all(10),
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/materials.png'
                            ),
                            fit: BoxFit.fill
                        ),
                      ),

                                child: Container(
                                    alignment: Alignment.center,
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: EdgeInsets.only(bottom: 15),
                                        child: Text("MATERIALS",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xff01579B))),
                                      ),
                                    )),
                              )),
                        ),
                          GestureDetector(
                onTap: () {
                  //_submitform();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Data4()));
                },
                child:Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.only(
                        right: 30, bottom: 10, top: 5, left: 15),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 7,
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        )),
                    child:Container(
                      margin: EdgeInsets.all(10),
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/attendence.png'
                            ),
                            fit: BoxFit.fill
                        ),
                      ),

                      child: Container(
                          alignment: Alignment.center,
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 15),
                              child: Text("ATTENDENCE",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff01579B))),
                            ),
                          )),
                    ))
            ),
                        ]),

                    ),
                    Expanded(
                      flex: 2,
                      child: Row(children: [
                        GestureDetector(
                          onTap: () {
                            //_submitform();
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Data3()));
                          }, child:Container(
                            height: 150,
                            width: 150,
                            margin: EdgeInsets.only(
                                right: 15, bottom: 10, top: 5, left: 30),
                            padding:EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 7,
                                  )
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                )),
                            child:Container(
                              margin: EdgeInsets.all(10),
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/materials.png'
                                    ),
                                    fit: BoxFit.fill
                                ),
                              ),

                              child: Container(
                                margin: EdgeInsets.only(top:10),
                                  alignment: Alignment.center,
                                  child: Text("MATERIALS",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff01579B)))),
                            )),
                        ),
                        GestureDetector(
                            onTap: () {
                              //_submitform();
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Data5()));
                            },
                            child:Container(
                                height: 150,
                                width: 150,
                                margin: EdgeInsets.only(
                                    right: 30, bottom: 10, top: 5, left: 15),
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 7,
                                      )
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    )),
                                child:Container(
                                  margin: EdgeInsets.all(10),
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/attendence.png'
                                        ),
                                        fit: BoxFit.fill
                                    ),
                                  ),

                                  child: Container(
                                      alignment: Alignment.center,
                                      child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 15),
                                          child: Text("ATTENDENCE",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xff01579B))),
                                        ),
                                      )),
                                ))
                        ),
                      ]),

                    ),]),
            ))));
  }
}
