import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sjk/Homepage/Homepage.dart';
import 'package:sjk/Homepage/Sign-up.dart';
import 'package:sjk/Homepage/insert_bill.dart';
class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Color(0xff01579B),
            child: Center(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30,bottom: 10),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,image: DecorationImage(image: AssetImage(''),fit: BoxFit.fill)
                    ),
                  ),
                  Text('ABC CONSTRUCTIONS',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),)
                ],
              ),
            ),
          ),
          GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homepage()));
              },
            child: ListTile(
              leading: Icon(Icons.home),
              title: Text('Home',style: TextStyle(fontSize: 18),),
            ),
          ),

          GestureDetector(onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ImageLoad()));
          },
            child: ListTile(
              leading: Icon(Icons.file_copy_sharp),
              title: Text('Plan Documents',style: TextStyle(fontSize: 18),),
            ),
          ),

          GestureDetector(
            onTap: (){
               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ImageLoad()));
            },
            child: ListTile(
              leading: Icon(Icons.logout),
              title: Text('Insert Bills',style: TextStyle(fontSize: 18),),
            ),
          ),
          GestureDetector(
            onTap: (){
              FirebaseAuth.instance.signOut().whenComplete(() => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Signup())));
            },
            child: ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout',style: TextStyle(fontSize: 18),),
            ),
          )
        ],
      ),
    );
  }
}
