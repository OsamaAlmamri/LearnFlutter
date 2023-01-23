import 'package:flutter/material.dart';

import 'MyDrawer.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({Key? key}) : super(key: key);

  @override
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 9,
        child: Scaffold(
            appBar: AppBar(
              title: Text("tab_bar"),
              bottom: TabBar(
                isScrollable: true,
                indicatorColor: Colors.red,
                indicatorWeight: 5,
                labelColor: Colors.black,
                tabs: [
                Tab(
                  child: Text("tab1"),
                  icon: Icon(Icons.alarm),
                  
                ),
                Tab(
                  child: Text("tab2"),
                    icon: Icon(Icons.alarm),
                ),Tab(
                  child: Text("tab3"),
                    icon: Icon(Icons.alarm),
                ),Tab(
                  child: Text("tab4"),
                    icon: Icon(Icons.alarm),
                ),Tab(
                  child: Text("tab5"),
                    icon: Icon(Icons.alarm),
                ),Tab(
                  child: Text("tab6"),
                    icon: Icon(Icons.alarm),
                ),Tab(
                  child: Text("tab7"),
                    icon: Icon(Icons.alarm),
                ),Tab(
                  child: Text("tab8"),
                    icon: Icon(Icons.alarm),
                ),Tab(
                  child: Text("tab9"),
                    icon: Icon(Icons.alarm),
                ),
              ]),
            ),
            drawer: MyDrawer(),
            body: TabBarView(
              children: [
                Container(
                  color: Colors.brown,
                  width: 200,
                  height: 200,
                  child: Text("tab1"),
                ),
                Container(
                  color: Colors.green,
                  width: 200,
                  height: 200,
                  child: Text("tab2"),
                ),
                Container(
                  color: Colors.green,
                  width: 200,
                  height: 200,
                  child: Text("tab3"),
                ),
                Container(
                  color: Colors.green,
                  width: 200,
                  height: 200,
                  child: Text("tab4"),
                ),
                Container(
                  color: Colors.green,
                  width: 200,
                  height: 200,
                  child: Text("tab5"),
                ),
          
                Container(
                  color: Colors.green,
                  width: 200,
                  height: 200,
                  child: Text("tab6"),
                ),
                Container(
                  color: Colors.green,
                  width: 200,
                  height: 200,
                  child: Text("tab7"),
                ),Container(
                  color: Colors.green,
                  width: 200,
                  height: 200,
                  child: Text("tab8"),
                ),Container(
                  color: Colors.green,
                  width: 200,
                  height: 200,
                  child: Text("tab9"),
                ),
              ],
            )));
  }
}
