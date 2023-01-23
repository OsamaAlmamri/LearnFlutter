import 'package:flutter/material.dart';
import 'package:my_app/Dropdown.dart';
import 'package:my_app/ListViewSepretor.dart';
import 'package:my_app/page2.dart';
import 'package:my_app/page3.dart';
import 'Home.dart';
import 'GridViewBuilder.dart';
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
        "dropdown":(context)=>Dropdown(),
        "page2":(context)=>Page2(),
        "page3":(context)=>Page3(),
        "list_view_sepretor":(context)=>ListViewSepretor(),
        "grid_view":(context)=>GridViewBuilder(),
      },
      home:HomePage());
  }
}


