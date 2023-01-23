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
                ListTile(title: Text('dropdown '),leading:Icon(Icons.arrow_drop_down, size: 30,color: Colors.blue, ),
                  onTap: () {Navigator.of(context).pushNamed("dropdown");},),
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

              ],
            ),
            ListTile(title: Text('back'),leading:Icon(Icons.exit_to_app, size: 30,color: Colors.blue, ),
              onTap: () {  if (Navigator.of(context).canPop())
                Navigator.of(context).pop();},),
            
          ],
        ),
      ),
    );
  }
}
