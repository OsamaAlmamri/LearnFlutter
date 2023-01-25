import 'package:flutter/material.dart';
import 'package:my_app/Home.dart';
import 'package:my_app/Dropdown.dart';
import 'package:my_app/main.dart';
import 'package:my_app/page2.dart';
import 'package:my_app/page3.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  UserAccountsDrawerHeader(
                      currentAccountPicture: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.blue,
                        backgroundImage: AssetImage('images/osama.jpg'),
                      ),
                      accountName: Text("Osama Mohammed"),
                      accountEmail: Text(
                        "yemencoder@gmail.com",
                      )),
                  SizedBox(
                    height: 4,
                  ),
                  ListTile(title: Text('home '),leading:Icon(Icons.home, size: 30,color: Colors.red, ),
                    onTap: () {Navigator.of(context).pushNamed("home");},),
                  ListTile(title: Text('geolocator '),leading:Icon(Icons.map, size: 30,color: Colors.blue, ),
                    onTap: () {Navigator.of(context).pushNamed("geolocator");},),
                  ListTile(title: Text('date_and_time '),leading:Icon(Icons.timer, size: 30,color: Colors.blue, ),
                    onTap: () {Navigator.of(context).pushNamed("date_and_time");},),
                  ListTile(title: Text('dropdown '),leading:Icon(Icons.arrow_drop_down, size: 30,color: Colors.blue, ),
                    onTap: () {Navigator.of(context).pushNamed("dropdown");},),
                  ListTile(title: Text('dropdown_search '),leading:Icon(Icons.arrow_drop_down, size: 30,color: Colors.blue, ),
                    onTap: () {Navigator.of(context).pushNamed("dropdown_search");},),
                  ListTile(title: Text('dialogs '),leading:Icon(Icons.alarm, size: 30,color: Colors.blue, ),
                    onTap: () {Navigator.of(context).pushNamed("page2");},),
             ListTile(title: Text('list view buildre '),leading:Icon(Icons.list, size: 30,color: Colors.blue, ),
                    onTap: () {Navigator.of(context).pushNamed("page3");},),

                ListTile(title: Text('list view sepretor'),leading:Icon(Icons.list_sharp, size: 30,color: Colors.blue, ),
                    onTap: () {Navigator.of(context).pushNamed("list_view_sepretor");},),

                ListTile(title: Text('GridView'),leading:Icon(Icons.grid_3x3, size: 30,color: Colors.blue, ),
                    onTap: () {Navigator.of(context).pushNamed("grid_view");},),

                ListTile(title: Text('tab_bar'),leading:Icon(Icons.tab, size: 30,color: Colors.blue, ),
                    onTap: () {Navigator.of(context).pushNamed("tab_bar");},),

                ListTile(title: Text('nav_bar_btn'),leading:Icon(Icons.tab, size: 30,color: Colors.blue, ),
                    onTap: () {Navigator.of(context).pushNamed("nav_bar_btn");},),

                ListTile(title: Text('page_view'),leading:Icon(Icons.pageview, size: 30,color: Colors.blue, ),
                    onTap: () {Navigator.of(context).pushNamed("page_view");},),

                ListTile(title: Text('forms'),leading:Icon(Icons.input, size: 30,color: Colors.blue, ),
                    onTap: () {Navigator.of(context).pushNamed("forms");},),

                ],
              ),
              ListTile(title: Text('back'),leading:Icon(Icons.exit_to_app, size: 30,color: Colors.blue, ),
                onTap: () {  if (Navigator.of(context).canPop())
                  Navigator.of(context).pop();},),
              
            ],
          ),
        ),
      ),
    );
  }
}
