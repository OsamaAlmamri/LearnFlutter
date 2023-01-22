import 'package:flutter/material.dart';
import 'package:my_app/Home.dart';
import 'package:my_app/Page1.dart';
import 'package:my_app/main.dart';
import 'package:my_app/page2.dart';
import 'package:my_app/page3.dart';

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
                Column(
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
                            TextButton(onPressed: ()=>{
                              
                              Navigator.of(context).pushNamed("home")
                            }, child: Text('home '))
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
                          children: [Icon(Icons.home),  TextButton(onPressed: ()=>{
                              
                              Navigator.of(context).pushNamed("page1")
                            }, child: Text('page 1'))],
                        )),
                    Divider(
                      height: 2,
                    ),Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [Icon(Icons.home),  TextButton(onPressed: ()=>{
                              
                             Navigator.of(context).pushNamed("page2")
                            }, child: Text('page 2'))],
                        )),
                    Divider(
                      height: 2,
                    ),
                    Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [Icon(Icons.home),  TextButton(onPressed: ()=>{
                              
                               Navigator.of(context).pushNamed("page3")
                            }, child: Text('page 3'))],
                        )),
                  ],
                ),
               Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [Icon(Icons.back_hand),  TextButton(onPressed: ()=>{
                              if(  Navigator.of(context).canPop())
                               Navigator.of(context).pop()
                            }, child: Text('back '))],
                        )),
                  
              ],
              
            ),
          ),
        )
       ;
  }
}