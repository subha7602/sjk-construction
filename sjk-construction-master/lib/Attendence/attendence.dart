import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sjk/Homepage/Homepage.dart';
import 'Present.dart';
class Data4 extends StatefulWidget {

  Data4({Key? key, }) : super(key: key);

  @override
  State<Data4> createState() => _Data4State();
}
class _Data4State extends State<Data4> {
  List<DocumentSnapshot> data = [];
  Future<void> fetchData() async {
    var collection =
    await FirebaseFirestore.instance.collection("attendance").get();
    setState(() {
      data = collection.docs;
    });
  }
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor:  Color(0xff01579B),
          leading:GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => Homepage()));
            },
            child:Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 20,
            ),),
          title: Text(
            "ATTENDENCE",
            style: TextStyle(
                fontSize: 20, fontFamily: 'Inter', color: Colors.white,fontWeight: FontWeight.bold),
          )),
    body: Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height*0.7,
          child:
            data.isNotEmpty
                ? ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                Map<String, dynamic> attendanceData =
                data[index].data() as Map<String, dynamic>;

                return ListTile(
                  title: Center(child: Text('${attendanceData['Name']}')),
                  subtitle: Center(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Date: ${attendanceData['Date']}'),
                          Text('Worker Type: ${attendanceData['Type']}'),
                          //Text('Shift: ${attendanceData['Shift']}'),
                          Text('Working Site: ${attendanceData['Site']}'),
                          // Add more fields as needed
                        ],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider(thickness: 3,color: Colors.black,);
              },
            )
                : Center(child: Image.asset('assets/loading.gif'))


        )
      ],
    )
,
        bottomNavigationBar: GestureDetector(
          onTap: () {
            //_submitform();
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Present()));
          },        child: Container(
          width: 50,
          height: 50,
          margin: EdgeInsets.all(30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
            ),

            color: Color(0xff01579B),
          ),
          child: Center(
            child: Text(
              'ADD PRESENT+',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        ),
      );
  }
}
