import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sjk/client/client_service.dart';
import '../Homepage/Homepage.dart';

class Data1 extends StatefulWidget {
  final List data1;
  final List<String> items = ["Status", "Ongoing", "Completed"];
  List<String> value;
  String dropdownValue = 'Select an item';

  Data1({Key? key, required this.data1, required this.value})
      : super(key: key) {
    // Initialize the value list with items[0] for all indices
    value = List.filled(data1.length, items[0]);
  }

  @override
  State<Data1> createState() => _Data1State();
}

class _Data1State extends State<Data1> {
  TextEditingController name = TextEditingController();
  TextEditingController number =  TextEditingController();
  TextEditingController place =  TextEditingController();

  static get items => null;
  void showToast(String message, Color color) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: color,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
  void enterdata() async {
    if (name.text.isEmpty || number.text.isEmpty || place.text.isEmpty) {
      showToast('All fields are required', Colors.red);
      return;
    }

    DocumentReference docRef = FirebaseFirestore.instance.collection("client").doc();
    DocumentSnapshot docSnap = await docRef.get();
    var doc = docSnap.reference.id;

    Map<String, String> data = {
      "Name": name.text,
      "Contact": number.text,
      "Place": place.text,
      "doc id": doc,
    };

    await FirebaseFirestore.instance
        .collection("client")
        .doc(doc)
        .set(data)
        .whenComplete(() => showToast('Saved Successfully', Colors.blue))
        .whenComplete(() => Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) =>  const Client_service())));
  }


  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          backgroundColor:const Color(0xff01579B),
          leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => const Homepage()));
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 20,
            ),
          ),
          title: const Text(
            "CLIENT",
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'Inter',
                color: Colors.white,
                fontWeight: FontWeight.bold),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: widget.data1.length,
                itemBuilder: (BuildContext context, int index) {
                  return Dismissible(
                    key: UniqueKey(),
                    onDismissed: (direction) {
                      setState(() {
                        widget.data1.removeAt(index);
                      });
                    },
                    background: Container(
                      color: Colors.red,
                      alignment: Alignment.centerRight,
                      child:const Icon(Icons.delete, color: Colors.white),
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.13,
                      margin: const EdgeInsets.all(10), // Added margin
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black),
                        borderRadius: BorderRadius.circular(15), // Added border radius
                        color: Colors.white, // Added a background color
                      ),
                      child: Row(
                        children: [
                          Expanded( // Added padding
                            flex:3,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      const Text('Client Name:',style: TextStyle(fontSize: 16),),const SizedBox(width:5),
                                      Text(
                                        widget.data1[index]["Name"],
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const  Text('Contact:',style: TextStyle(fontSize: 16),),const SizedBox(width:5),
                                      Text(
                                        widget.data1[index]["Contact"],
                                        style:const  TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const  Text('Place:',style: TextStyle(fontSize: 16),),SizedBox(width:5),
                                      Text(
                                        widget.data1[index]["Place"],
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
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
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        )

      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff01579B)),
          ),
          child: const Text(
            'ADD NEW CLIENT +',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          onPressed: () => _onButtonPressed(),
        ),
      ),
    );
  }

  _onButtonPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          //var inputType;
          return Container(
            color:const  Color(0xffe6f2ff),
            child: Column(
              children: [
                Container(
                    //
                    // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                    margin: const EdgeInsets.only(top: 40, right: 20, left: 20),
                    height: 52,
                    width: 350,
                    decoration: BoxDecoration(
                      boxShadow:const [
                        BoxShadow(
                          blurRadius: 7,
                        )
                      ],
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                      borderRadius:const BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                    ),
                    child: TextFormField(
                      cursorColor: const Color(0xff01579B),
                      controller: name,
                      keyboardType: TextInputType.name,
                      decoration: const  InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                          hintText: "Client Name*"),
                    )),
                Container(
                    //
                    // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                    margin: const EdgeInsets.only(top: 40, right: 20, left: 20),
                    height: 52,
                    width: 350,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 7,
                        )
                      ],
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                    ),
                    child: TextFormField(
                      controller: number,
                      cursorColor:const  Color(0xff01579B),
                      keyboardType: TextInputType.phone,
                      decoration: const  InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                          hintText: "Contact Details*"),
                    )),
                Container(
                    //
                    // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                    margin: const EdgeInsets.only(top: 40, right: 20, left: 20),
                    height: 52,
                    width: 350,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 7,
                        )
                      ],
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                    ),
                    child: TextFormField(
                      controller: place,
                      cursorColor: const Color(0xff01579B),
                      keyboardType: TextInputType.streetAddress ,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                          hintText: "Place*"),
                    )),
                Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Center(
                      child: GestureDetector(
                    onTap: () {
                      enterdata();
                    },
                    child: Container(
                        margin: const EdgeInsets.all(20),
                        height: 50,
                        width: 100,
                        decoration: const BoxDecoration(
                            color: Color(0xff01579B),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                              bottomLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12),
                            )),
                        alignment: Alignment.center,
                        child: const Text("SAVE",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white))),
                  )),
                ])
              ],
            ),
          );
        });
  }

  toast(String s, MaterialColor blue) {}
}
