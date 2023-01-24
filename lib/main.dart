import 'package:flutter/material.dart';
import 'package:my_app/Dropdown.dart';
import 'package:my_app/ListViewSepretor.dart';
import 'package:my_app/page2.dart';
import 'package:my_app/page3.dart';
import 'Forms.dart';
import 'Home.dart';
import 'GridViewBuilder.dart';
import 'MyDrawer.dart';
import 'MyNavigationBottomBar.dart';
import 'MyPageView.dart';
import 'MyTabBar.dart';

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
        "tab_bar":(context)=>MyTabBar(),
        "nav_bar_btn":(context)=>MyNavigationBottomBar(),
        "page_view":(context)=>MyPageView(),
        "forms":(context)=>Forms(),
      },
      debugShowCheckedModeBanner: false,
      home:HomePage());
  }
}


