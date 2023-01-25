import 'package:flutter/material.dart';
import 'package:my_app/Dropdown.dart';
import 'package:my_app/ListViewSepretor.dart';
import 'package:my_app/MyDropdownSearchPage.dart';
import 'package:my_app/auth/Login.dart';
import 'package:my_app/page2.dart';
import 'package:my_app/page3.dart';
import 'DateAndTime.dart';
import 'Forms.dart';
import 'Home.dart';
import 'GridViewBuilder.dart';
import 'MyDrawer.dart';
import 'MyGeoLocaator.dart';
import 'MyNavigationBottomBar.dart';
import 'MyPageView.dart';
import 'MyTabBar.dart';
import 'auth/SignIn.dart';
import 'my_image_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      routes: {
        "login":(context)=>Login(),
        "sign_in":(context)=>SignIn(),
        "home":(context)=>HomePage(),
        "geolocator":(context)=>MyGeoLocaator(),
        "date_and_time":(context)=>DateAndTime(),
        "image_picker":(context)=>MyImagePickerPage(),
        "dropdown_search":(context)=>MyDropdownSearchPage(),
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
        theme: ThemeData(
          primaryColor: Colors.red,
          buttonColor: Colors.red,
          textTheme: const TextTheme(
              headline1: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
              headline2: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 26, color: Colors.black),
              bodyText1: TextStyle(
                  height: 2,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
              bodyText2: TextStyle(height: 2, color: Colors.grey, fontSize: 14)),
        ),
        locale: Locale('ar'),
      home:Login());
  }
}


