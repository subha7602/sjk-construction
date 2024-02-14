import 'package:flutter/material.dart';

class Complex extends StatefulWidget {
  const Complex({Key? key}) : super(key: key);
  @override
  State<Complex> createState() => _ComplexState();
}

class _ComplexState extends State<Complex> {

  TextEditingController num1controller = TextEditingController();
  TextEditingController num2controller = TextEditingController();
  TextEditingController num3controller = TextEditingController();
  TextEditingController num4controller = TextEditingController();
  TextEditingController num5controller = TextEditingController();
  TextEditingController num6controller = TextEditingController();
  TextEditingController num7controller = TextEditingController();
  TextEditingController num8controller = TextEditingController();
  TextEditingController num9controller = TextEditingController();

  String result = "0";
  TextEditingController dateInput = TextEditingController();
  String value = "Duration";
  List<String> items = [
    "Duration",
    "3 months",
    "4 months",
    "6 months",
    "9 months",
    "1 year"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Net Amount: $result',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff01579B),
                    )),
              ),
              Container(
                //padding: EdgeInsets.only(top: 25),
                height: 800,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xf48fd8ff),
                    border: Border.all(
                      width: 3,
                      color: const Color(0xff01579B),
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    )),
                child: Column(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              padding: const EdgeInsets.only(
                                  top: 20, bottom: 20, left: 10),
                              child: const Text(
                                'Construction Area',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                                //
                                // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                                margin: const EdgeInsets.only(
                                  bottom: 20,
                                  top: 20,
                                ),
                                height: 52,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: const Color(0xf48fd8ff),
                                  border:
                                      Border.all(width: 1, color: Colors.black),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  ),
                                ),
                                child: TextFormField(
                                  controller: num1controller,
                                  cursorColor: const Color(0xff01579B),
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      contentPadding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 11,
                                          top: 11,
                                          right: 15),
                                      hintText: "Enter value"),
                                )),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: const EdgeInsets.only(
                                  top: 20, bottom: 20, left: 25),
                              child: const Text(
                                '₹/Sqft',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              padding: const EdgeInsets.only(
                                  top: 20, bottom: 20, left: 10),
                              child: const Text(
                                'Cement Rate',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 3,
                              child: Container(
                                  //
                                  // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                                  margin: const EdgeInsets.only(
                                    bottom: 20,
                                    top: 20,
                                  ),
                                  height: 52,
                                  width: 115,
                                  decoration: BoxDecoration(
                                    color: const Color(0xf48fd8ff),
                                    border: Border.all(
                                        width: 1, color: Colors.black),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(5),
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5),
                                    ),
                                  ),
                                  child: TextFormField(
                                    controller: num2controller,
                                    cursorColor: const Color(0xff01579B),
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        contentPadding: EdgeInsets.only(
                                            left: 15,
                                            bottom: 11,
                                            top: 11,
                                            right: 15),
                                        hintText: "Enter value"),
                                  ))),
                          Expanded(
                              flex: 2,
                              child: Container(
                                padding: const EdgeInsets.only(
                                    top: 20, bottom: 20, left: 20),
                                child: const Text(
                                  '₹/50 kg',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ))
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              padding: const EdgeInsets.only(
                                  top: 20, bottom: 20, left: 10),
                              child: const Text(
                                'Sand Rate',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                                //
                                // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                                margin: const EdgeInsets.only(
                                  bottom: 20,
                                  top: 20,
                                ),
                                height: 52,
                                width: 115,
                                decoration: BoxDecoration(
                                  color: const Color(0xf48fd8ff),
                                  border:
                                      Border.all(width: 1, color: Colors.black),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  ),
                                ),
                                child: TextFormField(
                                  controller: num3controller,
                                  cursorColor: const Color(0xff01579B),
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      contentPadding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 11,
                                          top: 11,
                                          right: 15),
                                      hintText: "Enter value"),
                                )),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: const EdgeInsets.only(
                                  top: 20, bottom: 20, left: 20),
                              child: const Text(
                                '₹/Cu.Ft',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              padding: const EdgeInsets.only(
                                  top: 20, bottom: 20, left: 10),
                              child: const Text(
                                'Steel   Rate',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                                //
                                // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                                margin: const EdgeInsets.only(
                                  bottom: 20,
                                  top: 20,
                                ),
                                height: 52,
                                width: 115,
                                decoration: BoxDecoration(
                                  color: const Color(0xf48fd8ff),
                                  border:
                                      Border.all(width: 1, color: Colors.black),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  ),
                                ),
                                child: TextFormField(
                                  controller: num4controller,
                                  cursorColor: const Color(0xff01579B),
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      contentPadding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 11,
                                          top: 11,
                                          right: 15),
                                      hintText: "Enter value"),
                                )),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: const EdgeInsets.only(
                                  top: 20, bottom: 20, left: 20),
                              child: const Text(
                                '₹/Kg',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              padding: const EdgeInsets.only(
                                top: 20,
                                bottom: 20,
                                left: 10,
                              ),
                              child: const Text(
                                'Paint Rate',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(

                                // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                                margin: const EdgeInsets.only(
                                  bottom: 20,
                                  top: 20,
                                ),
                                height: 52,
                                width: 115,
                                decoration: BoxDecoration(
                                  color: const Color(0xf48fd8ff),
                                  border:
                                      Border.all(width: 1, color: Colors.black),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  ),
                                ),
                                child: TextFormField(
                                  controller: num5controller,
                                  cursorColor: const Color(0xff01579B),
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      contentPadding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 11,
                                          top: 11,
                                          right: 15),
                                      hintText: "Enter value"),
                                )),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: const EdgeInsets.only(
                                  top: 20, bottom: 20, left: 20),
                              child: const Text(
                                '₹/Litres',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              padding: const EdgeInsets.only(
                                top: 20,
                                bottom: 20,
                                left: 10,
                              ),
                              child: const Text(
                                'Bricks Rate',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                                //
                                // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                                margin: const EdgeInsets.only(
                                  bottom: 20,
                                  top: 20,
                                ),
                                height: 52,
                                width: 115,
                                decoration: BoxDecoration(
                                  color: const Color(0xf48fd8ff),
                                  border:
                                      Border.all(width: 1, color: Colors.black),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  ),
                                ),
                                child: TextFormField(
                                  controller: num6controller,
                                  cursorColor: const Color(0xff01579B),
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      contentPadding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 11,
                                          top: 11,
                                          right: 15),
                                      hintText: "Enter value"),
                                )),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: const EdgeInsets.only(
                                  top: 20, bottom: 20, left: 20),
                              child: const Text(
                                '₹/Piece',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              padding: const EdgeInsets.only(
                                top: 20,
                                bottom: 20,
                                left: 10,
                              ),
                              child: const Text(
                                'Tiles Rate',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                                //
                                // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                                margin: const EdgeInsets.only(
                                  bottom: 20,
                                  top: 20,
                                ),
                                height: 52,
                                width: 115,
                                decoration: BoxDecoration(
                                  color: const Color(0xf48fd8ff),
                                  border:
                                      Border.all(width: 1, color: Colors.black),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  ),
                                ),
                                child: TextFormField(
                                  controller: num7controller,
                                  cursorColor: const Color(0xff01579B),
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      contentPadding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 11,
                                          top: 11,
                                          right: 15),
                                      hintText: "Enter value"),
                                )),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: const EdgeInsets.only(
                                  top: 20, bottom: 20, left: 20),
                              child: const Text(
                                '₹/Sq.Ft',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              padding: const EdgeInsets.only(
                                top: 20,
                                bottom: 20,
                                left: 10,
                              ),
                              child: const Text(
                                'Windows Rate',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                                //
                                // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                                margin: const EdgeInsets.only(
                                  bottom: 20,
                                  top: 20,
                                ),
                                height: 52,
                                width: 115,
                                decoration: BoxDecoration(
                                  color: const Color(0xf48fd8ff),
                                  border:
                                      Border.all(width: 1, color: Colors.black),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  ),
                                ),
                                child: TextFormField(
                                  controller: num8controller,
                                  cursorColor: const Color(0xff01579B),
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      contentPadding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 11,
                                          top: 11,
                                          right: 15),
                                      hintText: "Enter value"),
                                )),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: const EdgeInsets.only(
                                  top: 20, bottom: 20, left: 20),
                              child: const Text(
                                '₹/Sq.Ft',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              padding: const EdgeInsets.only(
                                top: 20,
                                bottom: 20,
                                left: 10,
                              ),
                              child: const Text(
                                'Duration',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                                //
                                // Figma Flutter Generator Rectangle4Widget - RECTANGLE
                                margin: const EdgeInsets.only(
                                  bottom: 20,
                                  top: 20,
                                ),
                                height: 52,
                                width: 115,
                                decoration: BoxDecoration(
                                  color: const Color(0xf48fd8ff),
                                  border:
                                      Border.all(width: 1, color: Colors.black),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  ),
                                ),
                                child: DropdownButton(
                                    value: value,
                                    items: items.map((String items) {
                                      return DropdownMenuItem(
                                          value: items,
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text(items),
                                          ));
                                    }).toList(),
                                    onChanged: (String? subha) {
                                      setState(() {
                                        value = subha!;
                                      });
                                    })),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: const EdgeInsets.only(
                                  top: 20, bottom: 20, left: 20),
                              child: const Text(
                                'Months',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    double cement = double.parse(num1controller.text) * 0.4;
                    double sand = double.parse(num1controller.text) * 1.8;
                    double steel = double.parse(num1controller.text) * 0.944;
                    int paint = int.parse(num1controller.text) * 4;
                    int brick = int.parse(num1controller.text) * 5;
                    int tiles = int.parse(num1controller.text) * 30;
                    int windows = int.parse(num1controller.text) * 45;
                    num sum =
                        cement + sand + steel + paint + brick + tiles + windows;
                    result = sum.toString();
                  });
                },
                child: Center(
                    child: Container(
                        margin: const EdgeInsets.only(top: 60),
                        height: 50,
                        width: 170,
                        decoration: const BoxDecoration(
                            color: Color(0xff01579B),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                              bottomLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12),
                            )),
                        alignment: Alignment.center,
                        child: const Text("CALCULATE",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
