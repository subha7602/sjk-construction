import 'package:flutter/material.dart';

class Shift with ChangeNotifier{
  int _value=0;
  int get value => _value;
  void incvalue() {

    _value+=5;
    print(_value);
  }
  void decvalue(){
    if (_value>0){
      _value-=5;
      print(_value);
    }
  }
}

