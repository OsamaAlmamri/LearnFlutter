import 'package:flutter/material.dart';
import 'package:my_app/Home.dart';
import 'package:my_app/page2.dart';
import 'package:my_app/page3.dart';
import 'MyDrawer.dart';

class MyNavigationBottomBar extends StatefulWidget {
  @override
  State<MyNavigationBottomBar> createState() => _MyNavigationBottomBarState();
}

class _MyNavigationBottomBarState extends State<MyNavigationBottomBar> {
  @override
  int selected_tab=1;
  List<Widget> tabWedgets=[HomePage(),Page2(),Page3()];

  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
       
        bottomNavigationBar: BottomNavigationBar(
            selectedFontSize: 18,
            currentIndex: selected_tab,
            onTap: (val){
              setState(() {
                selected_tab=val;
              });
            },
            items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "page1", icon: Icon(Icons.alarm)),
          BottomNavigationBarItem(label: "profile", icon: Icon(Icons.person)),
        ]),
        drawer: MyDrawer(),
        endDrawer: MyDrawer(),
        body: tabWedgets.elementAt(selected_tab)
   );
  }
}