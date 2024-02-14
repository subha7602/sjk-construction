import 'package:flutter/material.dart';
import 'Complex.dart';

import '../Homepage/Homepage.dart';
import 'Simple.dart';




class Data6 extends StatefulWidget {


  const Data6({Key? key, }) : super(key: key);

  @override
  State<Data6> createState() => _Data6State();
}

class _Data6State extends State<Data6> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //var inputType;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff01579B),
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (_) => const Homepage()));
          },
          child:const  Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 20,
          ),
        ),
        title: const Text(
          "CALCULATOR",
          style: TextStyle(
              fontSize: 20,
              fontFamily: 'Inter',
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            children: [
              // give the tab bar a height [can change hheight to preferred height]
              TabBar(
                controller: _tabController,

                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                  color: const Color(0xff01579B),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: const [

                  Tab(
                    child: Text('SIMPLE'),
                  ),

                  // second tab [you can add an icon using the icon property]
                  Tab(
                    child: Text('ADVANCED'),
                  ),
                ],
              ),Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    // first tab bar view widget
                    Simple(),
                    Complex()
                  ],
                ),
              ),]),
        // tab bar view here

      ),
    );
  }
}
