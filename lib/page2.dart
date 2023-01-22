import 'package:flutter/material.dart';
import 'MyDrawer.dart';

class Page2 extends StatelessWidget {
const Page2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("page 2"),
        ),
  
        drawer:MyDrawer(),
     
        body:      ListView(scrollDirection: Axis.vertical, children: [
      Column(
        children: [
          Center(child: Text("page 2"))

      ])],),
      
    );
  }
}