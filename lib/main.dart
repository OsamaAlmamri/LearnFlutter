import 'package:flutter/material.dart';
import 'package:my_app/Page1.dart';
import 'package:my_app/page2.dart';
import 'package:my_app/page3.dart';
import 'Home.dart';
import 'MyDrawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      routes: {
        "home":(context)=>HomePage(),
        "page1":(context)=>Page1(),
        "page2":(context)=>Page2(),
        "page3":(context)=>Page3(),
      },
      home:HomePage());
  }
}


