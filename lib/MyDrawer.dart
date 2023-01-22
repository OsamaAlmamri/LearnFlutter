import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return    
     Drawer(
          child: Container(
            margin: EdgeInsets.only(top: 50, left: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 4,
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.home,
                          size: 30,
                          color: Colors.red,
                        ),
                        VerticalDivider(
                          color: Colors.black,
                          width: 10,
                          thickness: 2,
                        ),
                        Text('home')
                      ],
                    )),
                Divider(
                  color: Colors.lime,
                  height: 5,
                  thickness: 2,
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [Icon(Icons.home), Text('cat')],
                    )),
                Divider(
                  height: 2,
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [Icon(Icons.home), Text('uu')],
                    )),
              ],
            ),
          ),
        )
       ;
  }
}