import 'package:flutter/material.dart';
import 'package:sjk/Tasks/Task_service.dart';
import 'package:sjk/client/client.dart';
import 'package:sjk/Payment/income_service.dart';
import 'package:sjk/Payment/payment.dart';
import 'package:sjk/Tasks/task.dart';
import 'package:sjk/client/client_service.dart';
import '../Attendence/present_service.dart';
import '../Calculator/calculator.dart';
import '../Materials/material-service.dart';
import '../Materials/material.dart';
import '../SizeConfig.dart';
import '../Attendence/attendence.dart';
import 'drawer.dart';
import 'package:sjk/front/login_page.dart';

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

            drawer: MainDrawer(

            ),
            appBar: AppBar(
              backgroundColor: Color(0xff01579B),

              title: Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Text(
                  "CONSTRUCTION-DIARY",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            body:
            CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate([
                    Stack(
                      children: [
                        ClipPath(
                          clipper: WaveClipper(),
                          child: Container(
                            height: 280,

                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                )
                              ],
                              color: Color(0xff01579B),

                              border: Border.all(
                                width: 1,
                                color: Colors.white,
                              ),

                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5),
                              ),
                            ),

                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left:10.0,top: 45,bottom: 20),
                            child: Text(
                              'Welcome to Juggle❤️',
                                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 28),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left:12.0,top: 90,),
                            child: Text(
                              'Manage your tasks at ease🎯️',
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 16),
                            ),

                          ),
                        ),

                        Container(
                          width: 460,
                          height: 450,

                          margin: EdgeInsets.symmetric(vertical: 210,horizontal: 26),
                          padding: EdgeInsets.symmetric( vertical: 16,),
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
                                              builder: (context) => Client_service()));
                                        },
                                        child: Container(
                                          height: 110,
                                          width: 120,
                                          margin: EdgeInsets.only(
                                              right: 5,  top: 10, left: 30),
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

                                          child:  Column(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.all(20),
                                                padding: EdgeInsets.all(20),
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/client.png'
                                                      ),
                                                      fit: BoxFit.fill
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Align(
                                                  alignment: Alignment.bottomCenter,

                                                  child: Text("CLIENT",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.bold,
                                                          color: Color(0xff01579B))),
                                                ),
                                              ),

                                            ],
                                          ),
                                        ),
                                      ),GestureDetector(
                                          onTap: () {
                                            //_submitform();
                                            Navigator.of(context).push(MaterialPageRoute(
                                                builder: (context) => Task_service()));
                                          },

                                          child: Container(
                                            height: 110,
                                            width: 120,
                                            margin: EdgeInsets.only(
                                                right: 30,  top: 10, left: 25),

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

                                            child:  Column(
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.all(20),
                                                  padding: EdgeInsets.all(20),
                                                  width: 50,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/tasks.png'
                                                        ),
                                                        fit: BoxFit.fill
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  child: Align(
                                                    alignment: Alignment.bottomCenter,

                                                    child: Text("TASKS",
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight: FontWeight.bold,
                                                            color: Color(0xff01579B))),
                                                  ),
                                                ),

                                              ],
                                            ),)
                                      ) ])),
                                Expanded(
                                  flex: 2,
                                  child: Row(children: [
                                    GestureDetector(
                                      onTap: () {
                                        //_submitform();
                                        Navigator.of(context).push(MaterialPageRoute(
                                            builder: (context) => Material_service()));
                                      }, child:Container(
                                      height: 110,
                                      width: 120,
                                      margin: EdgeInsets.only(
                                          right: 15,  left: 30),
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
                                      child:  Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.all(20),
                                            padding: EdgeInsets.all(20),
                                            width: 50,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/materials.png'
                                                  ),
                                                  fit: BoxFit.fill
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Align(
                                              alignment: Alignment.bottomCenter,

                                              child: Text("MATERIALS",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold,
                                                      color: Color(0xff01579B))),
                                            ),
                                          ),

                                        ],
                                      ),),
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          //_submitform();
                                          Navigator.of(context).push(MaterialPageRoute(
                                              builder: (context) => Present_service()));
                                        },
                                        child:Container(
                                          height: 110,
                                          width: 120,
                                          margin: EdgeInsets.only(
                                              right: 30,  left: 15),
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
                                          child:  Column(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.all(20),
                                                padding: EdgeInsets.all(20),
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/attendence.png'
                                                      ),
                                                      fit: BoxFit.fill
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Align(
                                                  alignment: Alignment.bottomCenter,

                                                  child: Text("ATTENDENCE",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.bold,
                                                          color: Color(0xff01579B))),
                                                ),
                                              ),

                                            ],
                                          ),)
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
                                              builder: (context) => Data5()));
                                        },
                                        child:Container(
                                          height: 110,
                                          width: 120,
                                          margin: EdgeInsets.only(right: 15,  bottom: 15, left: 30),
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
                                          child:  Column(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.all(20),
                                                padding: EdgeInsets.all(20),
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/payment.png'
                                                      ),
                                                      fit: BoxFit.fill
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Align(
                                                  alignment: Alignment.bottomCenter,
                                                  child: Text("PAYMENT",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.bold,
                                                          color: Color(0xff01579B))),
                                                ),
                                              ),

                                            ],
                                          ),)
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          //_submitform();
                                          Navigator.of(context).push(MaterialPageRoute(
                                              builder: (context) => Data6()));
                                        },
                                        child:Container(
                                          height: 110,
                                          width: 120,
                                          margin: EdgeInsets.only(right: 30,  bottom: 15, left: 15),
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
                                          child:  Column(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.all(20),
                                                padding: EdgeInsets.all(20),
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/calculator.png'
                                                      ),
                                                      fit: BoxFit.fill
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Align(
                                                  alignment: Alignment.bottomCenter,
                                                  child: Text("CALCULATOR",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.bold,
                                                          color: Color(0xff01579B))),
                                                ),
                                              ),

                                            ],
                                          ),)
                                    ),
                                  ]),

                                ),]),
                        )
                        ]),


                      ],
                    ),
                )]),
                ),

    );}
}
class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 220);
    path.quadraticBezierTo(size.width / 4, 160, size.width / 2, 175);
    path.quadraticBezierTo(3 / 4 * size.width, 190, size.width, 130);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
