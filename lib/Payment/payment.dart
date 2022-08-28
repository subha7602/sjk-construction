import 'package:flutter/material.dart';
import 'package:sjk/Homepage/Homepage.dart';
import 'package:sjk/Payment/expense_service.dart';
import 'package:sjk/Payment/income_service.dart';

import 'Expense.dart';
import 'Income.dart';
import 'add_expense.dart';
import 'add_income.dart';

class Data5 extends StatefulWidget {


  const Data5({Key? key, }) : super(key: key);

  @override
  State<Data5> createState() => _Data5State();
}

class _Data5State extends State<Data5> with TickerProviderStateMixin {
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
    var inputType;
    return Scaffold(
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
          "PAYMENT",
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
                  color: Colors.green,
                ),
                labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                tabs: [

                  Tab(
                    child: Text('Income'),
                  ),

                  // second tab [you can add an icon using the icon property]
                  Tab(
                    child: Text('Expense'),
                  ),
                ],
              ),Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    // first tab bar view widget
                    Income_service(),
                    Expense_service()
                  ],
                ),
              ),]),
        // tab bar view here

      ),
    );
  }
}
